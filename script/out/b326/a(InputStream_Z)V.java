public final strictfp void a(java.io.InputStream p1, boolean p2) {
    this.A.clear();
    com.corrodinggames.rts.game.b.b326.l.b();
    com.corrodinggames.rts.game.b.b326.m.b();

    try {
        com.corrodinggames.rts.gameFramework.k1104.d("---- Loading map data ----");

        javax.xml.parsers.DocumentBuilderFactory documentBuilderFactory = javax.xml.parsers.DocumentBuilderFactory.newInstance();
        documentBuilderFactory.setValidating(false);
        javax.xml.parsers.DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
        documentBuilder.setEntityResolver(new com.corrodinggames.rts.game.b.d328(this));
        org.w3c.dom.Document document = documentBuilder.parse(p1);
        org.w3c.dom.Element root = document.getDocumentElement();

        java.lang.String orientation = root.getAttribute("orientation");
        if (!orientation.equals("orthogonal")) {
            throw new com.corrodinggames.rts.game.b.h332("Only orthogonal maps are supported, found: " + orientation);
        }

        int width = java.lang.Integer.parseInt(root.getAttribute("width"));
        int height = java.lang.Integer.parseInt(root.getAttribute("height"));
        this.D = width;
        this.E = height;
        com.corrodinggames.rts.gameFramework.k1104.d("Map size: " + this.D + ", " + this.E);
        this.as = 150.0f;

        if (this.F) {
            com.corrodinggames.rts.gameFramework.k1104.d("Setting up team fog..");
            for (int i = 0; i < com.corrodinggames.rts.game.p352.c; i++) {
                com.corrodinggames.rts.game.p352 team = com.corrodinggames.rts.game.p352.i(i);
                if (team != null) {
                    team.O = this.D;
                    team.P = this.E;
                    byte[][] fogArray = new byte[this.D][this.E];
                    team.Q = fogArray;
                    for (int x = 0; x < this.D; x++) {
                        for (int y = 0; y < this.E; y++) {
                            fogArray[x][y] = 10;
                        }
                    }
                }
            }
        } else {
            com.corrodinggames.rts.gameFramework.k1104.d("No team fog on this map..");
            for (int i = 0; i < com.corrodinggames.rts.game.p352.c; i++) {
                com.corrodinggames.rts.game.p352 team = com.corrodinggames.rts.game.p352.i(i);
                if (team != null) {
                    team.Q = null;
                }
            }
        }

        org.w3c.dom.Element propertiesElement = (org.w3c.dom.Element) root.getElementsByTagName("properties").item(0);
        if (propertiesElement != null) {
            org.w3c.dom.NodeList propertyList = propertiesElement.getElementsByTagName("property");
            if (propertyList != null) {
                java.util.Properties properties = new java.util.Properties();
                for (int i = 0; i < propertyList.getLength(); i++) {
                    org.w3c.dom.Element property = (org.w3c.dom.Element) propertyList.item(i);
                    java.lang.String name = property.getAttribute("name");
                    java.lang.String value = property.getAttribute("value");
                    properties.setProperty(name, value);
                }
            }
        }

        org.w3c.dom.NodeList tilesetNodes = root.getElementsByTagName("tileset");
        com.corrodinggames.rts.game.b.l336 previousTileset = null;
        for (int i = 0; i < tilesetNodes.getLength(); i++) {
            org.w3c.dom.Element tilesetElement = (org.w3c.dom.Element) tilesetNodes.item(i);
            com.corrodinggames.rts.game.b.l336 tileset = new com.corrodinggames.rts.game.b.l336(this, tilesetElement);
            tileset.n = (short) i;
            if (previousTileset != null) {
                previousTileset.m = tileset.l - 1;
            }
            this.t.add(tileset);
            previousTileset = tileset;
        }

        org.w3c.dom.NodeList layerNodes = root.getElementsByTagName("layer");
        for (int i = 0; i < layerNodes.getLength(); i++) {
            org.w3c.dom.Element layerElement = (org.w3c.dom.Element) layerNodes.item(i);
            java.lang.String layerName = layerElement.getAttribute("name");
            if (!"set".equalsIgnoreCase(layerName) && !"set-disabled".equalsIgnoreCase(layerName)) {
                com.corrodinggames.rts.game.b.g331 layer = new com.corrodinggames.rts.game.b.g331(this, layerElement);
                layer.j = i;
                this.z.add(layer);
            }
        }

        java.util.Iterator layerIterator = this.z.iterator();
        while (layerIterator.hasNext()) {
            com.corrodinggames.rts.game.b.g331 layer = (com.corrodinggames.rts.game.b.g331) layerIterator.next();
            if (layer.r) {
                this.u = layer;
            }
            if ("grounddetails".equalsIgnoreCase(layer.k)) {
                this.v = layer;
            }
            if ("grounddetails2".equalsIgnoreCase(layer.k)) {
                this.w = layer;
            }
            if ("Items".equalsIgnoreCase(layer.k) || "Objects".equalsIgnoreCase(layer.k)) {
                this.y = layer;
            }
            if ("PathingOverride".equalsIgnoreCase(layer.k)) {
                this.x = layer;
            }
        }

        if (this.u == null) {
            throw new com.corrodinggames.rts.game.b.h332("'Ground' layer was not found in map, this layer is required");
        }

        if (this.C == null || this.C.length == 0) {
            throw new com.corrodinggames.rts.game.b.h332("Invalid map, no tiles have been set");
        }

        if (!com.corrodinggames.rts.gameFramework.k1104.u() && !com.corrodinggames.rts.gameFramework.k1104.v()) {
            for (int x = 0; x < this.D; x++) {
                for (int y = 0; y < this.E; y++) {
                    if (this.u.a(x, y) == null) {
                        throw new com.corrodinggames.rts.game.b.h332("An empty tile on the Ground layer at " + x + "," + y + " all tiles must be filled");
                    }
                }
            }
        }

        if (this.y == null) {
            throw new com.corrodinggames.rts.game.b.h332("'Items' layer was not found in map, this layer is required");
        }

        org.w3c.dom.NodeList objectGroupNodes = root.getElementsByTagName("objectgroup");
        for (int i = 0; i < objectGroupNodes.getLength(); i++) {
            org.w3c.dom.Element objectGroup = (org.w3c.dom.Element) objectGroupNodes.item(i);
            com.corrodinggames.rts.game.b.k335 objectGroupData = new com.corrodinggames.rts.game.b.k335(objectGroup, this);
            objectGroupData.a = i;
            this.Q.add(objectGroupData);
        }

        com.corrodinggames.rts.game.b.l336.a();
        java.util.Iterator tilesetIterator = this.t.iterator();
        while (tilesetIterator.hasNext()) {
            com.corrodinggames.rts.game.b.l336 tileset = (com.corrodinggames.rts.game.b.l336) tilesetIterator.next();
            if (tileset.q) {
                tileset.c();
            }
        }
        com.corrodinggames.rts.game.b.l336.b();

        for (int pass = 0; pass <= 1; pass++) {
            java.util.Iterator passIterator = this.z.iterator();
            while (passIterator.hasNext()) {
                com.corrodinggames.rts.game.b.g331 layer = (com.corrodinggames.rts.game.b.g331) passIterator.next();
                boolean isGround = (layer == this.u);
                boolean isFirstPass = (pass == 0);
                if (isGround == isFirstPass) {
                    layer.w = false;
                    if (layer.s) {
                        for (int x = 0; x < this.D; x++) {
                            for (int y = 0; y < this.E; y++) {
                                com.corrodinggames.rts.game.b.i333 tile = layer.a(x, y);
                                if (tile != null && tile.c == -2) {
                                    int meta = com.corrodinggames.rts.game.b.b326.l.a(tile.a, tile.b);
                                    tile.c = meta;
                                    if (tile.c >= 0) {
                                        int meta2 = com.corrodinggames.rts.game.b.b326.m.a(tile.a, tile.b);
                                        if (meta2 != tile.c) {
                                            throw new java.lang.RuntimeException("Meta index mismatch: " + meta2 + " vs " + tile.c);
                                        }
                                    }
                                    if (tile.c < 0) {
                                        layer.w = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        com.corrodinggames.rts.game.b.b326.l.c();
        com.corrodinggames.rts.game.b.b326.m.c();

        this.R = this.e("triggers");

    } catch (java.io.IOException e) {
        throw new com.corrodinggames.rts.game.b.h332("Failed to parse map", e);
    } catch (javax.xml.parsers.ParserConfigurationException e) {
        throw new java.lang.RuntimeException("Failed to parse map", e);
    } catch (org.xml.sax.SAXException e) {
        com.corrodinggames.rts.gameFramework.k1104.d(" --- SAXException: Failed to parse map - " + e.getMessage() + " ---");
        try {
            com.corrodinggames.rts.gameFramework.k1104.d("available:" + p1.available());
            p1.reset();
            com.corrodinggames.rts.gameFramework.k1104.d("after reset:" + p1.available());
        } catch (java.io.IOException e2) {
            com.corrodinggames.rts.gameFramework.k1104.d("-- error writing debug info --");
            e2.printStackTrace();
        }
        throw new com.corrodinggames.rts.game.b.h332("Failed to parse map - " + e.getMessage(), e);
    }

    com.corrodinggames.rts.game.b.k335 triggers = this.R;
    com.corrodinggames.rts.game.b.a325 mapInfo = null;
    if (triggers != null) {
        mapInfo = triggers.a("map_info");
    }

    com.corrodinggames.rts.gameFramework.k1104 gameInstance = com.corrodinggames.rts.gameFramework.k1104.t();
    gameInstance.cb = null;

    java.lang.String type = null;
    java.lang.String fog = null;
    if (mapInfo != null) {
        type = mapInfo.a("type");
        fog = mapInfo.a("fog");
    } else {
        com.corrodinggames.rts.gameFramework.k1104.b("Map type not found on mapInfo");
        type = null;
        fog = null;
    }

    java.lang.String mapType;
    if (mapInfo != null) {
        if (!"mission".equalsIgnoreCase(type) && !"survival".equalsIgnoreCase(type)
            && !"challenge".equalsIgnoreCase(type) && !"skirmish".equalsIgnoreCase(type)) {
            com.corrodinggames.rts.gameFramework.k1104.b("Unknown map type:" + type);
            mapType = null;
        } else {
            mapType = type;
        }
    } else {
        mapType = null;
    }

    if (mapType == null) {
        com.corrodinggames.rts.gameFramework.k1104.b("Defaulting to skirmish map type");
        mapType = "skirmish";
    }

    com.corrodinggames.rts.gameFramework.k1104.b("Map type: " + mapType);

    com.corrodinggames.rts.gameFramework.n.p1300 mapSettings = new com.corrodinggames.rts.gameFramework.n.p1300();
    gameInstance.cb = mapSettings;
    mapSettings.a(p2);

    boolean fogEnabled = false;
    boolean losEnabled = false;

    if (fog != null && !"".equals(fog)) {
        if ("none".equalsIgnoreCase(fog)) {
            losEnabled = false;
            fogEnabled = false;
        } else if ("los".equalsIgnoreCase(fog)) {
            losEnabled = true;
            fogEnabled = true;
        } else if ("map".equalsIgnoreCase(fog)) {
            losEnabled = false;
            fogEnabled = true;
        } else {
            com.corrodinggames.rts.gameFramework.k1104.d("Unknown map fog type: " + fog);
            losEnabled = false;
            fogEnabled = true;
        }
    } else {
        if (!com.corrodinggames.rts.gameFramework.k1104.Z() || gameInstance.E()) {
            losEnabled = false;
            fogEnabled = false;
        } else {
            if ("skirmish".equalsIgnoreCase(mapType)) {
                losEnabled = true;
                fogEnabled = true;
            } else {
                losEnabled = false;
                fogEnabled = true;
            }
        }
    }

    if (!fogEnabled) {
        this.F = false;
    }
    if (fogEnabled && losEnabled) {
        this.G = true;
    }
    this.X = true;
}
