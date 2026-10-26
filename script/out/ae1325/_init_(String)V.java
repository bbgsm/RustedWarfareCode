package com.corrodinggames.rts.gameFramework.utility;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.ArrayList;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileNotFoundException;

public class ae1325 {
    private LinkedHashMap a;
    private String b;
    private boolean c;
    private LinkedHashSet d;
    private ArrayList e;
    private ArrayList f;
    private String h;

    public ae1325(String p1) throws FileNotFoundException {
        super();
        this.a = new LinkedHashMap();
        this.b = "ini";
        this.c = true;
        this.d = new LinkedHashSet();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.b = p1;
        this.h = p1;
        BufferedReader v0 = new BufferedReader(new FileReader(p1));
        this.a(v0);
    }

    private void a(BufferedReader reader) {
    }
}
