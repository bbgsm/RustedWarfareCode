public final strictfp void g() {
    r1353 v1 = ah801.dj();
    Iterator v2 = v1.iterator();
    while (v2.hasNext()) {
        ah801 v0 = (ah801) v2.next();
        v0.a();
    }
    ce454.bn();
    ah801.dj();
    int v0 = v1.size();
    if (v0 != 0) {
        StringBuilder v2Builder = new StringBuilder("SHOULD_NOT_HAPPEN: we still had ");
        v2Builder.append(v0);
        v2Builder.append(" objects in gameObjectListForLogic after removeAll");
        k1104.a(v2Builder.toString());
        Iterator v3 = v1.iterator();
        while (v3.hasNext()) {
            ah801 v0Obj = (ah801) v3.next();
            StringBuilder v1Builder = new StringBuilder("Object: ");
            v1Builder.append(v0Obj.ej);
            String v1Str = v1Builder.toString();
            String v0Str;
            if (v0Obj instanceof ce454) {
                v0Str = ((ce454) v0Obj).J();
            } else {
                v0Str = v1Str;
            }
            k1104.a("Remaining object: " + v0Str);
        }
    }
    ce454.bn().clear();
    ah801.dj().clear();
    j607.cV();
    this.V.clear();
}
