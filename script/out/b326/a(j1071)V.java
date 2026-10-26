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
