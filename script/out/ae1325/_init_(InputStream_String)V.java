package com.corrodinggames.rts.gameFramework.utility;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

public class ae1325 {
    LinkedHashMap a;
    String b;
    boolean c;
    LinkedHashSet d;
    ArrayList e;
    ArrayList f;

    public ae1325(InputStream p1, String p2) {
        this.a = new LinkedHashMap();
        this.b = "ini";
        this.c = true;
        this.d = new LinkedHashSet();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.b = p2;
        BufferedReader v0 = new BufferedReader(new InputStreamReader(p1, StandardCharsets.UTF_8));
        this.a(v0);
    }

    private void a(BufferedReader reader) {
    }
}
