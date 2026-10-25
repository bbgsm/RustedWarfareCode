package com.corrodinggames.rts.gameFramework.b.a;

import android.opengl.GLES20;
import android.util.Log;

/* loaded from: classes.dex */
public final class f827 {
    public static int a(int i, int i2, a822[] a822VarArr) {
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram == 0) {
            throw new RuntimeException("Error creating program.");
        }
        GLES20.glAttachShader(glCreateProgram, i);
        GLES20.glAttachShader(glCreateProgram, i2);
        int length = a822VarArr.length;
        int i3 = 0;
        while (i3 < length) {
            a822 a822Var = a822VarArr[i3];
            GLES20.glBindAttribLocation(glCreateProgram, a822Var.c, a822Var.d);
            i3++;
        }
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateProgram;
        }
        Log.v("Utilities", GLES20.glGetProgramInfoLog(glCreateProgram));
        GLES20.glDeleteProgram(glCreateProgram);
        throw new RuntimeException("Error creating program.");
    }

    public static int a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader == 0) {
            throw new RuntimeException("Error creating shader " + String.valueOf(i));
        }
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        Log.v("Utilities", "Shader fail info: " + GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        throw new RuntimeException("Error creating shader " + String.valueOf(i));
    }
}
