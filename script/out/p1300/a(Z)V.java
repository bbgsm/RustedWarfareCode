public final void a(boolean p1) {
    k1104 v8 = k1104.t();
    this.q = false;
    this.b = v8.bv - 1000;
    this.c = v8.bv - 1000;
    this.E = new Paint();
    this.E.setARGB(255, 255, 255, 255);
    this.E.setAntiAlias(true);
    this.E.setTextAlign(Paint.Align.CENTER);
    this.E.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
    v8.a(this.E, 24.0f);
    this.G = new Paint();
    this.G.setARGB(255, 255, 255, 255);
    this.G.setAntiAlias(true);
    this.G.setTextAlign(Paint.Align.CENTER);
    v8.a(this.G, 18.0f);
    this.H = new Paint();
    this.H.setARGB(255, 255, 255, 255);
    this.H.setAntiAlias(true);
    this.H.setTextAlign(Paint.Align.CENTER);
    v8.a(this.H, 14.0f);
    this.F = new Paint();
    this.F.set(this.H);
    v8.a(this.F, 18.0f);
    this.j = true;

    a325 mapInfo = null;
    if (v8.bI.R == null) {
        k1104.a("MissionEngine", "Error: 'triggers' object layer is missing from this map");
        mapInfo = null;
    } else {
        mapInfo = v8.bI.R.a("map_info");
    }

    boolean error = false;
    if (mapInfo == null) {
        k1104.a("MissionEngine", "Error: map_info is missing from this map");
        error = true;
    } else {
        error = false;
    }

    if (mapInfo != null && mapInfo.a("type") == null) {
        k1104.a("MissionEngine", "Map warning: " + "type is missing from map_info");
        ae1028.a((String) null, "Map error: " + "type is missing from map_info");
        error = true;
    }

    if (error) {
        k1104.a("MissionEngine", "Defaulting to skirmish");
        this.n = true;
        this.e = v1306.f;
        return;
    }

    this.k = "survival".equalsIgnoreCase(mapInfo.a("type"));
    if (this.k) {
        this.l = "true".equalsIgnoreCase(mapInfo.a("survivalWavesClassic"));
        if (this.l) {
            k1104.d("Classic survial waves selected");
        }
        this.S.clear();
        this.a(this.S, "scout", 0.7f);
        this.a(this.S, cj459.i, 2.1f);
        this.a(this.S, "mechGun", 1.0f);
        this.a(this.S, "lightGunship", 2.8f);
        this.a(this.S, cj459.j, 1.9f);
        this.a(this.S, cj459.l, 0.8f);
        this.a(this.S, cj459.w, 1.0f);
        this.a(this.S, cj459.x, 0.8f);
        this.a(this.S, cj459.n, 0.7f);
        this.a(this.S, "plasmaTank", 0.6f);
        this.a(this.S, "missileAirship", 0.4f);
        this.T.clear();
        this.a(this.T, cj459.F, 1.0f);
        this.a(this.T, cj459.O, 0.5f);
        this.p = false;
        this.y = v8.bN.aiDifficulty;
        if (this.l) {
            this.z = 3000.0f;
        } else {
            this.z = 1200.0f;
            if (this.y < 0) {
                this.z = 3000.0f;
            }
        }
    }

    String survivalWaves = mapInfo.a("survivalWaves");
    if (survivalWaves != null) {
        this.d(survivalWaves);
    }

    String startWithMusic = mapInfo.a("startWithMusic");
    if (startWithMusic != null) {
        v8.bK.a(startWithMusic);
    }

    this.n = "skirmish".equalsIgnoreCase(mapInfo.a("type"));
    if (this.n) {
        this.e = v1306.f;
    }

    this.o = "true".equalsIgnoreCase(mapInfo.a("shareFogWithAllies"));

    String winCondition = mapInfo.a("winCondition");
    if (winCondition == null && !this.n) {
        throw new h332("win condition not set");
    }
    if (winCondition != null) {
        if ("none".equalsIgnoreCase(winCondition)) {
            this.e = v1306.a;
        } else if ("allUnitsAndBuildings".equalsIgnoreCase(winCondition)) {
            this.e = v1306.b;
        } else if ("allBuildings".equalsIgnoreCase(winCondition)) {
            this.e = v1306.c;
        } else if ("mainBuilings".equalsIgnoreCase(winCondition)) {
            this.e = v1306.d;
        } else if ("mainBuildings".equalsIgnoreCase(winCondition)) {
            this.e = v1306.d;
        } else if ("commandCenter".equalsIgnoreCase(winCondition)) {
            this.e = v1306.e;
        } else if ("requiredObjectives".equalsIgnoreCase(winCondition)) {
            this.e = v1306.g;
        } else {
            throw new h332("unknown win condition:" + winCondition);
        }
    }
    if (this.n) {
        this.f = this.e;
    }

    this.h = mapInfo.c("introText");
    if (this.h != null) {
        this.h.a("\\\\n", "\n");
        if (this.h.a()) {
            this.h = null;
        }
    }

    if (!v8.ac() && !this.n) {
        this.d = p352.i(3);
        if (this.d != null) {
            this.d.s = 0;
        }
    }
    v8.ac();

    for (a325 obj : v8.bI.R.c) {
        if ("team_info".equalsIgnoreCase(obj.d)) {
            int teamId = Integer.parseInt(obj.a("team", "-2"));
            if (teamId == -2) {
                throw new RuntimeException("cannot find team for:" + obj.b);
            }
            p352 team = p352.i(teamId);
            if (team == null) {
                k1104.b("No team loaded for:" + teamId + " skipping");
                continue;
            }
            Integer credits = obj.b("credits");
            if (credits != null) {
                team.p = credits;
            }
            String basicAI = obj.a("basicAI");
            if (basicAI != null && v8.G()) {
                if (team instanceof a296) {
                    k1104.b("Using basic AI:" + teamId + " by map request");
                    ((a296) team).bb = true;
                }
            }
            String lockAiDifficulty = obj.a("lockAiDifficulty");
            if (lockAiDifficulty != null) {
                if (team instanceof a296) {
                    k1104.b("Locking lockAiDifficulty:" + teamId + " by map request to: " + lockAiDifficulty);
                    int diff = Integer.parseInt(lockAiDifficulty);
                    ((a296) team).y = diff;
                    ((a296) team).z = true;
                    v8.bU.B();
                }
            }
            String disabledAI = obj.a("disabledAI");
            if (disabledAI != null && v8.G()) {
                if (team instanceof a296) {
                    k1104.b("Disabling AI:" + teamId + " by map request");
                    ((a296) team).ba = true;
                }
            }
            String allyGroup = obj.a("allyGroup");
            if (allyGroup != null && v8.G()) {
                team.s = Integer.parseInt(allyGroup);
            }
            String ai = obj.a("ai");
            if (ai != null) {
                team.X = "survival".equalsIgnoreCase(ai);
            }
        }

        if ("camera_start".equalsIgnoreCase(obj.b) && !p1) {
            v8.b(obj.e, obj.f);
            this.q = true;
            Integer zoomTo = obj.b("zoomTo");
            if (zoomTo != null) {
                v8.cS = zoomTo;
            }
        }

        if ("attack_point".equalsIgnoreCase(obj.b)) {
            this.D.add(new PointF(obj.e, obj.f));
        }

        if ("rotate".equalsIgnoreCase(obj.d)) {
            float dir = Float.parseFloat(obj.a("dir"));
            Iterator<ce454> it = ce454.bG.iterator();
            while (it.hasNext()) {
                ce454 unit = it.next();
                if (unit instanceof bp437 && !unit.bq() && obj.a(unit)) {
                    unit.ci = dir;
                }
            }
        }

        if ("fall".equalsIgnoreCase(obj.d)) {
            Iterator<ce454> it = ce454.bG.iterator();
            while (it.hasNext()) {
                ce454 unit = it.next();
                if (unit instanceof bp437 && !unit.bq() && obj.a(unit)) {
                    unit.cE();
                }
            }
        }

        if ("set_team".equalsIgnoreCase(obj.d)) {
            int teamId = Integer.parseInt(obj.a("team"));
            Iterator<ce454> it = ce454.bG.iterator();
            while (it.hasNext()) {
                ce454 unit = it.next();
                if (unit instanceof bp437 && obj.a(unit)) {
                    p352 team = p352.i(teamId);
                    if (team == null) {
                        throw new h332("Could not find team with id: " + teamId);
                    }
                    unit.e(team);
                }
            }
        }

        if ("ai_allow_full_use".equalsIgnoreCase(obj.d)) {
            Iterator<ce454> it = ce454.bG.iterator();
            while (it.hasNext()) {
                ce454 unit = it.next();
                if (unit instanceof bp437 && obj.a(unit)) {
                    ((bp437) unit).bO = false;
                }
            }
        }

        if ("disable_unit_ai".equalsIgnoreCase(obj.d)) {
            Iterator<ce454> it = ce454.bG.iterator();
            while (it.hasNext()) {
                ce454 unit = it.next();
                if (unit instanceof bp437 && obj.a(unit)) {
                    unit.bP = true;
                }
            }
        }
    }

    Iterator<ce454> unitIterator = ce454.bG.iterator();
    while (unitIterator.hasNext()) {
        ce454 unit = unitIterator.next();
        if (!unit.s() && !(unit instanceof cd453) && !unit.bq() && unit.cP == null && unit.cQ == null) {
            float closestDist = 4900.0f;
            ce454 closestUnit = null;
            Iterator<ce454> otherIterator = ce454.bG.iterator();
            while (otherIterator.hasNext()) {
                ce454 other = otherIterator.next();
                if (other.bT()) {
                    if (unit != other && (unit.bZ == p352.i || unit.bZ.c(other.bZ))) {
                        float dist = f1006.a(other.eq, other.er, unit.eq, unit.er);
                        if (dist < closestDist && other.c(unit, true)) {
                            closestDist = dist;
                            closestUnit = other;
                        }
                    }
                }
            }
            if (closestUnit != null) {
                closestUnit.d(unit, true);
            }
        }
    }

    this.J.clear();
    for (a325 obj : v8.bI.R.c) {
        if (!"team_info".equalsIgnoreCase(obj.d)
            && !"point".equalsIgnoreCase(obj.d)
            && !"camera_pan".equalsIgnoreCase(obj.d)
            && !"camera_start".equalsIgnoreCase(obj.b)
            && !"map_info".equalsIgnoreCase(obj.b)
            && !"attack_point".equalsIgnoreCase(obj.b)
            && !"rotate".equalsIgnoreCase(obj.d)
            && !"fall".equalsIgnoreCase(obj.d)
            && !"set_team".equalsIgnoreCase(obj.d)
            && !"ai_allow_full_use".equalsIgnoreCase(obj.d)
            && !"disable_unit_ai".equalsIgnoreCase(obj.d)
            && !"info".equalsIgnoreCase(obj.d)) {
            if (obj.n == null) {
                p1300.a("Error: Skipping trigger:" + obj.b + " - no properties found");
            } else {
                a1285 trigger = c1287.a(this, obj);
                if (trigger != null) {
                    this.J.add(trigger);
                }
            }
        }
    }

    for (a1285 trigger : this.J) {
        String activateIds = trigger.b("activateIds");
        if (activateIds == null) {
            activateIds = trigger.b("alsoActivate");
        }
        if (activateIds != null) {
            String[] ids = activateIds.split(",");
            for (String id : ids) {
                a1285 target = this.b(id);
                if (target == null) {
                    trigger.i("linkedTo target not found: " + activateIds);
                    k1104.d("Possible IDs:");
                    for (a1285 t : this.J) {
                        if (t.b != null) {
                            k1104.d(t.b);
                        }
                    }
                    k1104.d("--------");
                } else {
                    target.d.a(trigger);
                }
            }
        }

        String whenActivatedIds = trigger.b("whenActivatedIds");
        if (whenActivatedIds == null) {
            whenActivatedIds = trigger.b("activatedBy");
        }
        if (whenActivatedIds != null) {
            String[] ids = whenActivatedIds.split(",");
            for (String id : ids) {
                a1285 target = this.b(id);
                if (target == null) {
                    trigger.i("linkedFrom target not found: " + id);
                } else {
                    trigger.d.a(target);
                }
            }
        }

        String deactivatedBy = trigger.b("deactivatedBy");
        if (deactivatedBy != null) {
            String[] ids = deactivatedBy.split(",");
            for (String id : ids) {
                a1285 target = this.b(id);
                if (target == null) {
                    trigger.i("deactivatedBy: target not found: " + id);
                } else {
                    trigger.e.a(target);
                }
            }
        }
    }

    k1104.d("Found " + this.J.size() + " map triggers");
    for (a1285 trigger : this.J) {
        for (String key : trigger.t.a()) {
            trigger.i("Key was not used: " + key);
        }
    }

    this.b();
}
