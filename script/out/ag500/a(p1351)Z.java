private static boolean a(p1351 p0) {
    k1104 v7 = k1104.t();
    ArrayList<l609> v8 = new ArrayList<>(l609.c);
    ArrayList<l609> v9 = new ArrayList<>(l609.d);
    p1351 v10 = new p1351();
    
    boolean failureFlag = false;
    boolean anyChange = false;
    String errorMessage = null;
    
    Iterator iterator = p0.iterator();
    while (iterator.hasNext()) {
        l609 unit = (l609) iterator.next();
        l609 updated = ag500.a(unit);
        if (updated == null) {
            k1104.d("Failed to apply changes to unit type: " + unit.M);
            if (errorMessage == null && ag500.s != null) {
                errorMessage = ag500.s;
            }
            failureFlag = true;
        } else {
            k1104.d("Changes applied to unit type: " + unit.M);
            v10.add(updated);
            anyChange = true;
        }
    }
    
    if (errorMessage != null && k1104.X()) {
        v7.b("Unit errors", errorMessage);
    }
    
    boolean loadFailed;
    if (anyChange && !ag500.b(false)) {
        loadFailed = true;
    } else {
        loadFailed = failureFlag;
    }
    
    if (anyChange && !loadFailed) {
        l609.e = null;
        ag500.d();
        ag500.s = null;
        p352.F();
        i988.n();
        
        Iterator it = v10.iterator();
        while (it.hasNext()) {
            l609 unit = (l609) it.next();
            if (unit.gt.size() > 0) {
                v7.g(unit.gt.size() + " Warning(s) loading: " + unit.b() + " \n" + (String) unit.gt.get(0));
                unit.gt.clear();
            }
        }
        return true;
    }
    
    if (loadFailed) {
        k1104.d("Failed to load some units, keeping old config");
        synchronized (l609.c) {
            l609.c.clear();
            l609.c.addAll(v8);
        }
        l609.d = v9;
    }
    
    return false;
}
