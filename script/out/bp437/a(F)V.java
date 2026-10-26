public strictfp void a(float f) {
    super.a(f);

    if (this.aA) {
        this.aA = false;
    }

    if (this.cn != 0.0f) {
        this.cn = f1006.a(this.cn, f);
    }

    if (!this.bX && this.by()) {
        k1104 k = k1104.t();

        if (this.aB > 0.0f) {
            this.aB = f1006.a(this.aB, f);
        }

        if (this.aC > 0.0f) {
            this.aC = f1006.a(this.aC, f);
        }

        if (this.br != null) {
            p1351 list = this.br;
            if (list != null) {
                int now = k.bv;
                Object[] arr = list.a();
                for (int i = list.a - 1; i >= 0; i--) {
                    a747 item = (a747) arr[i];
                    if (item.a <= now) {
                        list.remove(i);
                    }
                }
            }
        }

        float oldEq = this.eq;
        float oldEr = this.er;

        int count = this.aU();
        for (int i = 0; i < count; i++) {
            ch457 slot = this.cN[i];

            if (slot.d == 0.0f) {
                float targetAngle = this.x(i);

                if (this.b(i, f) && slot.a != targetAngle) {
                    float delta = f1006.c(slot.a, targetAngle, 360.0f);
                    if (f1006.d(delta) < 0.5f) {
                        slot.d = 20.0f;
                        slot.c = 0.0f;
                    } else {
                        this.a(f, targetAngle, i);
                    }
                }
            } else {
                slot.d = f1006.a(slot.d, f);
            }
        }

        k1104 k2 = k1104.t();

        if (this.bS != null) {
            this.bS = null;
        }

        if (this.bT != null) {
            this.bU = f1006.a(this.bU, f);
            this.bS = this.bT;
            if (this.bU == 0.0f) {
                this.bT = null;
            }
        }

        if (this.q != 0.0f) {
            this.q = f1006.a(this.q, f);
        }

        if (this.ch != 0.0f) {
            this.c = f1006.a(this.c, f);
        }

        en734 active = this.ap();

        this.h = false;
        boolean wasI = this.i;
        this.i = false;
        this.r = false;
        this.p = 0x96;

        if (active != null && active.l > 0.0f && active.l < this.X) {
            this.cV();
            active = null;
        }

        bv443 result = bp437.aR;
        result.a = false;
        result.b = false;
        result.c = false;
        result.e = 0.0f;
        result.f = 0.0f;
        result.d = true;

        en734 waypoint = active;

        if (waypoint != null) {
            this.X += f;

            eo735 type = waypoint.a;

            if (type == eo735.move
                    || type == eo735.attackMove
                    || type == eo735.patrol) {
                float tx = waypoint.d();
                float ty = waypoint.e();
                float dist2 = f1006.a(this.eq, this.er, tx, ty);

                k1104 game = k1104.t();

                if (!this.aE()) {
                    boolean handled = false;

                    n533 custom = this.cO();
                    if (custom != null && custom.H) {
                        this.bg();
                        handled = true;
                    }

                    if (!handled) {
                        this.cV();

                        en734 other = null;

                        float range = 7.0f;
                        if (dist2 < 1681.0f) {
                            this.aa += f;
                        }
                        if (this.aa > 240.0f) {
                            range = 16.0f;
                        }
                        if (this.aa > 340.0f) {
                            range = 36.0f;
                        }

                        if (other != null && other.a == eo735.patrol) {
                            int mode = this.cU();
                            if (mode != 1) {
                                range = 20.0f;
                                float r = 30.0f;
                                if (!wasI
                                        || this.ac == game.bu
                                        || this.ac == game.bu - 1) {
                                    r = 70.0f;
                                }
                                if (dist2 < r * r) {
                                    this.b(other);
                                    this.cV();
                                    other = null;
                                }
                            } else {
                                range = 30.0f;
                                if (!wasI
                                        || this.ac == game.bu
                                        || this.ac == game.bu - 1) {
                                    range = 80.0f;
                                }
                            }
                        }

                        if (other != null) {
                            if (dist2 < range * range) {
                                if (other.a == eo735.patrol) {
                                    if (this.cU() == 1) {
                                        // keep other
                                    }
                                } else if (other.a == eo735.attackMove) {
                                    boolean ok = false;
                                    if (this.T != null
                                            && !this.T.bX
                                            && this.a(this.T, false)) {
                                        ok = true;
                                    }
                                    if (!ok) {
                                        this.cV();
                                        other = null;
                                    }
                                } else {
                                    this.cV();
                                    other = null;
                                }
                            } else {
                                this.i = true;
                                this.j = tx;
                                this.k = ty;
                                this.l = 0;
                                if (other.a == eo735.patrol) {
                                    this.r = true;
                                    this.av();
                                }
                            }
                        }

                        if (other != null) {
                            eo735 ot = other.a;
                            if (ot == eo735.attackMove || ot == eo735.patrol) {
                                if (this.T != null && !this.T.bX) {
                                    if (this.a(this.T, false)) {
                                        this.a(f, this.T, result, true);
                                    }
                                }
                                if (this.af != null && this.af.T != null) {
                                    result.d = false;
                                }
                            }

                            if (other.a == eo735.patrol) {
                                if (this.T == null) {
                                    ce454 target = this.o(3.0f);
                                    if (target != null && this.b(target, true)) {
                                        if (this.q > 90.0f) {
                                            this.q = 90.0f;
                                        }
                                        this.i = true;
                                        this.j = target.eq;
                                        this.k = target.er;
                                        this.l = 0;
                                        this.h = true;
                                    }
                                }

                                if (this.ai()
                                        && game.bu % 10 == (int) (this.ej % 10)) {
                                    en734 created = ab644.a(this, f, 150.0f, true);
                                    if (created != null) {
                                        created.m = false;
                                        created.k = 200.0f;
                                        this.i = false;
                                        this.ax();
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (type == eo735.attack) {
                // 原 smali 50044 起的 attack waypoint 处理分支
                k1104 game = k1104.t();
                int order = this.aO();

                if (order == b421.d) {
                    if (waypoint != null) {
                        ce454 target = waypoint.h;
                        if (target == null
                                || target.bX
                                || target.bZ == this.bZ) {
                            if (!this.au) {
                                if (this.T != null && this.T.bX) {
                                    this.T = null;
                                }
                                this.a(game, f, this.e(true) + 200.0f);
                                if (this.T != null) {
                                    waypoint.h = this.T;
                                    this.av();
                                    this.ax();
                                } else {
                                    this.au = true;
                                    this.at = true;
                                }
                            }
                        }
                    }

                    if (waypoint != null) {
                        ce454 target = waypoint.h;
                        if (target == null
                                || target.bX
                                || target.bZ == this.bZ) {
                            if (waypoint.h == null) {
                                this.as();
                                waypoint = null;
                            } else if (!this.at) {
                                this.as();
                                waypoint = null;
                            }
                        }
                    }

                    if (waypoint != null) {
                        ce454 target = waypoint.h;
                        if (target != null && !target.bX && !target.bL()) {
                            if (this.bZ.b(target.bZ)) {
                                if (ci458.b(this, target)) {
                                    this.as();
                                }
                            }
                        }

                        if (waypoint != null
                                && !this.aE()
                                && !this.k()) {
                            this.as();
                            waypoint = null;
                        }

                        if (waypoint != null) {
                            this.a(f, waypoint.h, result, false);
                        }
                    }
                } else {
                    if (waypoint.h == null
                            || waypoint.h.bX
                            || waypoint.h.bZ == this.bZ) {
                        boolean canAttack = true;
                        if (this.cU() > 1) {
                            canAttack = false;
                        }

                        waypoint.h = null;

                        if (canAttack) {
                            if (this.T != null && this.T.bX) {
                                this.T = null;
                            }
                            this.a(game, f, this.e(true));
                            if (this.T != null) {
                                waypoint.h = this.T;
                                this.av();
                                this.ax();
                            }
                        }

                        if (waypoint.h == null) {
                            this.as();
                            waypoint = null;
                        }
                    }
                }
            } else if (type == eo735.build) {
                float tx = waypoint.d();
                float ty = waypoint.e();
                float dist2 = f1006.a(this.eq, this.er, tx, ty);
                k1104 game = k1104.t();

                el732 buildType = waypoint.b;
                if (buildType == null) {
                    this.a("activeBuildingType==null, removing waypoint");
                    this.as();
                    waypoint = null;
                }

                if (waypoint != null) {
                    float buildDist = this.g(buildType);
                    boolean closeEnough = false;

                    if (buildDist <= 25.0f && this.es > 4.0f) {
                        closeEnough = true;
                    }

                    if (this.af != null) {
                        en734 parent = this.af.ap();
                        if (parent == null || parent.a != eo735.build) {
                            result.d = false;
                        }
                        if (parent != null && !waypoint.b(parent)) {
                            result.d = false;
                        }
                    }

                    boolean mayBuild = ab1322.a(this.S, 0xC8);
                    boolean inRange = buildDist * buildDist >= dist2;
                    boolean tooFar = buildDist > 800000.0f;

                    if (tooFar || inRange || closeEnough) {
                        if (this.aE()) {
                            this.i = true;
                            this.j = tx;
                            this.k = ty;
                            this.l = 0;

                            if (buildDist > 58.0f) {
                                this.l = (int) ((buildDist - 41.0f)
                                        / (game.bI.n * 1.414f));
                            }
                            if (this.q > 90.0f) {
                                this.q = 90.0f;
                            }
                            if (this.o > 3) {
                                this.as();
                            }
                        }
                    } else if (mayBuild) {
                        if (this.u()) {
                            float angle = f1006.d(this.b(f, tx, ty));
                            if (angle > 30.0f) {
                                // 不处理
                            }
                        }

                        el732 build = waypoint.b;
                        int team = waypoint.d;
                        float bx = waypoint.e;
                        float by = waypoint.f;

                        s376 buildDef = this.a(build, team, false);
                        br439 br;

                        if (buildDef == null) {
                            k1104.b("Unit '" + this.q().i()
                                    + "' can not build:" + build.i());
                            br = bp437.bp.a();
                        } else {
                            if (!waypoint.n) {
                                if (buildDef.g(this)) {
                                    k1104.b("Builder '" + this.q().i()
                                            + "' tried to build a locked building:"
                                            + buildDef.R());
                                    br = bp437.bp.a();
                                } else if (!buildDef.b(this)
                                        && !buildDef.h.a()) {
                                    k1104.b("Builder '" + this.q().i()
                                            + "' tried to build a unavailable building:"
                                            + buildDef.R()
                                            + " (add isLocked:false to fix)");
                                    br = bp437.bp.a();
                                } else {
                                    br = null;
                                }
                            } else {
                                br = null;
                            }
                        }

                        if (br == null) {
                            if (!build.k() && !buildDef.x()) {
                                if (this.bZ.r() >= this.bZ.s()) {
                                    if (this.bZ == game.bp) {
                                        game.bP.a(game.bP.g.al);
                                    }
                                    br = bp437.bp.a();
                                }
                            }

                            if (br == null) {
                                ce454 newUnit = ce454.b(build);
                                if (newUnit == null) {
                                    k1104.d("Build unit type missing: "
                                            + (waypoint.b != null
                                            ? waypoint.b.i()
                                            : "{build is null}"));
                                    br = bp437.bp.a();
                                } else {
                                    ce454 newUnit2 = f655.h(build);
                                    if (build.u() == null
                                            || buildDef.B() == null
                                            || !b579.b(build.u(), buildDef.B())
                                            || !b579.b(build.B(), buildDef.P())) {
                                        newUnit2.bz = buildDef.B();
                                        newUnit2.bA = buildDef.P();
                                    }

                                    if (buildDef instanceof h365) {
                                        newUnit2.bz = null;
                                        newUnit2.bA = null;
                                    }

                                    newUnit2.co = 0.0f;
                                    newUnit2.cp = 0.0f;

                                    game.bI.b(bx - newUnit2.cB() + 1.0f,
                                            by - newUnit2.cC() + 1.0f);
                                    newUnit2.eq = game.bI.U + newUnit2.cB();
                                    newUnit2.er = game.bI.V + newUnit2.cC();
                                    newUnit2.f(this.bZ);
                                    newUnit2.s(this);

                                    if (team != 1 && newUnit2 instanceof bp437) {
                                        ((bp437) newUnit2).a(team);
                                    }

                                    newUnit2.cs();

                                    boolean canPlace = true;
                                    if (newUnit2 instanceof bp437) {
                                        bp437 b = (bp437) newUnit2;
                                        ce454 owner = null;
                                        if (this.aj()) {
                                            owner = this;
                                        } else if (!this.bV && !this.bq()) {
                                            owner = this;
                                        }
                                        if (!b.a(owner, null)) {
                                            canPlace = false;
                                        } else {
                                            canPlace = b.a(true, null) == null;
                                        }
                                    }

                                    if (!canPlace) {
                                        newUnit2.a();
                                        br = bp437.bp.a();
                                        ((bp437) newUnit2).dm();
                                    } else {
                                        b579 price = buildDef.B();
                                        if (waypoint.n) {
                                            price = b579.a;
                                        }
                                        if (!price.c(this)) {
                                            newUnit2.a();
                                            br = bp437.bp.a();
                                            this.S = game.bv;
                                            if (this.X < 1000.0f) {
                                                br.c = true;
                                                a917 area = a917.a(this.bZ,
                                                        newUnit2.eq, newUnit2.er);
                                                if (area != null) {
                                                    area.i = true;
                                                }
                                            }
                                        } else {
                                            this.h(newUnit2);
                                            if (newUnit2 instanceof bp437) {
                                                bp437 b = (bp437) newUnit2;
                                                b.ba();
                                                if (newUnit2.bq()) {
                                                    game.bR.a(b);
                                                }
                                            }
                                            p352.c(newUnit2);
                                            br = bp437.bp.a();
                                            br.a = newUnit2;
                                            br.d = buildDef;
                                        }
                                    }
                                }
                            }
                        }

                        ce454 built = null;
                        if (br.a != null) {
                            built = br.a;
                        } else if (br.b != null) {
                            built = br.b;
                        }

                        if (built != null) {
                            br.d.a(this, built);
                            if (this.a(built)) {
                                if (this.w() > 10000.0f) {
                                    built.p(1.0f);
                                    this.cV();
                                } else {
                                    waypoint.b();
                                    waypoint.a = eo735.repair;
                                    waypoint.h = built;
                                    this.ax();
                                }
                            } else {
                                this.as();
                            }
                            this.S = -0x270F;
                        } else {
                            if (waypoint.b == null) {
                                k1104.d("active.build==null");
                            }
                            if (!br.c) {
                                this.as();
                            }
                        }
                    }
                }
            } else if (type == eo735.repair || type == eo735.reclaim) {
                // 原 smali 50052 起的 repair/reclaim 分支
                k1104 game = k1104.t();

                if (waypoint != null) {
                    float tx = waypoint.d();
                    float ty = waypoint.e();
                    float dist2 = f1006.a(this.eq, this.er, tx, ty);

                    boolean reclaimTargetValid = waypoint.a == eo735.reclaim
                            && waypoint.h != null
                            && waypoint.h.f() > 0.0f;

                    en734 cur = waypoint;
                    boolean repairing = waypoint.h != null
                            && !waypoint.h.bX
                            && waypoint.h.cP != null;

                    if (repairing) {
                        if (reclaimTargetValid) {
                            // keep
                        } else {
                            this.cV();
                            cur = null;
                        }
                    }

                    if (cur != null && reclaimTargetValid && cur.h != null) {
                        if (this.g < game.bv - 100) {
                            boolean ok = this.e(cur.h, false);
                            if (!ok) {
                                this.g = game.bv;
                            }
                        }
                    }

                    if (cur != null && cur.h != null) {
                        ce454 target = cur.h;

                        if (target.f() > 0.0f
                                && target.cw >= target.cx
                                && target.co >= 1.0f) {
                            this.cV();
                            cur = null;
                        }

                        if (cur != null && target == this) {
                            this.as();
                            cur = null;
                        }

                        if (cur != null && target.f() != 0.0f) {
                            if (cur.a == eo735.repair) {
                                this.as();
                                cur = null;
                            }
                        }

                        if (cur != null && cur.a == eo735.reclaim
                                && target.bZ != this.bZ
                                && target.f() == 0.0f) {
                            boolean crossTeam = true;
                            if (game.G() && this.bZ.c(target.bZ)) {
                                crossTeam = false;
                            }
                            if (crossTeam) {
                                this.as();
                                cur = null;
                            }
                        }
                    }

                    if (cur != null) {
                        if (cur.a == eo735.reclaim) {
                            int range = this.n(cur.h);
                            boolean allowed = this.bY();
                            // 后续移动/回收逻辑
                        } else {
                            int range = this.m(cur.h);
                            boolean allowed = this.bZ();
                        }
                    }
                }
            } else if (type == eo735.loadInto) {
                float tx = waypoint.d();
                float ty = waypoint.e();
                float dist2 = f1006.a(this.eq, this.er, tx, ty);

                if (waypoint.h == null || waypoint.h.bX) {
                    this.as();
                    waypoint = null;
                }

                if (waypoint != null && waypoint.h != null) {
                    if (!waypoint.h.c(this, false)) {
                        this.as();
                    }
                }

                if (waypoint != null) {
                    this.bS = waypoint.h;
                    ce454 target = waypoint.h;

                    boolean inRange = false;
                    if (target.bq()) {
                        if (dist2 < 961.0f) {
                            this.aa += f;
                        }
                        if (this.aa > 240.0f) {
                            inRange = true;
                        }

                        float range = 21.0f;
                        if (target.bH().isEmpty()) {
                            range = 11.0f;
                        }
                        if (this.b > 0.0f) {
                            range = target.cl + 31.0f;
                        }
                        if (dist2 < range * range) {
                            inRange = true;
                        }
                    } else {
                        if (dist2 < 441.0f) {
                            inRange = true;
                        }
                    }

                    if (!inRange) {
                        this.i = true;
                        this.j = tx;
                        this.k = ty;
                        if (this.q > 90.0f) {
                            this.q = 90.0f;
                        }
                        this.p = 18;
                        if (dist2 < 48400.0f) {
                            result.d = false;
                            if (this.q > 0.0f && this.aW == null) {
                                this.h = true;
                            }
                        }
                        if (this.af != null && !this.af.by()) {
                            result.d = false;
                        }
                    } else {
                        target.d(this, false);
                        this.as();
                    }
                }
            } else if (type == eo735.unloadAt) {
                float tx = waypoint.d();
                float ty = waypoint.e();
                float dist2 = f1006.a(this.eq, this.er, tx, ty);

                if (waypoint.h == null
                        || waypoint.h.bX
                        || !waypoint.h.by()) {
                    this.as();
                    waypoint = null;
                }

                if (waypoint != null && !this.c(waypoint.h, false)) {
                    this.as();
                }

                if (waypoint != null) {
                    this.bS = waypoint.h;
                    if (dist2 > 441.0f) {
                        this.i = true;
                        this.j = tx;
                        this.k = ty;
                        if (this.q > 90.0f) {
                            this.q = 90.0f;
                        }
                        this.p = 18;
                        if (dist2 < 72900.0f) {
                            result.d = false;
                            if (this.q > 0.0f && this.aW == null) {
                                this.h = true;
                            }
                        }
                        if (this.af != null && !this.af.by()) {
                            result.d = false;
                        }
                    } else {
                        waypoint.h.d(this, false);
                        this.as();
                    }
                }
            } else if (type == eo735.touchTarget) {
                this.a(f, waypoint, result);
            } else if (type == eo735.guard
                    || type == eo735.guardAt
                    || type == eo735.follow) {
                this.a(waypoint, result);
            } else if (type == eo735.triggerAction
                    || type == eo735.triggerActionWhenInRange) {
                this.c(waypoint);
            } else if (type == eo735.setPassiveTarget) {
                ce454 target = waypoint.f();
                if (target != null) {
                    this.T = target;
                    if (this.V > 5.0f) {
                        this.V = 5.0f;
                    }
                    this.as();
                }
            }
        }

        if (waypoint != this.ap()) {
            waypoint = null;
        }

        this.f = result.a;

        if (waypoint != null && waypoint.m && this.O > 1) {
            boolean keep = true;
            en734 next = this.cT();
            if (next != null
                    && (next.a == eo735.guard || next.a == eo735.patrol)) {
                keep = false;
            }
            if (keep) {
                this.as();
                waypoint = null;
            }
        }

        if (waypoint == null) {
            this.i = false;
        }

        if (this.i) {
            n533 custom = this.cO();
            if (custom != null && custom.H) {
                this.bg();
            }
        } else {
            if (this.o != 0) {
                this.o = 0;
            }
        }

        this.a(k2, f);
        this.a(k2, f, waypoint, result);

        for (int i = 0; i < count; i++) {
            ch457 slot = this.cN[i];
            if (slot.e != 0.0f) {
                slot.e = f1006.a(slot.e, f);
            }
        }

        boolean aS = this.aS();
        boolean hasExtraVelocity = this.ce != 0.0f || this.cf != 0.0f;

        if ((this.ch != 0.0f || hasExtraVelocity) && this.H()) {
            float angle = this.ci;
            float speed = this.y();

            if (this.aT()) {
                angle = this.cj;
            }

            if (!aS) {
                float move = this.ch * speed;
                float step = move * f;

                float dx = f1006.k(angle) * step;
                float dy = f1006.j(angle) * step * this.aK();

                float nx = oldEq + dx;
                float ny = oldEr + dy;

                if (hasExtraVelocity) {
                    nx += this.ce * f;
                    ny += this.cf * f * this.aK();

                    float v2 = f1006.a(0.0f, 0.0f, this.ce, this.cf);
                    if (v2 > speed * speed) {
                        this.ce -= this.ce * 0.05 * f;
                        this.cf -= this.cf * 0.05 * f;
                    }

                    this.ce = f1006.a(this.ce, 0.0f, speed * 0.5f * f);
                    this.cf = f1006.a(this.cf, 0.0f, speed * 0.5f * f);
                }

                oldEq = nx;
                oldEr = ny;
            } else {
                float maxSpeed = this.B() * 1.41f;
                float move = this.ch * speed;

                float dx = 0.0f;
                float dy = 0.0f;

                if (this.ch != 0.0f) {
                    dx = f1006.k(angle) * move;
                    dy = f1006.j(angle) * move;
                } else {
                    maxSpeed = this.C() * 1.41f;
                }

                float v2 = f1006.a(this.ce, this.cf, dx, dy);
                if (v2 > speed * speed) {
                    this.ce -= this.ce * 0.05 * f;
                    this.cf -= this.cf * 0.05 * f;
                }

                float step = maxSpeed * f;
                if (v2 < step * step) {
                    this.ce = dx;
                    this.cf = dy;
                } else {
                    float ang = f1006.d(this.ce, this.cf, dx, dy);
                    this.ce += f1006.k(ang) * step;
                    this.cf += f1006.j(ang) * step;
                }

                oldEq = this.eq + this.ce * f;
                oldEr = this.er + this.cf * f * this.aK();
            }

            this.aA = true;
        } else {
            oldEq = this.eq;
            oldEr = this.er;
        }

        if (this.cb != 0.0f || this.cc != 0.0f) {
            this.cb = f1006.b(this.cb, -9.0f, 9.0f);
            this.cc = f1006.b(this.cc, -9.0f, 9.0f);

            oldEq += this.cb;
            oldEr += this.cc;

            this.cc = 0.0f;
            this.cb = 0.0f;
            this.aA = true;
        }

        if (this.aA && this.H() && this.cQ == null) {
            this.a(f, k, oldEq, oldEr);
        }

        if (this.az) {
            this.az = false;
            this.a(false);
            this.aA = true;
        }
    }
}
