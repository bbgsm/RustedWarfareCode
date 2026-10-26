private static void o(String p0, String p1) {
    throw new RuntimeException(new StringBuilder("Could not find ").append(p1).append(" in configuration file in section:").append(p0).toString());
}
