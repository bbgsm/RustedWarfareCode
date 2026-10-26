private void a(BufferedReader p1) throws IOException {
    int v1 = 1;
    int v2 = 0;
    String v8 = "";
    String v3 = null;
    int v4 = 0;
    String v10 = null;
    int v6 = 0;
    int v7 = 0;
    String v0 = "";

    try {
        while (true) {
            v3 = p1.readLine();
            if (v3 == null) {
                if (v6 != 0) {
                    throw new IOException(this.b + ": End of file while in multi-line string (hint: You are likely missing a closing \"\"\")");
                }
                break;
            }

            int v9 = v4 + 1;

            if (v3.startsWith("\ufeff")) {
                v3 = v3.substring(1);
            }

            String v11 = v3.trim();

            if (v6 != 0) {
                if (!v11.startsWith("#")) {
                    v4 = v9;
                    continue;
                }
            }

            if (f1006.c(v3, "\"\"\"")) {
                if (v6 == 0 && v3.trim().startsWith("\"\"\"")) {
                    v7 = v1;
                }
                int searchOffset = 0;
                String accumulated = v0;

                while (true) {
                    int idx = v3.indexOf("\"\"\"", searchOffset);
                    if (idx == -1) {
                        String combined = accumulated + v3.substring(searchOffset, v3.length());
                        v0 = combined;
                        if (v6 == 0) {
                            v4 = v9;
                            break;
                        } else {
                            if (v7 != 0) {
                                v8 = "";
                                v4 = v9;
                                v7 = 0;
                                v0 = v8;
                                break;
                            } else {
                                v3 = "";
                                String v4Str = v0;
                                int v5Int = 1;
                                v7 = 0;
                                v8 = v3;

                                if (v11.length() != 0) {
                                    if (f1006.c(v4Str, "[") && ae1325.j.matcher(v4Str).matches()) {
                                        String sectionName = ae1325.j.matcher(v4Str).group(1).trim();
                                        v10 = sectionName;
                                        v4 = v9;
                                        v0 = v8;
                                        continue;
                                    }
                                    if (v10 == null || !v10.startsWith("comment_")) {
                                        java.util.regex.Matcher matcherKey = ae1325.k.matcher(v4Str);
                                        if (matcherKey.matches()) {
                                            String key = matcherKey.group(1).trim();
                                            String valueRaw = matcherKey.group(2);
                                            String value = (v5Int == 0) ? valueRaw.trim() : valueRaw;
                                            if (key.equals("")) {
                                                throw new IOException(this.b + ": Unexpected format on line " + v9 + ": Key cannot be empty for line '" + v4Str + "'");
                                            }
                                            java.util.LinkedHashMap<String, String> map = (java.util.LinkedHashMap<String, String>) this.a.get(v10);
                                            if (map == null) {
                                                map = new java.util.LinkedHashMap<>();
                                                this.a.put(v10, map);
                                            }
                                            if (map.containsKey(key)) {
                                                this.e.add(new af1326(v10, key));
                                            }
                                            map.put(key, value);
                                            v4 = v9;
                                            v0 = v8;
                                            continue;
                                        } else {
                                            java.util.regex.Matcher matcherBad = ae1325.i.matcher(v4Str);
                                            if (matcherBad.find()) {
                                                if (v4Str.length() != 1) {
                                                    String cleaned = v4Str.replaceAll("\\p{C}", "?");
                                                    throw new IOException(this.b + ": Unexpected format on line:" + v9 + ": '" + cleaned + "' in ini file (hint: This line might have hidden unicode)");
                                                }
                                            } else {
                                                k1104.b(this.b + ": Unexpected format on line:" + v9 + ": '" + v4Str + "' in ini file");
                                                this.f.add(v4Str);
                                                v4 = v9;
                                                v0 = v8;
                                                continue;
                                            }
                                        }
                                    }
                                }
                                v4 = v9;
                                v0 = v8;
                                continue;
                            }
                        }
                    } else {
                        accumulated = accumulated + v3.substring(searchOffset, idx);
                        searchOffset = idx + 3;
                        if (v6 == 0) {
                            v6 = 1;
                        } else {
                            v6 = 0;
                        }
                    }
                }
            } else {
                if (v6 != 0) {
                    v0 = v0 + v3;
                    v4 = v9;
                    continue;
                } else {
                    String v4Str = v3;
                    int v5Int = 0;
                    v8 = v0;

                    if (v11.length() != 0) {
                        if (f1006.c(v4Str, "[") && ae1325.j.matcher(v4Str).matches()) {
                            String sectionName = ae1325.j.matcher(v4Str).group(1).trim();
                            v10 = sectionName;
                            v4 = v9;
                            v0 = v8;
                            continue;
                        }
                        if (v10 == null || !v10.startsWith("comment_")) {
                            java.util.regex.Matcher matcherKey = ae1325.k.matcher(v4Str);
                            if (matcherKey.matches()) {
                                String key = matcherKey.group(1).trim();
                                String valueRaw = matcherKey.group(2);
                                String value = (v5Int == 0) ? valueRaw.trim() : valueRaw;
                                if (key.equals("")) {
                                    throw new IOException(this.b + ": Unexpected format on line " + v9 + ": Key cannot be empty for line '" + v4Str + "'");
                                }
                                java.util.LinkedHashMap<String, String> map = (java.util.LinkedHashMap<String, String>) this.a.get(v10);
                                if (map == null) {
                                    map = new java.util.LinkedHashMap<>();
                                    this.a.put(v10, map);
                                }
                                if (map.containsKey(key)) {
                                    this.e.add(new af1326(v10, key));
                                }
                                map.put(key, value);
                                v4 = v9;
                                v0 = v8;
                                continue;
                            } else {
                                java.util.regex.Matcher matcherBad = ae1325.i.matcher(v4Str);
                                if (matcherBad.find()) {
                                    if (v4Str.length() != 1) {
                                        String cleaned = v4Str.replaceAll("\\p{C}", "?");
                                        throw new IOException(this.b + ": Unexpected format on line:" + v9 + ": '" + cleaned + "' in ini file (hint: This line might have hidden unicode)");
                                    }
                                } else {
                                    k1104.b(this.b + ": Unexpected format on line:" + v9 + ": '" + v4Str + "' in ini file");
                                    this.f.add(v4Str);
                                    v4 = v9;
                                    v0 = v8;
                                    continue;
                                }
                            }
                        }
                    }
                    v4 = v9;
                    v0 = v8;
                }
            }
        }
    } finally {
        p1.close();
    }
}
