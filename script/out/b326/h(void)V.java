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
