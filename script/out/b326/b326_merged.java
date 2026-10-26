package com.corrodinggames.rts.game.b;

public final class b326 {

    // ==== from __header__.java ====
    public static boolean I;

    public static boolean J;

    public static boolean K;

    public static com.corrodinggames.rts.gameFramework.m.e1216 L;

    public static com.corrodinggames.rts.gameFramework.m.fi1252 M;

    static final boolean a = false;

    public static com.corrodinggames.rts.game.b.e329 am;

    static final boolean b = false;

    static final boolean c = false;

    public static boolean d;

    static java.util.concurrent.locks.ReentrantLock e;

    static boolean f;

    static android.graphics.Paint g;

    static android.graphics.Paint h;

    static android.graphics.Paint i;

    static android.graphics.Paint j;

    public static com.corrodinggames.rts.game.b.j334 l;

    public static com.corrodinggames.rts.game.b.j334 m;

    public java.util.ArrayList A;

    int B;

    public com.corrodinggames.rts.game.b.i333[] C;

    public int D;

    public int E;

    public boolean F;

    public boolean G;

    public boolean H;

    public byte[][] N;

    public byte[][] O;

    android.graphics.Rect P;

    protected java.util.ArrayList Q;

    public com.corrodinggames.rts.game.b.k335 R;

    public boolean S;

    public boolean T;

    public int U;

    public int V;

    public android.graphics.PointF W;

    public boolean X;

    public boolean Y;

    public int Z;

    public int aa;

    float ab;

    android.graphics.Paint ac;

    android.graphics.Paint ad;

    public android.graphics.Paint ae;

    public android.graphics.Paint af;

    public android.graphics.Paint ag;

    android.graphics.Paint ah;

    java.util.HashMap ai;

    float aj;

    float ak;

    int al;

    android.graphics.Paint an;

    public android.graphics.Rect ao;

    android.graphics.Rect ap;

    long aq;

    float ar;

    float as;

    @android.annotation.SuppressLint({"UseSparseArrays"}

    )
        boolean[] k;

    public int n;

    public int o;

    public int p;

    public int q;

    public float r;

    public float s;

    public java.util.ArrayList t;

    public com.corrodinggames.rts.game.b.g331 u;

    public com.corrodinggames.rts.game.b.g331 v;

    public com.corrodinggames.rts.game.b.g331 w;

    public com.corrodinggames.rts.game.b.g331 x;

    public com.corrodinggames.rts.game.b.g331 y;

    public java.util.ArrayList z;

    // ==== from _clinit_(void)V.java ====
    static {
        com.corrodinggames.rts.game.b.b326.a = false;
        com.corrodinggames.rts.game.b.b326.b = false;
        com.corrodinggames.rts.game.b.b326.c = false;
        com.corrodinggames.rts.game.b.b326.d = false;
        com.corrodinggames.rts.game.b.b326.e = new java.util.concurrent.locks.ReentrantLock();
        com.corrodinggames.rts.game.b.b326.g = new android.graphics.Paint();
        com.corrodinggames.rts.game.b.b326.h = new android.graphics.Paint();
        com.corrodinggames.rts.game.b.b326.i = new android.graphics.Paint();
        com.corrodinggames.rts.game.b.b326.j = new android.graphics.Paint();
        com.corrodinggames.rts.game.b.b326.I = false;
        com.corrodinggames.rts.game.b.b326.J = false;
        com.corrodinggames.rts.game.b.b326.K = false;
        com.corrodinggames.rts.game.b.b326.am = new com.corrodinggames.rts.game.b.e329();
    }

    // ==== from _init_(void)V.java ====
    public b326() {
        super();
        this.k = new boolean[256];
        this.t = new ArrayList();
        this.u = null;
        this.v = null;
        this.w = null;
        this.y = null;
        this.z = new ArrayList();
        this.A = new ArrayList();
        this.B = 1;
        this.C = new i333[0];
        this.F = true;
        this.G = false;
        this.H = false;
        this.P = new Rect();
        this.Q = new ArrayList();
        this.W = new PointF();
        this.ab = 0.0f;
        this.ak = 1.0f;
        this.al = 0;
        this.an = new Paint();
        this.ao = new Rect();
        this.ap = new Rect();
        this.n = 20;
        this.o = 20;
        if (com.corrodinggames.rts.gameFramework.k1104.u()) {
            this.n = 60;
            this.o = 60;
        }
        this.p = this.n / 2;
        this.q = this.o / 2;
        this.r = 1.0f / this.n;
        this.s = 1.0f / this.o;
        this.ac = new fq1260();
        this.ac.setARGB(100, 255, 0, 0);
        this.ac.setTextSize(16.0f);
        this.ad = new fq1260();
        this.ad.setStyle(Paint.Style.STROKE);
        this.ad.setStrokeWidth(1.0f);
        this.ad.setARGB(255, 0, 225, 0);
        this.ae = new fq1260();
        this.ae.setStyle(Paint.Style.STROKE);
        this.ae.setStrokeWidth(1.0f);
        this.ae.setARGB(100, 0, 185, 0);
        this.af = new fq1260();
        this.af.setStyle(Paint.Style.STROKE);
        this.af.setStrokeWidth(1.0f);
        this.af.setARGB(255, 175, 0, 0);
        this.ag = new fq1260();
        this.ag.setARGB(155, 175, 0, 0);
        this.ah = new fq1260();
        this.ah.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    // ==== from a(AI_AI_e1216_fi1252_e1216)V.java ====
    private static strictfp void a(int[] p0, int[] p1, com.corrodinggames.rts.gameFramework.m.e1216 p2, com.corrodinggames.rts.gameFramework.m.fi1252 p3, com.corrodinggames.rts.gameFramework.m.e1216 p4) {
        p3.m();
        android.graphics.Rect v2 = new android.graphics.Rect();
        android.graphics.Rect v3 = new android.graphics.Rect();
        android.graphics.Rect v4 = new android.graphics.Rect();
        android.graphics.Rect v5 = new android.graphics.Rect();
        v2.set(0, 0, 20, 20);
        int v0 = 0;
        int v1 = 0;
        while (v0 < p1.length) {
            int v6 = p1[v0] * 20;
            int v7 = p1[v0 + 1] * 20;
            v3.set(v6, v7, v6 + 20, v7 + 20);
            p3.a(p4, v3, v2, (android.graphics.Paint) null);
            v5.set(v3.right - 1, v3.top, v3.right, v3.bottom);
            v4.set(v2.right, v2.top, v2.right + 1, v2.bottom);
            p3.a(p4, v5, v4, (android.graphics.Paint) null);
            v5.set(v3.left, v3.bottom - 1, v3.right, v3.bottom);
            v4.set(v2.left, v2.bottom, v2.right, v2.bottom + 1);
            p3.a(p4, v5, v4, (android.graphics.Paint) null);
            v0 += 2;
        }
        p3.n();
        while (v1 < p0.length) {
            v0 = p0[v1] + 128;
            com.corrodinggames.rts.game.b.b326.a(v0, p2);
            v1++;
        }
        return;
    }

    // ==== from a(AI_I_I_e1216_fi1252_e1216)V.java ====
    private static strictfp void a(int[] p0, int p1, int p2, com.corrodinggames.rts.gameFramework.m.e1216 p3, com.corrodinggames.rts.gameFramework.m.fi1252 p4, com.corrodinggames.rts.gameFramework.m.e1216 p5) {
        int[] v0 = new int[2];
        v0[0] = p1;
        v0[1] = p2;
        com.corrodinggames.rts.game.b.b326.a(p0, v0, p3, p4, p5);
    }

    // ==== from a(bg1057)V.java ====
    public static strictfp void a(com.corrodinggames.rts.gameFramework.j.bg1057 p0) {
        p0.a(false);
    }

    // ==== from a(F)F.java ====
    public final strictfp float a(float p1) {
        if (p1 < 0.0f) {
            p1 = 0.0f;
        }
        if (p1 > this.f()) {
            p1 = this.f();
        }
        return p1;
    }

    // ==== from a(F_F)V.java ====
    public final strictfp void a(float p1, float p2) {
        this.U = (int) (this.r * p1);
        this.V = (int) (this.s * p2);
    }

    // ==== from a(F_F_I_p352_Z)V.java ====
    public final strictfp void a(float p1, float p2, int p3, com.corrodinggames.rts.game.p352 p4, boolean p5) {
        int v2 = 0;
        com.corrodinggames.rts.gameFramework.k1104 v3 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (this.F) {
            long v6;
            if (a) {
                v6 = com.corrodinggames.rts.gameFramework.cf910.a();
            } else {
                v6 = 0L;
            }
            boolean v0 = true;
            boolean v9 = p4.H;
            boolean v1 = v3.ac();
            if (!v1) {
                com.corrodinggames.rts.gameFramework.n.p1300 v1_obj = v3.cb;
                if (v1_obj != null) {
                    boolean v3_bool = v1_obj.n;
                    if (!v3_bool) {
                        boolean v1_bool = v1_obj.o;
                        if (!v1_bool) {
                            v0 = false;
                        }
                    }
                }
            }
            if (!v0) {
                this.b(p1, p2, p3, p4, p5);
            } else {
                int v8 = v2;
                while (v8 < com.corrodinggames.rts.game.p352.c) {
                    com.corrodinggames.rts.game.p352 v4 = com.corrodinggames.rts.game.p352.i(v8);
                    if (v4 != null) {
                        if (v4 != p4 || (!v4.x && (v4.c(p4) || v9))) {
                            this.b(p1, p2, p3, v4, p5);
                        }
                    }
                    v8++;
                }
            }
            if (a) {
                this.aq += (com.corrodinggames.rts.gameFramework.cf910.a() - v6);
            }
        }
    }

    // ==== from a(F_F_p352)Z.java ====
    public final strictfp boolean a(float p1, float p2, com.corrodinggames.rts.game.p352 p3) {
        if (this.F) {
            int v0 = (int) (this.r * p1);
            int v1 = (int) (this.s * p2);
            byte[][] v2 = p3.Q;
            if (v2 != null && this.c(v0, v1)) {
                v2 = p3.Q;
                if (v2[v0][v1] >= 5) {
                    return false;
                }
            }
        }
        return true;
    }

    // ==== from a(I)l336.java ====
    public final strictfp Lcom/corrodinggames/rts/game/b/l336 a(int p1) {
        int i = 0;
        while (i < this.t.size()) {
            Lcom/corrodinggames/rts/game/b/l336 item = (Lcom/corrodinggames/rts/game/b/l336) this.t.get(i);
            if (p1 >= item.l && p1 <= item.m) {
                return item;
            }
            i++;
        }
        return null;
    }

    // ==== from a(i333_I_I)i333.java ====
    public static strictfp com.corrodinggames.rts.game.b.i333 a(com.corrodinggames.rts.game.b.i333 p0, int p1, int p2) {
        if (p0 != null && p0.m != null) {
            int v0 = p0.m.length;
            int v1 = p1 * 13;
            int v2 = p2 * 1313;
            v1 += v2;
            v0 = v1 % (v0 + 1);
            v0 = v0 - 1;
            if (v0 >= 0) {
                p0 = p0.m[v0];
            }
        }
        return p0;
    }

    // ==== from a(I_AI)AI.java ====
    private static strictfp int[] a(int p0, int... p1) {
        ArrayList v2 = new ArrayList();
        v2.add(Integer.valueOf(p0));

        if (p1.length == 1) {
            v2.add(Integer.valueOf(p1[0] + p0));
        } else if (p1.length == 2) {
            v2.add(Integer.valueOf(p1[0] + p0));
            v2.add(Integer.valueOf(p1[1] + p0));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[1]));
        } else if (p1.length == 3) {
            v2.add(Integer.valueOf(p1[0] + p0));
            v2.add(Integer.valueOf(p1[1] + p0));
            v2.add(Integer.valueOf(p1[2] + p0));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[1]));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[2]));
            v2.add(Integer.valueOf(p1[1] + p0 + p1[2]));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[1] + p1[2]));
        } else if (p1.length == 4) {
            v2.add(Integer.valueOf(p1[0] + p0));
            v2.add(Integer.valueOf(p1[1] + p0));
            v2.add(Integer.valueOf(p1[2] + p0));
            v2.add(Integer.valueOf(p1[3] + p0));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[1] + p1[2] + p1[3]));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[1] + p1[2]));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[1] + p1[3]));
            v2.add(Integer.valueOf(p1[1] + p0 + p1[2] + p1[3]));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[1]));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[2]));
            v2.add(Integer.valueOf(p1[0] + p0 + p1[3]));
            v2.add(Integer.valueOf(p1[1] + p0 + p1[2]));
            v2.add(Integer.valueOf(p1[1] + p0 + p1[3]));
            v2.add(Integer.valueOf(p1[2] + p0 + p1[3]));
        } else {
            throw new RuntimeException("unhandled:" + p1.length);
        }

        int[] v3 = new int[v2.size()];
        for (int v1 = 0; v1 < v2.size(); v1++) {
            if (v2.get(v1) != null) {
                v3[v1] = ((Integer) v2.get(v1)).intValue();
            }
        }
        return v3;
    }

    // ==== from a(I_e1216)V.java ====
    private static strictfp void a(int p0, com.corrodinggames.rts.gameFramework.m.e1216 p1) {
        android.graphics.Rect rect = new android.graphics.Rect();
        android.graphics.Rect rect2 = new android.graphics.Rect();
        rect2.set(0, 0, 20, 20);
        com.corrodinggames.rts.game.b.b326.a(p0, rect);
        com.corrodinggames.rts.gameFramework.m.fi1252 fi1252 = com.corrodinggames.rts.game.b.b326.M;
        com.corrodinggames.rts.game.b.j334.a(fi1252, p1, rect2, rect, (android.graphics.Paint) null);
    }

    // ==== from a(I_I)V.java ====
    public final strictfp void a(int p1, int p2) {
        this.U = this.n * p1;
        this.V = this.o * p2;
    }

    // ==== from a(I_I_AAB_B)B.java ====
    public final strictfp byte a(int p1, int p2, byte[][] p3, byte p4) {
        byte v0 = 0;
        int v1 = D;
        int v2 = E;
        if (p1 > 0) {
            if (p3[p1 - 1][p2] >= p4) {
                v0 = (byte) -128;
            }
            if (p2 > 0) {
                if (p3[p1 - 1][p2 - 1] >= p4) {
                    v0 = (byte) (v0 + 1);
                }
            }
            if (p2 < v2 - 1) {
                if (p3[p1 - 1][p2 + 1] >= p4) {
                    v0 = (byte) (v0 + 8);
                }
            }
        }
        if (p2 > 0) {
            if (p3[p1][p2 - 1] >= p4) {
                v0 = (byte) (v0 + 16);
            }
            if (p1 < v1 - 1) {
                if (p3[p1 + 1][p2 - 1] >= p4) {
                    v0 = (byte) (v0 + 2);
                }
            }
        }
        if (p1 < v1 - 1) {
            if (p3[p1 + 1][p2] >= p4) {
                v0 = (byte) (v0 + 32);
            }
        }
        if (p2 < v2 - 1) {
            if (p3[p1][p2 + 1] >= p4) {
                v0 = (byte) (v0 + 64);
            }
            if (p1 < v1 - 1) {
                if (p3[p1 + 1][p2 + 1] >= p4) {
                    v0 = (byte) (v0 + 4);
                }
            }
        }
        if (v0 == 127) {
            v0 = (byte) -1;
        }
        return v0;
    }

    // ==== from a(I_I_p352)Z.java ====
    public final strictfp boolean a(int p1, int p2, com.corrodinggames.rts.game.p352 p3) {
        if (!this.F || p3.Q == null || !this.c(p1, p2) || p3.Q[p1][p2] < 5) {
            return true;
        }
        return false;
    }

    // ==== from a(I_Rect)V.java ====
    public static strictfp void a(int p0, android.graphics.Rect p1) {
        int v0 = (int) (p0 * 0.0625f);
        int v1 = (p0 % 16) * 22 + 1;
        v0 = v0 * 22 + 1;
        p1.left = v1;
        p1.top = v0;
        p1.right = v1 + 20;
        p1.bottom = v0 + 20;
    }

    // ==== from a(InputStream_OutputStream)V.java ====
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

    // ==== from a(InputStream_Z)V.java ====
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

    // ==== from a(j1071)V.java ====
    public static strictfp void a(j1071 p0) {
        if (p0.b.readBoolean()) {
            int i = p0.b.readInt();
            int j = p0.b.readInt();
            for (int k = 0; k < i; k++) {
                for (int l = 0; l < j; l++) {
                    p0.b.readByte();
                }
            }
        }
    }

    // ==== from a(n350)V.java ====
    public static strictfp void a(com.corrodinggames.rts.game.n350 p0) {
        if (com.corrodinggames.rts.gameFramework.k1104.aR && !com.corrodinggames.rts.gameFramework.k1104.aT) {
            return;
        }

        com.corrodinggames.rts.game.b.e329 e329Var = com.corrodinggames.rts.game.b.b326.am;

        android.graphics.RectF rectF = com.corrodinggames.rts.game.n350.n;
        rectF.left = p0.eq - (float) p0.c * 0.5f;
        rectF.right = p0.eq + (float) p0.c * 0.5f;
        rectF.top = p0.er - (float) p0.d * 0.5f;
        rectF.bottom = p0.er + (float) p0.d * 0.5f;

        int i = 0;
        while (i < e329Var.a) {
            int j = 0;
            while (j < e329Var.a) {
                com.corrodinggames.rts.game.b.f330[][] f330Array = e329Var.d;
                if (f330Array != null) {
                    com.corrodinggames.rts.game.b.f330 f330Var = f330Array[i][j];
                    android.graphics.Rect rect = f330Var.b();
                    if (com.corrodinggames.rts.gameFramework.f1006.a(rect, rectF)) {
                        com.corrodinggames.rts.gameFramework.m.fi1252 fi1252Var = f330Var.a;
                        int c = f330Var.c();
                        int d = f330Var.d();
                        float m = e329Var.m;
                        p0.a(fi1252Var, c, d, m);
                        f330Var.d.j();
                    }
                }
                j++;
            }
            i++;
        }
    }

    // ==== from a(String)InputStream.java ====
    public static strictfp java.io.InputStream a(String p0) {
        java.io.InputStream v0 = com.corrodinggames.rts.game.b.b326.d(p0);
        if (v0 == null) {
            String movedName = new StringBuilder()
                .append(p0.replace(".tmx", ""))
                .append("_moved")
                .toString();
            java.io.InputStream movedStream = com.corrodinggames.rts.game.b.b326.d(movedName);
            if (movedStream != null) {
                String content = com.corrodinggames.rts.gameFramework.f1006.a(movedStream);
                content = content.trim();
                String logMessage = "Found moved map at:".concat(String.valueOf(content));
                com.corrodinggames.rts.gameFramework.k1104.d(logMessage);
                v0 = com.corrodinggames.rts.game.b.b326.d(content);
            }
        }
        return v0;
    }

    // ==== from a(String_bg1057)V.java ====
    public static strictfp void a(String p0, com.corrodinggames.rts.gameFramework.j.bg1057 p1) {
        java.io.InputStream v0 = com.corrodinggames.rts.game.b.b326.a(p0);
        if (v0 == null) {
            throw new java.io.IOException("writeMapStream: Could not find map:" + String.valueOf(p0));
        }
        int v1 = (int) com.corrodinggames.rts.game.b.b326.b(p0);
        if (v1 == -1) {
            new java.io.IOException("writeMapStream: Failed to get map size");
        }
        if (v1 == 0) {
            new java.io.IOException("writeMapStream: Got empty map size");
        }
        com.corrodinggames.rts.gameFramework.k1104.d("Sending map stream of size: " + String.valueOf(v1));
        p1.a(v0, v1);
        return;
    }

    // ==== from a(String_I_I)i333.java ====
    public final strictfp i333 a(String p1, int p2, int p3) {
        l336 v1 = null;
        int v5_int = 0;
        for (Iterator v2_iterator = this.t.iterator(); v2_iterator.hasNext(); ) {
            l336 v0_item = (l336) v2_iterator.next();
            v5_int = p1.equals(v0_item.a) ? 1 : 0;
            if (v5_int != 0) {
                v1 = v0_item;
            }
        }
        l336 v2;
        if (v1 == null) {
            int v0_int;
            if (this.t.size() > 0) {
                l336 last = (l336) this.t.get(this.t.size() - 1);
                int v1_int = last.l + 100;
                last.m = v1_int;
                v0_int = v1_int;
            } else {
                v0_int = 1;
            }
            v2 = new l336(this, p1, v0_int + 1);
            this.t.add(v2);
        } else {
            v2 = v1;
        }
        if (v2.b == null) {
            v2.c();
        }
        if (this.ai == null) {
            this.ai = new HashMap();
        }
        int v0_offset;
        if (v2.b == null) {
            k1104.d("getIndexOffsetByPosition tilesetBitmap == null");
            v0_offset = 3;
        } else if (v2.d == 0) {
            k1104.d("getIndexOffsetByPosition tileWidth==0");
            v0_offset = 3;
        } else {
            v0_offset = v2.b.h() / v2.d;
        }
        int v7 = v2.l + (v0_offset * p3 + p2);
        i333 v0_result = (i333) this.ai.get(Integer.valueOf(v7));
        if (v0_result != null) {
            return v0_result;
        }
        int v3 = v7 - v2.l;
        i333 v0_created = i333.a(this, this.u, v2, v3, (short) 0, (short) v5_int, true);
        this.ai.put(Integer.valueOf(v7), v0_created);
        return v0_created;
    }

    // ==== from a(String_String)Z.java ====
    public final strictfp boolean a(String p1, String p2) {
        boolean result = false;
        com.corrodinggames.rts.gameFramework.k1104 v2 = com.corrodinggames.rts.gameFramework.k1104.t();
        try {
            com.corrodinggames.rts.gameFramework.k1104.d(new StringBuilder(" --- Saving map:").append(p1).append(" to: ").append(p2).toString());
            java.io.InputStream inputStream = com.corrodinggames.rts.game.b.b326.a(p1);
            if (inputStream == null) {
                throw new java.io.IOException("Could not find orginal map: ".concat(String.valueOf(p1)));
            }
            java.io.BufferedInputStream bufferedInputStream = new java.io.BufferedInputStream(inputStream);
            String v4 = com.corrodinggames.rts.gameFramework.e.a926.e(p2);
            java.io.File parentFile = new java.io.File(v4).getParentFile();
            if (!com.corrodinggames.rts.gameFramework.e.a926.i(parentFile.getAbsolutePath())) {
                com.corrodinggames.rts.gameFramework.e.a926.m(parentFile.getAbsolutePath());
            }
            if (!com.corrodinggames.rts.gameFramework.e.a926.f(parentFile.getAbsolutePath())) {
                com.corrodinggames.rts.gameFramework.k1104.b("Save Map: Could not create parent directory");
            }
            java.io.OutputStream outputStream;
            try {
                outputStream = com.corrodinggames.rts.gameFramework.e.a926.l(v4);
            } catch (java.io.FileNotFoundException e) {
                throw new java.io.IOException("Failed to open save target:".concat(String.valueOf(v4)));
            }
            if (outputStream == null) {
                throw new java.io.IOException("Failed to get save target:".concat(String.valueOf(v4)));
            }
            try {
                this.a(bufferedInputStream, outputStream);
            } catch (javax.xml.parsers.ParserConfigurationException e) {
                throw new java.io.IOException(e);
            } catch (org.xml.sax.SAXException e) {
                throw new java.io.IOException(e);
            } catch (java.io.IOException e) {
                throw new java.io.IOException(e);
            } catch (javax.xml.transform.TransformerException e) {
                throw new java.io.IOException(e);
            }
            try {
                outputStream.close();
                bufferedInputStream.close();
                inputStream.close();
            } catch (java.io.IOException e) {
                e.printStackTrace();
            }
            v2.bP.h.a((String) null, "Map exported.");
            result = true;
        } catch (com.corrodinggames.rts.game.b.h332 e) {
            v2.b("Error exporting map", new StringBuilder("Failed to export map. error: ").append(e.getMessage()).toString());
            return false;
        } catch (java.io.IOException e) {
            e.printStackTrace();
            v2.b("Error exporting map", new StringBuilder("Failed to export map. IO error: ").append(e.getMessage()).toString());
            return false;
        } catch (java.lang.NoClassDefFoundError e) {
            e.printStackTrace();
            v2.b("Error exporting map", new StringBuilder("Failed to export map. Class not found: ").append(e.getMessage()).toString());
            return false;
        }
        return result;
    }

    // ==== from a(String_String_I)InputStream.java ====
    private static strictfp java.io.InputStream a(String p0, String p1, int p2) {
        String[] v3 = p1.split("/");
        if (v3.length < p2) {
            return null;
        }
        String v2 = "";
        boolean v0 = true;
        int v1 = v3.length - p2;
        while (v1 < v3.length) {
            if (!v0) {
                v2 = v2 + "/";
            }
            v0 = false;
            v2 = v2 + v3[v1];
            v1++;
        }
        return com.corrodinggames.rts.gameFramework.e.a926.j(p0 + v2);
    }

    // ==== from a(String_Z)V.java ====
    public final strictfp void a(String p1, boolean p2) {
        com.corrodinggames.rts.gameFramework.k1104.d(" --- Loading map ---");
        java.io.InputStream inputStream = com.corrodinggames.rts.game.b.b326.a(p1);
        if (inputStream == null) {
            String mapPath = com.corrodinggames.rts.game.b.b326.c(p1);
            throw new com.corrodinggames.rts.game.b.h332(
                new StringBuilder("Could not find map: ")
                    .append(com.corrodinggames.rts.gameFramework.e.a926.d(mapPath))
                    .toString()
            );
        }
        java.io.BufferedInputStream bufferedInputStream = new java.io.BufferedInputStream(inputStream);
        this.a(bufferedInputStream, p2);
        try {
            bufferedInputStream.close();
            inputStream.close();
        } catch (java.io.IOException e) {
            e.printStackTrace();
        }
    }

    // ==== from a(void)V.java ====
    public static strictfp void a() {
        com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.b.b326.g.setARGB(0x96, 0xff, 0xff, 0xff);
        com.corrodinggames.rts.game.b.b326.g.setStyle(android.graphics.Paint.Style.STROKE);
        com.corrodinggames.rts.game.b.b326.g.setStrokeWidth(1.0f);
        v0.a(com.corrodinggames.rts.game.b.b326.g, 16.0f);
        com.corrodinggames.rts.game.b.b326.h.setARGB(0x96, 0xff, 0, 0);
        com.corrodinggames.rts.game.b.b326.h.setStyle(android.graphics.Paint.Style.STROKE);
        com.corrodinggames.rts.game.b.b326.h.setStrokeWidth(1.0f);
        com.corrodinggames.rts.game.b.b326.i.setARGB(0x96, 0, 0xff, 0);
        com.corrodinggames.rts.game.b.b326.i.setStyle(android.graphics.Paint.Style.STROKE);
        com.corrodinggames.rts.game.b.b326.i.setStrokeWidth(1.0f);
        com.corrodinggames.rts.game.b.b326.j.setARGB(0x96, 0xff, 0, 0);
        long v6 = com.corrodinggames.rts.gameFramework.cf910.a();
        com.corrodinggames.rts.gameFramework.m.fi1252 v1 = v0.bL;
        com.corrodinggames.rts.gameFramework.m.e1216 v5 = v1.a(com.corrodinggames.rts.R.drawable.fog_smooth);
        com.corrodinggames.rts.gameFramework.m.e1216 v1_2 = v0.bL.b(0x161, 0x161, true);
        com.corrodinggames.rts.game.b.b326.L = v1_2;
        v1_2.m = true;
        com.corrodinggames.rts.game.b.b326.L.w = true;
        com.corrodinggames.rts.game.b.b326.M = v0.bL.b(com.corrodinggames.rts.game.b.b326.L);
        com.corrodinggames.rts.gameFramework.m.e1216 v3 = v0.bL.b(0x15, 0x15, true);
        com.corrodinggames.rts.gameFramework.m.fi1252 v4 = v0.bL.b(v3);
        com.corrodinggames.rts.game.b.b326.a(new int[]{1}, 2, 5, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{2}, 0, 5, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{4}, 0, 3, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{8}, 2, 3, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x10, new int[]{1, 2}), 1, 0, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x20, new int[]{2, 4}), 2, 1, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x40, new int[]{8, 4}), 1, 2, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x80, new int[]{1, 8}), 0, 1, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x30, new int[]{2, 1, 4}), 2, 0, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x60, new int[]{4, 8, 2}), 2, 2, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x40, new int[]{8, 4, 1}), 0, 2, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x70, new int[]{1, 8, 2}), 0, 0, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{3}, new int[]{2, 5, 0, 5}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{6}, new int[]{0, 5, 0, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{12}, new int[]{0, 3, 2, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{9}, new int[]{2, 3, 2, 5}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x70, new int[]{1, 2, 4, 8}), new int[]{2, 0, 2, 2}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x20, new int[]{1, 2, 4, 8}), new int[]{2, 2, 0, 2}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x30, new int[]{1, 2, 4, 8}), new int[]{0, 2, 0, 0}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x50, new int[]{1, 2, 4, 8}), new int[]{0, 0, 2, 0}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{0x50}, new int[]{1, 0, 1, 2}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{-0x60}, new int[]{0, 1, 2, 1}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{5}, new int[]{2, 5, 0, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{10}, new int[]{0, 5, 2, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x14, new int[]{2, 1}), new int[]{1, 0, 0, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x42, new int[]{4, 8}), new int[]{1, 2, 0, 5}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x7e, new int[]{1, 8}), new int[]{0, 1, 0, 5}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x21, new int[]{2, 4}), new int[]{2, 1, 2, 5}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x18, new int[]{2, 1}), new int[]{1, 0, 2, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x41, new int[]{4, 8}), new int[]{1, 2, 2, 5}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x7c, new int[]{1, 8}), new int[]{0, 1, 0, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x28, new int[]{2, 4}), new int[]{2, 1, 2, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x1c, new int[]{2, 1}), new int[]{1, 0, 0, 3, 2, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x43, new int[]{4, 8}), new int[]{1, 2, 0, 5, 2, 5}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(-0x7a, new int[]{1, 8}), new int[]{0, 1, 2, 5, 2, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(com.corrodinggames.rts.game.b.b326.a(0x29, new int[]{2, 4}), new int[]{2, 1, 0, 5, 0, 3}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.a(new int[]{-1}, new int[]{1, 4}, v3, v4, v5);
        com.corrodinggames.rts.game.b.b326.M.n();
        com.corrodinggames.rts.game.b.b326.M = null;
        com.corrodinggames.rts.gameFramework.cf910.a("smoothFog load took:", v6);
        com.corrodinggames.rts.game.b.b326.b();
        com.corrodinggames.rts.game.b.j334 j334Obj = new com.corrodinggames.rts.game.b.j334(1.0f, false);
        com.corrodinggames.rts.game.b.b326.l = j334Obj;
        j334Obj.a();
        com.corrodinggames.rts.game.b.j334 j334Obj2 = new com.corrodinggames.rts.game.b.j334(0.5f, false);
        com.corrodinggames.rts.game.b.b326.m = j334Obj2;
        j334Obj2.a();
    }

    // ==== from b(F)F.java ====
    public final strictfp float b(float p1) {
        float v0 = 0.0f;
        if (p1 < v0) {
            p1 = v0;
        }
        if (p1 > this.g()) {
            p1 = this.g();
        }
        return p1;
    }

    // ==== from b(F_F)V.java ====
    public final strictfp void b(float p1, float p2) {
        this.a(p1, p2);
        this.a(this.U, this.V);
    }

    // ==== from b(F_F_I_p352_Z)V.java ====
    private strictfp void b(float f1, float f2, int i, com.corrodinggames.rts.game.p352 p352, boolean z) {
        com.corrodinggames.rts.gameFramework.k1104 v8 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (this.F && p352.Q != null) {
            this.h();
            float v9 = (float) ((i - 5) * (i - 5));
            float v10 = (float) ((i - 3) * (i - 3));
            float v11 = (float) (i * i);
            float v12 = 1.0f / (v11 - v10);
            this.a(f1, f2);
            int v3 = this.U;
            int v4 = this.V;
            float v13 = this.r;
            float v14 = this.s;
            byte[][] v15 = p352.Q;
            int v5 = i - 1;
            int startX = v3 - v5;
            int startY = v4 - v5;
            if (startX < 0) {
                startX = 0;
            }
            if (startY < 0) {
                startY = 0;
            }
            v3 += v5;
            v4 += v5;
            if (v3 > this.D - 1) {
                v3 = this.D - 1;
            }
            if (v4 > this.E - 1) {
                v4 = this.E - 1;
            }
            com.corrodinggames.rts.game.b.e329 v16 = this.am;
            boolean changed = false;
            boolean v17 = p352.m();
            for (int x = startX; x <= v3; x++) {
                for (int y = startY; y <= v4; y++) {
                    byte v18 = v15[x][y];
                    if (v18 != 0) {
                        float v19 = com.corrodinggames.rts.gameFramework.f1006.a(f1 * v13, f2 * v14, (float) x, (float) y);
                        if (v19 <= v10) {
                            if (v19 <= v11) {
                                byte v19Byte = (byte) (int) ((v19 - v10) * (10.0f * v12));
                                if (v18 > v19Byte) {
                                    v15[x][y] = v19Byte;
                                    if (v17) {
                                        v16.a(x, y);
                                        changed = true;
                                        this.f(x, y);
                                    }
                                }
                            }
                        } else {
                            if (v18 > 0) {
                                v15[x][y] = 0;
                                if (v17) {
                                    v16.a(x, y);
                                    changed = true;
                                    if (v19 <= v9 && z) {
                                        this.e(x, y);
                                    } else {
                                        this.f(x, y);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (changed) {
                v8.bT.O = true;
            }
        }
    }

    // ==== from b(I_I)V.java ====
    public final strictfp void b(int p1, int p2) {
        this.U = this.n * p1 + this.p;
        this.V = this.o * p2 + this.q;
    }

    // ==== from b(String)J.java ====
    private static strictfp long b(String p0) {
        String v0 = String.valueOf(p0);
        String v1 = com.corrodinggames.rts.gameFramework.e.a926.e(v0);
        com.corrodinggames.rts.gameFramework.utility.ai1329 v2 = com.corrodinggames.rts.gameFramework.utility.ah1328.a(v1);
        if (v2 != null && !v1.endsWith(".rwmod")) {
            return v2.c(v1);
        }
        if (com.corrodinggames.rts.gameFramework.e.a926.c(v0)) {
            android.content.res.AssetManager assetManager = com.corrodinggames.rts.gameFramework.k1104.t().al.getAssets();
            try {
                android.content.res.AssetFileDescriptor assetFileDescriptor = assetManager.openFd(v1);
                return assetFileDescriptor.getLength();
            } catch (java.io.IOException e) {
                throw new RuntimeException(e);
            }
        }
        return new java.io.File(v1).length();
    }

    // ==== from b(String_String)InputStream.java ====
    public static strictfp InputStream b(String p0, String p1) throws IOException {
        Object v0 = com.corrodinggames.rts.gameFramework.e.a926.j(new StringBuilder().append(p0).append(p1).toString());
        if (v0 == null) {
            v0 = com.corrodinggames.rts.game.b.b326.a(p0, p1, 3);
        }
        if (v0 == null) {
            v0 = com.corrodinggames.rts.game.b.b326.a(p0, p1, 2);
        }
        if (v0 == null) {
            v0 = com.corrodinggames.rts.game.b.b326.a(p0, p1, 1);
        }
        if (v0 == null) {
            throw new IOException(new StringBuilder("File could not be found:").append(p0).append(p1).toString());
        }
        return (InputStream) v0;
    }

    // ==== from b(void)V.java ====
    public static strictfp void b() {
        if (I) {
            return;
        }
        I = true;
        J = com.corrodinggames.rts.gameFramework.k1104.t().bN.softFogFading;
        if (!com.corrodinggames.rts.gameFramework.k1104.X()) {
            return;
        }
        if (android.os.Build.VERSION.SDK_INT <= 26) {
            return;
        }
        long maxHeapSizeInMB = java.lang.Runtime.getRuntime().maxMemory() / 0x100000L;
        com.corrodinggames.rts.gameFramework.k1104.d("MaxHeapSizeInMB:" + maxHeapSizeInMB);
        if (maxHeapSizeInMB <= 200) {
            return;
        }
        com.corrodinggames.rts.gameFramework.k1104.d("enabling softFades");
        J = true;
        return;
    }

    // ==== from c(F)V.java ====
    public final strictfp void c(float p1) {
        com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
        boolean v1 = com.corrodinggames.rts.gameFramework.k1104.X();
        if (v1) {
            v0.bL.a(com.corrodinggames.rts.game.b.b326.e);
        }
        com.corrodinggames.rts.game.b.b326.e(p1);
        if (v1) {
            v0.bL.b(com.corrodinggames.rts.game.b.b326.e);
        }
        if (this.Y) {
            android.graphics.Rect rect = new android.graphics.Rect();
            rect = new android.graphics.Rect();
            int left = this.Z * this.n;
            int top = this.aa * this.o;
            int right = this.n + left;
            int bottom = this.o + top;
            rect.set(left, top, right, bottom);
            rect.offset(-com.corrodinggames.rts.gameFramework.k1104.t().cr, -com.corrodinggames.rts.gameFramework.k1104.t().cs);
        }
    }

    // ==== from c(I_I)Z.java ====
    public final strictfp boolean c(int p1, int p2) {
        if (p1 >= 0 && p1 < this.D && p2 >= 0 && p2 < this.E) {
            return true;
        }
        return false;
    }

    // ==== from c(String)String.java ====
    private static strictfp String c(String p0) {
        String v0;
        if (p0 == null) {
            v0 = null;
        } else {
            v0 = com.corrodinggames.rts.gameFramework.e.a926.e(p0);
        }
        return v0;
    }

    // ==== from c(String_String)Integer.java ====
    private strictfp Integer c(String p1, String p2) {
        Integer v0 = null;
        int v2 = 0;
        while (v2 < this.t.size()) {
            com.corrodinggames.rts.game.b.l336 element = (com.corrodinggames.rts.game.b.l336) this.t.get(v2);
            java.util.Iterator iterator = element.t.entrySet().iterator();
            while (iterator.hasNext()) {
                java.util.Map.Entry entry = (java.util.Map.Entry) iterator.next();
                Integer key = (Integer) entry.getKey();
                java.util.Properties properties = (java.util.Properties) entry.getValue();
                String value = properties.getProperty(p1);
                if (value != null && value.equals(p2)) {
                    v0 = key;
                    break;
                }
            }
            if (v0 != null) {
                return v0;
            }
            v2++;
        }
        return v0;
    }

    // ==== from c(void)V.java ====
    public static strictfp void c() {
        if (com.corrodinggames.rts.gameFramework.k1104.aR && !com.corrodinggames.rts.gameFramework.k1104.aU && com.corrodinggames.rts.gameFramework.k1104.aV) {
            return;
        }
        com.corrodinggames.rts.gameFramework.k1104 v4 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.b.e329 v3 = com.corrodinggames.rts.game.b.b326.am;
        int longest = java.lang.Math.max((int) v4.cC, (int) v4.cE) + 3;
        if (v3.d != null) {
            int sizeProduct = v3.h * v3.a;
            int needed = v3.h + longest + 1;
            if (sizeProduct < needed) {
                com.corrodinggames.rts.gameFramework.k1104.a("map", "screen must have changed size, layerBufferSize too small at " + v3.a + ", adding to LayerBitmapBuffer");
                com.corrodinggames.rts.gameFramework.k1104.a("map", "new viewpoint:" + v4.cC + ", " + v4.cE);
                v3.c(v3.a + 1);
            }
        }
        if (v3.d != null) {
            return;
        }
        com.corrodinggames.rts.gameFramework.k1104.a("map", "setupLayerBuffers for size:" + longest);
        long startNanos = java.lang.System.nanoTime();
        if (com.corrodinggames.rts.gameFramework.k1104.aU && !com.corrodinggames.rts.gameFramework.k1104.aV) {
            int newLongest = java.lang.Math.max(600, longest);
            int temp = newLongest / (v3.a - 2) + 7 + 4;
            v3.h = temp;
            int temp2 = (int)((v3.h * 0.05f) + 0.5f);
            v3.h = temp2 * 20;
        } else {
            v3.h = 1024;
            v3.a = (int)((longest / (float) v3.h) + 1.5f);
        }
        if (v3.h * v3.a < v3.h + longest + 1) {
            com.corrodinggames.rts.gameFramework.k1104.b("layerBufferSize is too small");
            com.corrodinggames.rts.gameFramework.k1104.b("layerBufferCount:" + v3.a);
            com.corrodinggames.rts.gameFramework.k1104.b("(layerBufferSize*(layerBufferCount):" + (v3.h * v3.a));
            com.corrodinggames.rts.gameFramework.k1104.b("longest+layerBufferSize+1:" + (v3.h + longest + 1));
            com.corrodinggames.rts.gameFramework.k1104.b("longest:" + longest);
            if (com.corrodinggames.rts.gameFramework.k1104.aU && !com.corrodinggames.rts.gameFramework.k1104.aV) {
                v3.h += 100;
            } else {
                v3.a++;
            }
        }
        com.corrodinggames.rts.gameFramework.k1104.d("layerBufferSize:" + v3.h);
        v3.j = v3.h - 4;
        String fadeText = com.corrodinggames.rts.game.b.b326.J ? " x2 for soft fade " : "";
        com.corrodinggames.rts.gameFramework.k1104.b("layerBuffer:" + v3.a + "x" + v3.a + " = " + (v3.a * v3.a) + fadeText);
        v3.d = (com.corrodinggames.rts.game.b.f330[][]) java.lang.reflect.Array.newInstance(com.corrodinggames.rts.game.b.f330.class, new int[]{v3.a, v3.a});
        boolean useSoftFade = v4.bN.renderFancyWater;
        if (!com.corrodinggames.rts.gameFramework.k1104.u() || com.corrodinggames.rts.gameFramework.k1104.v()) {
            useSoftFade = true;
        }
        if (v3.h <= 0) {
            com.corrodinggames.rts.gameFramework.k1104.b("layerBuffer buffer size was too small at: " + v3.h);
            v3.h = 512;
        }
        if (useSoftFade) {
            v3.b = v4.bL.a(v3.h, v3.h, true);
        } else {
            v3.b = v4.bL.a(v3.h, v3.h, false);
        }
        v3.b.w = true;
        v3.c = v4.bL.b(v3.b);
        v3.d();
        long endNanos = java.lang.System.nanoTime();
        double elapsedMs = (endNanos - startNanos) / 1000000.0;
        com.corrodinggames.rts.gameFramework.k1104.d("----- layerBuffers create in:" + elapsedMs + " ms");
        return;
    }

    // ==== from d(F)V.java ====
    public final strictfp void d(float p1) {
        com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (com.corrodinggames.rts.game.b.b326.a) {
            this.ar += p1;
            if (this.ar > 60.0f) {
                this.ar = 0.0f;
                if (this.aq > 0L) {
                    com.corrodinggames.rts.gameFramework.k1104.d("seeThoughFogOfWarTimes: " + com.corrodinggames.rts.gameFramework.cf910.b((double) this.aq));
                    this.aq = 0L;
                }
                if (this.aq < 0L) {
                    com.corrodinggames.rts.gameFramework.k1104.d("seeThoughFogOfWarTimes negative: " + com.corrodinggames.rts.gameFramework.cf910.b((double) this.aq));
                    this.aq = 0L;
                }
            }
        }
        if (this.F && this.G) {
            this.h();
            this.as += p1;
            if (this.as > 260.0f) {
                this.as = 0.0f;
                com.corrodinggames.rts.gameFramework.utility.v1357 unitList = com.corrodinggames.rts.game.units.ce454.et;
                com.corrodinggames.rts.gameFramework.ah801[] units = unitList.c;
                int unitCount = com.corrodinggames.rts.gameFramework.ah801.et.size();
                boolean anyProcessed = false;
                for (int mapIndex = 0; mapIndex < com.corrodinggames.rts.game.p352.c; mapIndex++) {
                    com.corrodinggames.rts.game.p352 map = com.corrodinggames.rts.game.p352.i(mapIndex);
                    if (map != null && !map.J) {
                        for (int unitIdx = 0; unitIdx < unitCount; unitIdx++) {
                            com.corrodinggames.rts.gameFramework.ah801 obj = units[unitIdx];
                            if (obj instanceof com.corrodinggames.rts.game.units.bp437) {
                                com.corrodinggames.rts.game.units.bp437 bp = (com.corrodinggames.rts.game.units.bp437) obj;
                                if (bp.bq()) {
                                    bp.g(map);
                                }
                            }
                        }
                        if (map.Q == null) {
                            com.corrodinggames.rts.gameFramework.k1104.b("fogOfWar_map==null for:" + mapIndex);
                        }
                        boolean doNotify = map.m();
                        byte[][] fogMap = map.Q;
                        byte[][] thisFogMap = this.O;
                        boolean changedThisMap = false;
                        for (int y = 0; y < this.D; y++) {
                            for (int x = 0; x < this.E; x++) {
                                if (fogMap[y][x] < 5) {
                                    fogMap[y][x] = 5;
                                    if (doNotify) {
                                        com.corrodinggames.rts.game.b.b326.am.a(y, x);
                                        thisFogMap[y][x] = 127;
                                        changedThisMap = true;
                                    }
                                }
                            }
                        }
                        if (changedThisMap) {
                            v6.bT.O = true;
                        }
                        anyProcessed = true;
                    }
                }
                for (int unitIdx = 0; unitIdx < unitCount; unitIdx++) {
                    com.corrodinggames.rts.gameFramework.ah801 obj = units[unitIdx];
                    if (obj instanceof com.corrodinggames.rts.game.units.bp437) {
                        com.corrodinggames.rts.game.units.bp437 bp = (com.corrodinggames.rts.game.units.bp437) obj;
                        if (!bp.bX) {
                            bp.a(false);
                        }
                    }
                }
                if (anyProcessed) {
                    for (int unitIdx = 0; unitIdx < unitCount; unitIdx++) {
                        com.corrodinggames.rts.gameFramework.ah801 obj = units[unitIdx];
                        if (obj instanceof com.corrodinggames.rts.game.units.bp437) {
                            com.corrodinggames.rts.game.units.bp437 bpUnit = (com.corrodinggames.rts.game.units.bp437) obj;
                            if (bpUnit.bq()) {
                                com.corrodinggames.rts.gameFramework.k1104 game = com.corrodinggames.rts.gameFramework.k1104.t();
                                com.corrodinggames.rts.game.p352 currentMap = game.bp;
                                if (currentMap != null && bpUnit.bZ != currentMap && currentMap.l >= 0 && currentMap.l < com.corrodinggames.rts.game.p352.c) {
                                    com.corrodinggames.rts.game.units.cf455 slot = bpUnit.dH[currentMap.l];
                                    if (slot.c != null && slot.c.c) {
                                        slot.c = null;
                                    }
                                    if (slot.c == null && slot.a && !bpUnit.d(currentMap)) {
                                        com.corrodinggames.rts.gameFramework.d.a917 newData = new com.corrodinggames.rts.gameFramework.d.a917();
                                        slot.c = newData;
                                        newData.d = bpUnit.q();
                                        newData.g = bpUnit.eq;
                                        newData.h = bpUnit.er;
                                        newData.n = false;
                                        newData.e = bpUnit.bZ;
                                        newData.f = slot.b;
                                        newData.j = currentMap;
                                        newData.u = bpUnit.d_();
                                        newData.v = bpUnit;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // ==== from d(I_I)i333.java ====
    public final strictfp com.corrodinggames.rts.game.b.i333 d(int p1, int p2) {
        com.corrodinggames.rts.game.b.i333 v0 = null;
        if (!this.c(p1, p2)) {
            if (this.y != null) {
                v0 = this.y.a(p1, p2);
            }
        }
        return v0;
    }

    // ==== from d(String)InputStream.java ====
    private static strictfp java.io.InputStream d(java.lang.String p0) {
        java.lang.String v0 = java.lang.String.valueOf(p0);
        v0 = com.corrodinggames.rts.game.b.b326.c(v0);
        java.lang.String v1 = "Mapfile: ";
        java.lang.String v2 = java.lang.String.valueOf(v0);
        v1 = v1.concat(v2);
        com.corrodinggames.rts.gameFramework.k1104.d(v1);
        return com.corrodinggames.rts.gameFramework.e.a926.k(v0);
    }

    // ==== from d(void)V.java ====
    public static strictfp void d() {
        com.corrodinggames.rts.game.b.b326.am.b();
        return;
    }

    // ==== from e(F)V.java ====
    private static strictfp void e(float p0) {
        com.corrodinggames.rts.game.b.e329 r17 = com.corrodinggames.rts.game.b.b326.am;
        com.corrodinggames.rts.gameFramework.k1104 r18 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.b.b326 r19 = r18.bI;
        float f10 = com.corrodinggames.rts.game.b.e329.e();
        int r7 = 0;
        int r8 = 0;
        float f6 = f10 / r17.m;
        float f9;
        if (Math.abs(f6 - 1.0f) < 0.01f) {
            f9 = f6;
        } else {
            f6 = 1.0f;
            f9 = 1.0f;
        }
        if ((double) f10 > 0.6) {
            float f6_2 = 0.3f;
            if (com.corrodinggames.rts.gameFramework.k1104.Z()) {
                f6_2 = 0.1f;
            }
            if (f10 - r17.m > f6_2) {
                r7 = 1;
            }
            if (f10 == 1.0f && r17.m != 1.0f) {
                r7 = 1;
            }
        }
        int r6;
        if (f9 != 1.0f) {
            int r6_i = 10;
            float r8_f = 0.03f;
            if (f10 < 0.3f) {
                r6_i = 20;
                r8_f = 0.09f;
            } else if (f10 >= 0.5f && f10 <= 1.3f) {
                r6_i = 7;
            }
            if (!com.corrodinggames.rts.gameFramework.k1104.Z()) {
                r6_i += 10;
            }
            if (Math.abs(r19.ak - f10) > 0.03f) {
                r19.ak = r18.cU;
                r19.al = 0;
            } else {
                r19.al++;
            }
            if (r19.al < 3) {
                r19.aj = 0.0f;
            } else {
                if (Math.abs(f10 - r17.m) > r8_f) {
                    r19.aj += 1.0f;
                }
            }
            if (r19.aj > (float) r6_i) {
                r19.aj = 0.0f;
                r6 = 1;
            } else {
                r6 = r7;
            }
        } else {
            r6 = r7;
        }
        int r7_i1 = r18.cr;
        float r7_f1 = (float) r7_i1 + r18.cx + 4.0f;
        int r8_i1 = r17.f;
        int r9_i1 = r17.a;
        int r10_i1 = r17.k;
        r8_i1 += r9_i1 * r10_i1;
        if (r7_f1 > (float) r8_i1) {
            r17.f += r17.k;
            r17.b(1);
        }
        if (r18.cr - 1 < r17.f) {
            r17.f -= r17.k;
            r17.b(-1);
        }
        int r7_i2 = r18.cs;
        float r7_f2 = (float) r7_i2 + r18.cy + 4.0f;
        int r8_i2 = r17.g;
        int r9_i2 = r17.a;
        int r10_i2 = r17.k;
        r8_i2 += r9_i2 * r10_i2;
        if (r7_f2 > (float) r8_i2) {
            r17.g += r17.k;
            r17.a(1);
        }
        if (r18.cs - 1 < r17.g) {
            r17.g -= r17.k;
            r17.a(-1);
        }
        if ((float) r18.cr + r18.cx + 4.0f > (float) (r17.f + r17.a * r17.k)) {
            r6 = 1;
        }
        if (r18.cr - 1 < r17.f) {
            r6 = 1;
        }
        if ((float) r18.cs + r18.cy + 4.0f > (float) (r17.g + r17.a * r17.k)) {
            r6 = 1;
        }
        if (r18.cs - 1 < r17.g) {
            r6 = 1;
        }
        if (r6 != 0) {
            r17.a();
        }
        float f14 = r18.cU / r17.m;
        if (Math.abs(f14 - 1.0f) < 1.0E-4f) {
            f14 = 1.0f;
        }
        float f20 = r18.cC / f14 + 2.0f;
        float f21 = r18.cE / f14 + 2.0f;
        if (f14 != 1.0f) {
            r18.bL.i();
            r18.bL.a(f14, f14);
            r19.ap.set(r18.cH);
            r19.ap.right = (int) ((float) r19.ap.left + (float) r19.ap.width() / f14) + 2;
            r19.ap.bottom = (int) ((float) r19.ap.top + (float) r19.ap.height() / f14) + 2;
            r18.bL.a(r19.ap);
        }
        float f22 = ((float) r17.f - r18.ct) * r17.m;
        float f23 = ((float) r17.g - r18.cu) * r17.m;
        float f24 = (float) ((int) f22);
        float f25 = (float) ((int) f23);
        boolean r15 = false;
        if (com.corrodinggames.rts.gameFramework.k1104.Z() && (double) r18.cU < 0.3) {
            r15 = true;
        }
        r17.e.setAntiAlias(r15);
        r17.e.setFilterBitmap(r15);
        r17.e.setDither(r15);
        int r6_lock = 0;
        Long r7_long = null;
        int r8_flag = 0;
        int r9_count = 0;
        int r16 = 0;
        try {
            while (r16 < r17.a) {
                int r10 = 0;
                while (r10 < r17.a) {
                    com.corrodinggames.rts.game.b.f330 tile = r17.d[r16][r10];
                    if (tile.l && !r17.n) {
                        tile.m++;
                    }
                    int r27 = (int) (((float) (r16 * r17.k) * r17.m) + f24);
                    int r28 = (int) (((float) (r10 * r17.k) * r17.m) + f25);
                    tile.p.set(r27 + 1, r28 + 1, r27 + r17.h - 2, r28 + r17.h - 2);
                    if ((float) tile.p.left <= f20 && (float) tile.p.top <= f21) {
                        if ((float) tile.p.right > f20) {
                            tile.p.right = (int) f20;
                        }
                        if ((float) tile.p.bottom > f21) {
                            tile.p.bottom = (int) f21;
                        }
                        int r11 = (int) ((0.0f - r18.ct) * r17.m);
                        int r12 = (int) ((0.0f - r18.cu) * r17.m);
                        int r13 = (int) ((r19.f() - r18.ct) * r17.m);
                        int r29 = (int) ((r19.g() - r18.cu) * r17.m);
                        if (tile.p.left < r11) {
                            tile.p.left = r11;
                        }
                        if (tile.p.top < r12) {
                            tile.p.top = r12;
                        }
                        if (tile.p.right > r13) {
                            tile.p.right = r13;
                        }
                        if (tile.p.bottom > r29) {
                            tile.p.bottom = r29;
                        }
                        if (!tile.p.isEmpty()) {
                            boolean r11_bool = false;
                            boolean r12_bool;
                            if (tile.k) {
                                r11_bool = true;
                                r12_bool = false;
                            } else {
                                r12_bool = true;
                            }
                            if (tile.l) {
                                int fadeThresh = 10;
                                if (r9_count > 3) {
                                    fadeThresh = 12;
                                }
                                if (r9_count > 6) {
                                    fadeThresh += 2;
                                }
                                if (tile.m > fadeThresh) {
                                    r11_bool = false;
                                    tile.m = 0;
                                    r11_bool = true;
                                    r9_count++;
                                }
                            }
                            if (r11_bool) {
                                long now = com.corrodinggames.rts.gameFramework.cf910.a();
                                if (r7_long == null) {
                                    r7_long = Long.valueOf(now);
                                    r8_flag = 0;
                                } else {
                                    int timeThresh = 200;
                                    if (r17.n) {
                                        timeThresh = 30;
                                    }
                                    double elapsed = com.corrodinggames.rts.gameFramework.cf910.a(r7_long.longValue(), now);
                                    if (elapsed > (double) timeThresh) {
                                        r8_flag = 1;
                                        r17.n = true;
                                    }
                                }
                                if (r8_flag != 0 && tile.k && !tile.n) {
                                    com.corrodinggames.rts.game.b.f330 tile2 = r17.d[r16][r10];
                                    com.corrodinggames.rts.gameFramework.k1104 game2 = com.corrodinggames.rts.gameFramework.k1104.t();
                                    com.corrodinggames.rts.game.b.b326 gs2 = game2.bI;
                                    tile2.n = true;
                                    r17.c.b(-16777216);
                                    com.corrodinggames.rts.gameFramework.f.q996 q = game2.bT;
                                    if (q.J != null) {
                                        android.graphics.Rect rect = new android.graphics.Rect();
                                        android.graphics.RectF rectF = new android.graphics.RectF();
                                        float left = ((float) (r17.f + r16 * r17.k) / (float) (gs2.n * gs2.D));
                                        float top = ((float) (r17.g + r10 * r17.k) / (float) (gs2.o * gs2.E));
                                        float right = ((float) (r17.f + (r16 + 1) * r17.k) / (float) (gs2.n * gs2.D));
                                        float bottom = ((float) (r17.g + (r10 + 1) * r17.k) / (float) (gs2.o * gs2.E));
                                        rect.set((int) (left * (float) q.J.p), (int) (top * (float) q.J.q), (int) (right * (float) q.J.p), (int) (bottom * (float) q.J.q));
                                        rectF.set(0.0f, 0.0f, (float) r17.h, (float) r17.h);
                                        r17.c.a(q.J, rect, rectF, r17.e);
                                    }
                                    r17.c.n();
                                    if (com.corrodinggames.rts.gameFramework.k1104.aT) {
                                        tile2.a.a(android.graphics.PorterDuff.Mode.CLEAR);
                                    }
                                    tile2.a.b(r17.b, 0.0f, 0.0f, null);
                                    tile2.d.j();
                                }
                                if (r8_flag == 0) {
                                    if (com.corrodinggames.rts.game.b.b326.J) {
                                        if (tile.e != null && tile.e.p != tile.d.p) {
                                            com.corrodinggames.rts.gameFramework.k1104.d("wrong sized fadeOutBitmap width:" + tile.e.p + " vs " + tile.d.p);
                                            tile.e.i();
                                            tile.e = null;
                                        }
                                        if (tile.e == null) {
                                            try {
                                                tile.a();
                                            } catch (OutOfMemoryError e) {
                                                e.printStackTrace();
                                                com.corrodinggames.rts.gameFramework.k1104.a(com.corrodinggames.rts.gameFramework.ae798.b, e);
                                                r17.c();
                                                com.corrodinggames.rts.gameFramework.k1104.b("Not enough free memory to keep smooth fog fading");
                                                System.gc();
                                            }
                                        }
                                    }
                                    if (com.corrodinggames.rts.game.b.b326.J) {
                                        com.corrodinggames.rts.gameFramework.m.e1216 tmp = tile.d;
                                        tile.d = tile.e;
                                        tile.e = tmp;
                                        com.corrodinggames.rts.gameFramework.m.fi1252 tmpCanvas = tile.a;
                                        tile.a = tile.f;
                                        tile.f = tmpCanvas;
                                        if (r12_bool) {
                                            tile.g = 1.0f;
                                        } else {
                                            tile.g = 0.0f;
                                        }
                                        if (com.corrodinggames.rts.gameFramework.k1104.X() && r6_lock == 0) {
                                            if (!com.corrodinggames.rts.game.b.b326.f) {
                                                com.corrodinggames.rts.game.b.b326.e.lock();
                                            }
                                            r6_lock = 1;
                                        }
                                        r18.bL.g();
                                        r17.a(r16, r10, r17.c);
                                        r18.bL.h();
                                        if (com.corrodinggames.rts.game.b.b326.a) {
                                            com.corrodinggames.rts.gameFramework.cf910.a("re-drawTile", now);
                                        }
                                    }
                                    r8_flag = 1;
                                }
                            }
                            tile.o.set(tile.p);
                            tile.o.offset(-r27, -r28);
                            tile.q.set(tile.p);
                            tile.q.offset(-f24, -f25);
                            tile.q.offset(f22, f23);
                            if (tile.g > 0.0f) {
                                tile.h.setAntiAlias(r15);
                                tile.h.setAlpha((int) ((1.0f - tile.g) * 255.0f));
                                r18.bL.a(tile.e, tile.o, tile.q, r17.e);
                                if ((double) tile.g < 0.98) {
                                    r18.bL.a(tile.d, tile.o, tile.q, tile.h);
                                }
                                tile.g -= 0.1f * p0;
                            } else {
                                r18.bL.a(tile.d, tile.o, tile.q, r17.e);
                            }
                        }
                    }
                    r10++;
                }
                r16++;
            }
        } catch (Throwable e) {
            if (r6_lock != 0) {
                com.corrodinggames.rts.game.b.b326.i();
            }
            throw e;
        } finally {
            if (r6_lock != 0) {
                com.corrodinggames.rts.game.b.b326.i();
            }
        }
        if (f14 != 1.0f) {
            r18.bL.j();
        }
        if (r8_flag == 0) {
            r17.n = false;
        }
    }

    // ==== from e(I_I)V.java ====
    private strictfp void e(int p1, int p2) {
        this.N[p1][p2] = 0;
        this.O[p1][p2] = 0;
    }

    // ==== from e(String)k335.java ====
    private strictfp com.corrodinggames.rts.game.b.k335 e(String p1) {
        java.util.Iterator v1 = this.Q.iterator();
        while (v1.hasNext()) {
            com.corrodinggames.rts.game.b.k335 v0 = (com.corrodinggames.rts.game.b.k335) v1.next();
            if (p1.equalsIgnoreCase(v0.b)) {
                return v0;
            }
        }
        return null;
    }

    // ==== from e(void)V.java ====
    public final strictfp void e() {
        java.util.Iterator iterator = this.t.iterator();
        while (iterator.hasNext()) {
            com.corrodinggames.rts.game.b.l336 l336 = (com.corrodinggames.rts.game.b.l336) iterator.next();
            l336.b = null;
            l336.o = null;
            l336.t = null;
        }
        this.t.clear();
        java.util.Iterator iterator2 = this.z.iterator();
        while (iterator2.hasNext()) {
            com.corrodinggames.rts.game.b.g331 g331 = (com.corrodinggames.rts.game.b.g331) iterator2.next();
            g331.q = null;
            g331.p = null;
            g331.i = null;
        }
        this.z.clear();
        this.Q.clear();
        this.R = null;
        com.corrodinggames.rts.game.b.b326.am.b();
    }

    // ==== from f(I_I)V.java ====
    private strictfp void f(int p1, int p2) {
        int v6 = 0x7f;
        int v0 = 0;
        int v4 = p1 - 1;
        if (v4 < 0) {
            v4 = 0;
        }
        int v1 = p2 - 1;
        if (v1 >= 0) {
            v0 = v1;
        }
        v1 = p1 + 1;
        int v2 = p2 + 1;
        int v3 = this.D - 1;
        if (v1 > v3) {
            v1 = this.D - 1;
        }
        v3 = this.E - 1;
        if (v2 > v3) {
            v3 = v2;
        } else {
            v2 = this.E - 1;
            v3 = v2;
        }
        while (v4 <= v1) {
            v2 = v0;
            while (v2 <= v3) {
                if (this.N[v4][v2] != 0) {
                    this.N[v4][v2] = (byte) v6;
                }
                if (this.O[v4][v2] != 0) {
                    this.O[v4][v2] = (byte) v6;
                }
                v2++;
            }
            v4++;
        }
    }

    // ==== from f(void)F.java ====
    public final strictfp float f() {
        return (float) (this.D * this.n);
    }

    // ==== from g(void)F.java ====
    public final strictfp float g() {
        return (float) (this.E * this.o);
    }

    // ==== from h(void)V.java ====
    public final strictfp void h() {
        byte v4 = 127;
        boolean v0 = true;
        if (this.N != null) {
            if (this.N.length != this.D) {
                com.corrodinggames.rts.gameFramework.k1104.d("smoothFog_cache: Size mismatch");
            } else {
                if (this.N[0].length == this.E) {
                    v0 = false;
                } else {
                    com.corrodinggames.rts.gameFramework.k1104.d("smoothFog_cache: Size mismatch");
                }
            }
        }
        if (v0) {
            com.corrodinggames.rts.gameFramework.k1104.d("Building smoothFog_cache");
            this.N = (byte[][]) java.lang.reflect.Array.newInstance(java.lang.Byte.TYPE, new int[]{this.D, this.E});
            this.O = (byte[][]) java.lang.reflect.Array.newInstance(java.lang.Byte.TYPE, new int[]{this.D, this.E});
            int i = 0;
            while (i < this.D) {
                int j = 0;
                while (j < this.E) {
                    this.N[i][j] = v4;
                    this.O[i][j] = v4;
                    j++;
                }
                i++;
            }
        }
    }

    // ==== from i(void)V.java ====
    private static strictfp void i() {
        if (!com.corrodinggames.rts.game.b.b326.f) {
            com.corrodinggames.rts.game.b.b326.e.unlock();
        }
        return;
    }

}
