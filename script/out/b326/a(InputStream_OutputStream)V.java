private strictfp void a(java.io.InputStream in, java.io.OutputStream out) {
    javax.xml.parsers.DocumentBuilderFactory factory = javax.xml.parsers.DocumentBuilderFactory.newInstance();
    factory.setValidating(false);
    javax.xml.parsers.DocumentBuilder builder = factory.newDocumentBuilder();
    builder.setEntityResolver(new com.corrodinggames.rts.game.b.c327(this));
    org.w3c.dom.Document doc = builder.parse(in);
    org.w3c.dom.Element root = doc.getDocumentElement();
    String orientation = root.getAttribute("orientation");
    if (!orientation.equals("orthogonal")) {
        throw new com.corrodinggames.rts.game.b.h332("Only orthogonal maps are supported, found: " + String.valueOf(orientation));
    }
    org.w3c.dom.NodeList somethings = root.getElementsByTagName("SOMETHING");
    for (int i = 0; i < somethings.getLength(); i++) {
        somethings.item(i);
    }
    org.w3c.dom.NodeList layers = root.getElementsByTagName("layer");
    for (int j = 0; j < layers.getLength(); j++) {
        org.w3c.dom.Element layer = (org.w3c.dom.Element) layers.item(j);
        String layerName = layer.getAttribute("name");
        if ("units".equalsIgnoreCase(layerName)) {
            layer.getParentNode().removeChild(layer);
        }
    }
    org.w3c.dom.NodeList objectGroups = root.getElementsByTagName("objectgroup");
    for (int k = 0; k < objectGroups.getLength(); k++) {
        org.w3c.dom.Element objectGroup = (org.w3c.dom.Element) objectGroups.item(k);
        String objectGroupName = objectGroup.getAttribute("name");
        if ("UnitObjects".equalsIgnoreCase(objectGroupName)) {
            objectGroup.getParentNode().removeChild(objectGroup);
        }
    }
    org.w3c.dom.Element unitObjects = doc.createElement("objectgroup");
    unitObjects.setAttribute("name", "UnitObjects");
    java.util.Iterator<com.corrodinggames.rts.game.units.ce454> iterator = com.corrodinggames.rts.game.units.ce454.bn().iterator();
    while (iterator.hasNext()) {
        com.corrodinggames.rts.game.units.ce454 unit = iterator.next();
        if (!(unit instanceof com.corrodinggames.rts.game.units.ce454)) {
            continue;
        }
        if (unit instanceof com.corrodinggames.rts.game.units.cd453) {
            com.corrodinggames.rts.game.units.cd453 cd = (com.corrodinggames.rts.game.units.cd453) unit;
            if (!cd.bO) {
                continue;
            }
        }
        if (!unit.bX || !unit.s()) {
            continue;
        }
        if (unit.cQ != null && unit.cR != null) {
            continue;
        }
        org.w3c.dom.Element object = doc.createElement("object");
        int size = 20;
        if (20.0f < unit.cl) {
            size = (int) unit.cl;
        }
        object.setAttribute("name", unit.q().i() + " (t:" + unit.bZ.l + ")");
        object.setAttribute("x", String.valueOf(unit.eq - (size / 2)));
        object.setAttribute("y", String.valueOf(unit.er - (size / 2)));
        object.setAttribute("width", String.valueOf(size));
        object.setAttribute("height", String.valueOf(size));
        float rotation;
        if (unit.bq()) {
            rotation = unit.ci;
        } else {
            rotation = unit.ci + 90.0f;
        }
        object.setAttribute("rotation", String.valueOf(rotation));
        String unitType = unit.q().i();
        Integer gid = c("unit", unitType);
        if (gid == null) {
            gid = c("customUnit", unitType);
        }
        if (gid != null) {
            object.setAttribute("gid", String.valueOf(gid));
        }
        org.w3c.dom.Element properties = doc.createElement("properties");
        org.w3c.dom.Element propertyUnit = doc.createElement("property");
        propertyUnit.setAttribute("name", "unit");
        propertyUnit.setAttribute("value", unit.q().i());
        properties.appendChild(propertyUnit);
        org.w3c.dom.Element propertyTeam = doc.createElement("property");
        propertyTeam.setAttribute("name", "team");
        propertyTeam.setAttribute("value", String.valueOf(unit.bZ.l));
        properties.appendChild(propertyTeam);
        object.appendChild(properties);
        unitObjects.appendChild(object);
    }
    root.appendChild(unitObjects);
    javax.xml.transform.TransformerFactory transformerFactory = javax.xml.transform.TransformerFactory.newInstance();
    javax.xml.transform.Transformer transformer = transformerFactory.newTransformer();
    transformer.setOutputProperty("indent", "yes");
    javax.xml.transform.dom.DOMSource source = new javax.xml.transform.dom.DOMSource(doc);
    javax.xml.transform.stream.StreamResult result = new javax.xml.transform.stream.StreamResult(out);
    transformer.transform(source, result);
}
