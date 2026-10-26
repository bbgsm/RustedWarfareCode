public final int b() {
    try {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        for (Object obj : this.a.keySet()) {
            String str = (String) obj;
            Map map = (Map) this.a.get(str);
            for (Object obj2 : map.keySet()) {
                String str2 = (String) obj2;
                String value = (String) map.get(str2);
                String str3 = str + ":" + str2 + ":" + value;
                messageDigest.update(str3.getBytes("UTF-8"));
            }
        }
        return new BigInteger(1, messageDigest.digest()).intValue();
    } catch (UnsupportedEncodingException e) {
        throw new RuntimeException(e);
    } catch (NoSuchAlgorithmException e) {
        throw new RuntimeException(e);
    }
}
