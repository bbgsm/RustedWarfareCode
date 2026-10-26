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
