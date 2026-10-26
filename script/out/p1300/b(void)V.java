private void b() {
    Iterator iterator = this.J.iterator();
    while (iterator.hasNext()) {
        a1285 a = (a1285) iterator.next();
        if (a.g != d1288.a) {
            continue;
        }
        Iterator innerIterator = this.g.iterator();
        boolean found = false;
        while (innerIterator.hasNext()) {
            w1307 w = (w1307) innerIterator.next();
            if (w.a == a) {
                found = true;
            }
        }
        if (!found) {
            w1307 newW = new w1307();
            newW.a = a;
            this.g.add(newW);
            StringBuilder sb = new StringBuilder("Found objective: ");
            String objectiveName;
            if (newW.a.z == null) {
                objectiveName = "<null>";
            } else {
                objectiveName = newW.a.z.b();
            }
            sb.append(objectiveName);
            k1104.d(sb.toString());
        }
    }
}
