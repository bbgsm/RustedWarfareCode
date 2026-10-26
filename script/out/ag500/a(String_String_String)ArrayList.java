private static ArrayList a(String p0, String p1, String p2) {
    if (p2 == null || "".equals(p2) || "NONE".equalsIgnoreCase(p2)) {
        return null;
    }
    ArrayList result = new ArrayList();
    ArrayList parts = ao1335.a(p2, ",");
    for (Object partObj : parts) {
        String item = (String) partObj;
        String trimmed = item.trim();
        if ("".equals(trimmed)) {
            continue;
        }
        String name;
        String args;
        if (trimmed.contains("(") && trimmed.contains(")")) {
            String[] split = ao1335.d(trimmed, "(");
            if (split == null) {
                throw new ch575("[" + p0 + "]" + p1 + ": Unexpected format for '" + trimmed + "' of " + p2);
            }
            name = split[0];
            args = split[1].trim();
        } else {
            name = trimmed;
            args = null;
        }
        ai502 unit = new ai502();
        unit.a = name;
        if (args != null) {
            if (args.endsWith(")")) {
                String paramStr = args.substring(0, args.length() - 1);
                ArrayList params = ao1335.a(paramStr, ",", false, false);
                for (Object paramObj : params) {
                    String param = (String) paramObj;
                    if (!"".equals(param.trim())) {
                        String[] kv = ao1335.d(param, "=");
                        if (kv == null) {
                            throw new RuntimeException("[" + p0 + "]" + p1 + ": Unexpected key format for '" + trimmed + "' of " + p2);
                        }
                        String key = kv[0].trim();
                        String value = kv[1].trim();
                        if (unit.b == null) {
                            unit.b = new HashMap();
                        }
                        unit.b.put(key, value);
                    }
                }
            } else {
                throw new ch575("[" + p0 + "]" + p1 + ": Expected ')' in '" + trimmed + "' of " + p2);
            }
        }
        result.add(unit);
    }
    return result;
}
