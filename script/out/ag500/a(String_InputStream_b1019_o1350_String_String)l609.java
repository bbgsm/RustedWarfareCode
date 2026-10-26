private static l609 a(String name, InputStream is, b1019 b1019Var,
                      o1350 o1350Var, String str1, String str2) {
    k1104 k = k1104.t();
    try {
        // === 日志（仅调试模式）===
        if (ag500.a) {
            String desc = "CORE";
            if (is != null) {
                desc = is.g();
            }
            k1104.d("Loading unit config: " + name + " [" + desc + "]");
        }

        long tStart = cf910.a();

        ae1325 reader;
        try {
            reader = new ae1325(is, name);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        ag500.a(tStart, ah501.e);

        l609 unit = new l609();

        // 检查 dont_load，如果为 true 直接返回 null
        if (reader.a("core", "dont_load", Boolean.FALSE)) {
            return null;
        }

        // 基础字段赋值
        unit.D = name;
        unit.E = o1350Var.a();
        unit.F = unit.D;
        unit.J = b1019Var;
        unit.K = str1;
        unit.L = str2;

        ag500.e = b1019Var;
        ag500.f = false;

        long tParse = cf910.a();

        // 递归加载（copyFrom 等）
        ag500.a(unit, reader, reader, name, 0);

        // 加载 all-units.template
        if (unit.L != null) {
            ag500.a(unit, reader, unit.L + "/all-units.template");
        }

        reader.a("core", "copyFrom");

        // strictLevel 校验
        unit.R = reader.b("core", "strictLevel", 0);
        if (unit.R < 0) throw new ch575("[core]strictLevel cannot be < 0");
        if (unit.R > 1) throw new ch575("[core]strictLevel cannot yet be > 1");

        unit.gs = reader.a("core", "logIfCreditResourceUsed", Boolean.FALSE);
        reader.a("core", "dont_load");
        reader.a("core", "class", "CustomUnitMetadata");

        // 处理 @copyFrom_skipThisSection
        for (String s : reader.a("@copyFrom_skipThisSection")) {
            reader.a(s, "@copyFrom_skipThisSection");
        }
        // 处理 @copyFromSection
        for (String s : reader.a("@copyFromSection")) {
            ag500.a(unit, reader, s, s, 0);
        }

        f.a597.a(reader);

        // 资源加载路径覆盖
        String overridePath = reader.a("core", "overrideResourceLoadPath", (String) null);
        if (overridePath != null) {
            unit.F = ag500.a(unit, name, overridePath);
        }

        ag500.a(tParse, ah501.i);

        // === 名称与标签 ===
        unit.M = reader.c("core", "name");
        unit.H = reader.b();

        if (unit.M.equals("self")) {
            throw new ch575("Unit name: " + unit.M + " is reserved");
        }
        if (unit.M.startsWith("self.")) {
            throw new ch575("Unit name cannot start with self.");
        }

        String altNames = reader.a("core", "altNames", (String) null);
        if (altNames != null && !altNames.equalsIgnoreCase("NONE")) {
            for (String alt : altNames.split(",")) {
                unit.N.add(alt.trim());
            }
        }

        unit.O = g604.a(reader.a("core", "tags", (String) null));

        if (unit.R > 0 && unit.O != null) {
            for (g604 g : unit.O.a) {
                if (g.a.contains(" ")) {
                    throw new ch575("(strictLevel 1) [core]tags: space in tag: '" + g.a + "'");
                }
            }
        }

        // === overrideAndReplace ===
        unit.Q = reader.a("core", "overrideAndReplace", (String) null);
        if (unit.Q != null && unit.Q.equalsIgnoreCase("NONE")) {
            unit.Q = null;
        }

        // === 内存变量定义 ===
        String defineMemory = reader.a("core", "defineUnitMemory", (String) null);
        if (defineMemory != null) {
            unit.r.addDefineValue(unit, "core", "defineUnitMemory", defineMemory);
            if (unit.r.hasArrays()) {
                unit.a("1.15p11", 0x1c143, "core", "Memory arrays (in defineUnitMemory)");
            }
        }

        for (String memKey : reader.j("core", "@memory ")) {
            String memName = memKey.substring(8).trim();
            String memValue = reader.a("core", memKey, (String) null);
            if (memValue == null) continue;

            if (memValue.contains(",")) {
                throw new ch575("[core]" + memKey + ": Only a single variable can be defined per @memory");
            }
            unit.r.addSingleDefine(unit, "core", memName, memValue, memKey);
            if (unit.r.hasArrays()) {
                unit.a("1.15p11", 0x1c143, "core", "Memory arrays (in " + memKey + ")");
            }
        }

        // === 核心属性 ===
        unit.T = (ad497) reader.a("core", "onNewMapSpawn", (Enum) null, ad497.class);
        unit.aG = reader.a("core", "globalScale", 1.0f);

        unit.l(unit.E);

        // missing placeholder 处理
        if (unit.M.equals("missing")) {
            if (b1019Var == null) {
                k1104.d("Setting missingPlaceHolder");
                l609.b = unit;
            } else {
                k1104.d("Not setting missingPlaceHolder, as we are in a mod");
            }
        }

        unit.aE = reader.a("core", "displayLocaleKey", (String) null);
        unit.aC = ag500.a(reader, "core", "displayText");
        unit.aD = ag500.a(reader, "core", "displayDescription");

        unit.eD = reader.a("core", "isBio", Boolean.FALSE);
        unit.eE = reader.a("core", "isBug", Boolean.FALSE);
        unit.eH = reader.a("core", "isPickableStartingUnit", Boolean.FALSE);
        unit.eI = reader.a("core", "startFallingWhenStartingUnit", Boolean.FALSE);
        unit.cy = reader.a("core", "stayNeutral", Boolean.FALSE);
        unit.cz = reader.a("core", "createNeutral", Boolean.FALSE);
        unit.cA = reader.a("core", "allowCaptureWhenNeutralByAI", Boolean.FALSE);

        if (reader.a("core", "createOnNeutralTeam", Boolean.FALSE)) {
            unit.cz = true;
        }

        unit.cB = reader.a("core", "whileNeutralTransportAnyTeam", Boolean.FALSE);
        unit.cC = reader.a("core", "whileNeutralConvertToTransportedTeam", Boolean.FALSE);
        unit.cD = reader.a("core", "convertToNeutralIfNotTransporting", Boolean.FALSE);
        if (unit.cD) unit.cy = true;

        unit.cE = reader.a("core", "createOnAggressiveTeam", Boolean.FALSE);
        unit.aF = reader.a("core", "showInEditor", Boolean.TRUE);

        // === 图形属性 ===
        unit.U = reader.b("graphics", "total_frames", 1);
        if (unit.U <= 0) {
            throw new ch575("TOTAL_FRAMES cannot be: " + unit.U + " (must be 1 or more)");
        }

        unit.W = reader.b("graphics", "frame_width", -1);
        unit.X = reader.b("graphics", "frame_height", -1);
        unit.Y = reader.b("graphics", "default_frame", 0);
        unit.ah = reader.b("graphics", "image_offsetX", 0);
        unit.ai = reader.b("graphics", "image_offsetY", 0);
        unit.aj = reader.a("graphics", "image_offsetH", 0.0f);

        if (unit.ah != 0 || unit.ai != 0 || unit.aj != 0) {
            unit.ak = true;
        }

        unit.ac = q353.a;
        if (reader.a("graphics", "teamColorsUseHue", Boolean.FALSE)) {
            unit.ac = q353.b;
        }

        String teamColoringMode = reader.a("graphics", "teamColoringMode", (String) null);
        if (teamColoringMode != null) {
            if (reader.a("graphics", "teamColorsUseHue", (Boolean) null) != null) {
                throw new ch575("Cannot use teamColoringMode and teamColorsUseHue at the same time");
            }
            switch (teamColoringMode.toLowerCase()) {
                case "puregreen": unit.ac = q353.a; break;
                case "hueadd":    unit.ac = q353.b; break;
                case "hueshift":  unit.ac = q353.d; break;
                case "disabled":  unit.ac = q353.e; break;
                default:
                    throw new ch575("Unknown teamColoringMode:" + teamColoringMode);
            }
        }

        unit.ab = reader.a("graphics", "imageSmoothing", Boolean.FALSE);
        unit.aa = reader.a("graphics", "imageSmoothingWhenZoomedIn", Boolean.FALSE);

        unit.Z = reader.a(unit, "graphics", "isVisible", (LogicBoolean) null);
        if (unit.Z == LogicBoolean.trueBoolean) unit.Z = null;

        unit.cL.m = reader.a("graphics", "isVisibleToEnemies", Boolean.TRUE);

        // 主图
        String image = reader.c("graphics", "image");
        unit.ad = unit.a(unit.F, image, unit.ab, "graphics", "image");
        if (unit.ad == null) {
            throw new ch575("Main unit image must be set on custom unit");
        }

        unit.ae = reader.a("graphics", "image_floatingPointSize", Boolean.FALSE);
        unit.af = unit.ad.h() / unit.U;
        unit.ag = unit.ad.g();
        if (unit.af <= 0) unit.af = 1;
        if (unit.W > 0) unit.af = unit.W;
        if (unit.X > 0) {
            unit.ag = unit.X;
            if (unit.ag < unit.ad.g()) {
                unit.V = unit.ad.h() / unit.af;
                if (unit.V <= 0) unit.V = 1;
            }
        }

        unit.al = unit.a(reader, "graphics", "image_back");
        unit.am = reader.a("graphics", "image_back_always_use_full_image", Boolean.FALSE);
        unit.an = unit.a(reader, "graphics", "image_wreak");
        unit.ao = unit.a(reader, "graphics", "image_turret");
        unit.as = e.l714.dP;

        // 阴影处理（AUTO / AUTO_ANIMATED / 自定义）
        String shadowImage = reader.a("graphics", "image_shadow", "NONE");
        if (shadowImage.equalsIgnoreCase("AUTO")) {
            String key = "[autoShadow:" + unit.af + "," + unit.ag + "]"
                    + unit.ad.d + "-" + unit.ad.e;
            e1216 shadow = ag500.b(key);
            if (shadow != null) {
                unit.ap = shadow;
            } else {
                unit.ap = ce454.a(unit.ad, unit.af, unit.ag);
                ag500.a(unit.ap);
                if (unit.ap != null) ag500.a(key, unit.ap);
            }
        } else if (shadowImage.equalsIgnoreCase("AUTO_ANIMATED")) {
            String key = "[autoShadowAnimated:" + unit.af + "," + unit.ag + "]"
                    + unit.ad.d + "-" + unit.ad.e;
            e1216 shadow = ag500.b(key);
            if (shadow != null) {
                unit.ap = shadow;
            } else {
                unit.ap = ce454.a(unit.ad, unit.ad.h(), unit.ad.g());
                ag500.a(unit.ap);
                if (unit.ap != null) ag500.a(key, unit.ap);
            }
            unit.aq = true;
        } else {
            unit.ap = unit.a(unit.F, shadowImage, unit.ab, "graphics", "image_shadow");
        }

        if (reader.a("graphics", "image_shadow_frames", Boolean.FALSE)) {
            unit.aq = true;
        }

        unit.ar = unit.a(unit.ad, unit.ac);
        unit.s = reader.a("graphics", "teamColorsOnTurret", Boolean.FALSE);
        if (unit.s && unit.ao != null) {
            unit.at = unit.a(unit.ao, unit.ac);
        }

        // 图像缩放
        float scaleImagesTo = reader.a("graphics", "scaleImagesTo", -1.0f);
        if (scaleImagesTo > 0) {
            unit.bH = scaleImagesTo * unit.aG / unit.af;
        }
        float imageScale = reader.a("graphics", "imageScale", 1.0f);
        if (imageScale != 1.0f) unit.bH *= imageScale;

        float scaleTurretTo = reader.a("graphics", "scaleTurretImagesTo", -1.0f);
        if (scaleTurretTo > 0) {
            if (unit.ao == null) {
                throw new RuntimeException("scaleTurretImagesTo needs image_turret set");
            }
            unit.bI = scaleTurretTo * unit.aG / unit.ao.p;
        }
        float turretImageScale = reader.a("graphics", "turretImageScale", 1.0f);
        if (turretImageScale != 1.0f) unit.bI *= turretImageScale;

        unit.au = e.c705.e;
        e1216 shield = unit.a(reader, "graphics", "image_shield");
        if (shield != null) {
            unit.au = shield;
            unit.av = true;
        }

        unit.aw = unit.a(reader, "graphics", "icon_build", false);

        // 绘制边界
        float w = unit.ad.h() * unit.bH;
        float h = unit.ad.g() * unit.bH;
        if (w / 2f > 90f || h / 2f > 90f) {
            unit.C = new Rect();
            unit.C.left   = (int)(-w / 2f);
            unit.C.right  = (int)( w / 2f);
            unit.C.top    = (int)(-h / 2f);
            unit.C.bottom = (int)( h / 2f);
            unit.B = true;
        }

        // === 资源定义 ===
        for (String resKey : reader.l("resource_", "global_resource_")) {
            boolean isGlobal = false;
            String resName;
            if (resKey.startsWith("resource_")) {
                resName = resKey.substring(9);
            } else {
                resName = resKey.substring(16);
                isGlobal = true;
            }
            resName = resName.trim();

            if (resName.contains(" ")) {
                throw new RuntimeException("[" + resKey + "] resource codename cannot contain a space");
            }
            if (resName.matches(".*[=|:,()<>$].*")) {
                throw new RuntimeException("[" + resKey + "] resource codename cannot contain the symbols: =|:,()<>$");
            }

            d592 res = new d592(isGlobal);
            res.a(unit, reader, resKey, resName);
            if (unit.i(res.a) != null) {
                throw new RuntimeException("[" + resKey + "] resource with name:" + res.a + " already exists in this file");
            }
            unit.j.add(res);
        }
        for (d592 res : unit.j) {
            res.a(unit);
        }

        if (k.k()) {
            b.l531.a(unit, reader);
            b.j529.a(unit, reader);
        }
        b.m532.a(unit, reader);

        // === 自动触发 ===
        unit.ca = reader.b("core", "autoTriggerCooldownTime", 60.0f);
        if (unit.ca < 0)   throw new RuntimeException("autoTriggerCooldownTime cannot be < 0");
        if (unit.ca > 120) throw new RuntimeException("autoTriggerCooldownTime cannot be more than 2 seconds");
        if (!reader.a("core", "autoTriggerCooldownTime_allowDangerousHighCPU", Boolean.FALSE)
                && unit.ca < 5.0f) {
            throw new RuntimeException("autoTriggerCooldownTime cannot be this low (without override)...");
        }
        unit.cb = (s616) reader.a("core", "autoTriggerCheckRate", s616.a, s616.class);
        unit.cd = reader.a("core", "autoTriggerCheckWhileNotBuilt", Boolean.FALSE);

        unit.cL.b = reader.d("core", "mass");
        unit.ce = reader.a("core", "availableInDemo", Boolean.TRUE);
        unit.cf = reader.a("core", "isLocked", Boolean.FALSE);
        unit.cg = reader.a("core", "isLockedIfGameModeNoNuke", Boolean.FALSE);

        // === 价格相关 ===
        unit.ch = d.b579.a(unit, reader, "core", "price", false);
        unit.ci = d.b579.a(unit, reader, "core", "reclaimPrice");
        unit.cj = d.b579.b(unit, reader, "core", "streamingCost");

        boolean switchPrice = reader.a("core", "switchPriceWithStreamingCost", Boolean.FALSE);
        if (switchPrice) {
            if (unit.cj != null) {
                throw new RuntimeException("[core]streamingCost and switchPriceWithStreamingCost=true cannot be used at the same time");
            }
            unit.cj = d.b579.b(unit, reader, "core", "price");
            unit.ch = d.b579.a;
        }

        unit.ck = reader.d("core", "buildSpeed", 1.0f);
        unit.cl = reader.b("core", "techLevel", 1);
        if (unit.cl > 3)  throw new RuntimeException("techLevel cannot be greater than max tech level of:3");
        if (unit.cl <= 0) throw new RuntimeException("techLevel cannot be less than 1, it is:" + unit.cl);

        unit.cm = reader.a("core", "experimental", Boolean.FALSE);
        unit.cv = d.b579.a(unit, reader, "core", "borrowResourcesWhileAlive", true);
        unit.cw = d.b579.a(unit, reader, "core", "borrowResourcesWhileBuilt", true);
        unit.co = d.b579.a(unit, reader, "core", "generation_resources", true);

        int genCredits = reader.b("core", "generation_credits", 0);
        if (genCredits != 0) {
            unit.co = d.b579.a(unit.co, d.b579.a(genCredits));
        }

        unit.cr = reader.b("core", "generation_delay", 40);
        if (unit.cr == 0) unit.cr = 1;
        if (unit.cr < 0) throw new RuntimeException("[core]generation_delay cannot be < 0");

        unit.cs = 40.0f / unit.cr;

        if (!unit.co.c()) {
            unit.cp = new e.f594();
            unit.cp.a(unit.co);
            unit.cp.a(unit.cs);
            unit.cn = true;
        }
        if (!unit.cp.a()) {
            for (e.e593 e : unit.cp.b) {
                if (!e.a.a() && e.a.b()) {
                    if (unit.cq == e.f594.a) unit.cq = new e.f594();
                    unit.cq.b(e.a, e.b);
                }
            }
        }

        unit.cx = reader.a(unit, "core", "generation_active", LogicBoolean.trueBoolean);
        unit.a(unit.co);

        unit.cF = reader.a("core", "resourceRate", 0.0f);
        if (switchPrice && unit.cF != 0) {
            throw new RuntimeException("To avoid mistakes [core]resourceRate cannot be used with switchPriceWithStreamingCost=true");
        }

        String updateMemory = reader.a("core", "updateUnitMemory", (String) null);
        if (updateMemory != null) {
            unit.ct = VariableScope.createMemoryWriter(updateMemory, unit, "core", "updateUnitMemory");
        }
        unit.cu = reader.b("core", "updateUnitMemoryRate", 60.0f);
        unit.cG = reader.b("core", "resourceMaxConcurrentReclaimingThis", Integer.MAX_VALUE);
        unit.cH = reader.a("core", "similarResourcesHaveTag", (h605) null);

        unit.do = ce572.a(unit, reader.a("core", "soundOnAttackOrder", (String) null));
        unit.dp = ce572.a(unit, reader.a("core", "soundOnMoveOrder",   (String) null));
        unit.dq = ce572.a(unit, reader.a("core", "soundOnNewSelection",(String) null));

        // === 绘制层 ===
        String drawLayer = reader.a("graphics", "drawLayer", (String) null);
        if (drawLayer != null) {
            switch (drawLayer) {
                case "experimentals": unit.cI = 4;  break;
                case "underwater":
                case "bottom":        unit.cI = 1;  break;
                case "ground":        unit.cI = 2;  break;
                case "ground2":       unit.cI = 3;  break;
                case "air":           unit.cI = 5;  break;
                case "top":           unit.cI = 10; break;
                case "wreaks":        unit.cI = 0;  break;
                default: throw new RuntimeException("unknown drawLayer:" + drawLayer);
            }
        }

        unit.cJ = reader.a("graphics", "shadowOffsetX", 0.0f);
        unit.cK = reader.a("graphics", "shadowOffsetY", 0.0f);
        unit.dB = reader.a("graphics", "rotate_with_direction", Boolean.TRUE);
        unit.dC = reader.a("graphics", "lock_body_rotation_with_main_turret", Boolean.FALSE);
        unit.dD = reader.a("graphics", "lock_shadow_rotation_with_main_turret", unit.dC);
        unit.dE = reader.a("graphics", "lock_leg_rotation_with_main_turret", Boolean.FALSE);
        unit.dH = reader.a("graphics", "whenBeingBuiltMakeTransparentTill", 1.0f);
        unit.dI = m610.a(reader, "graphics", "animation_");

        // === 特效定义 ===
        for (String fxKey : reader.b("effect_")) {
            String fxName = fxKey.substring(7);
            br552 fx = new br552(fxName);
            fx.a(unit, reader, fxKey);
            unit.gd.add(fx);
        }
        for (br552 fx : unit.gd) {
            if (fx.alsoEmitEffects         != null) fx.alsoEmitEffects.c();
            if (fx.alsoEmitEffectsOnDeath   != null) fx.alsoEmitEffectsOnDeath.c();
            if (fx.ifSpawnFailsEmitEffects  != null) fx.ifSpawnFailsEmitEffects.c();
            if (fx.trailEffect              != null) fx.trailEffect.c();
        }

        // === 运动/修复特效 ===
        unit.bJ = reader.a("graphics", "splastEffect", Boolean.FALSE);
        unit.bM = reader.a("graphics", "dustEffect",   Boolean.FALSE);
        unit.bK = reader.a("graphics", "splastEffectReverse", Boolean.TRUE);
        unit.bN = reader.a("graphics", "dustEffectReverse",   Boolean.TRUE);
        unit.bL = unit.bM || unit.bJ;

        String moveFx = reader.a("graphics", "movementEffect", (String) null);
        if (moveFx != null) {
            unit.bO = unit.a(moveFx, (z623) null);
            if (unit.bO != null && unit.bO.a()) unit.bL = true;
        }
        String moveFxRev = reader.a("graphics", "movementEffectReverse", (String) null);
        if (moveFxRev != null) {
            unit.bP = unit.a(moveFxRev, (z623) null);
            if (unit.bP != null && unit.bP.a()) unit.bL = true;
        }
        unit.bR = reader.a("graphics", "movementEffectRate", 11.0f);
        unit.bQ = reader.a("graphics", "movementEffectReverseFlipEffects", Boolean.FALSE);

        unit.bT = reader.a("graphics", "repairEffectRate", 5.0f);
        String repairFx = reader.a("graphics", "repairEffect", (String) null);
        if (repairFx != null) {
            unit.bU = unit.a(repairFx, (z623) null);
            if (unit.bU != null && unit.bU.b()) unit.bS = true;
        }
        String repairFxTgt = reader.a("graphics", "repairEffectAtTarget", (String) null);
        if (repairFxTgt != null) {
            unit.bV = unit.a(repairFxTgt, (z623) null);
            if (unit.bV != null && unit.bV.b()) unit.bS = true;
        }

        unit.bX = reader.a("graphics", "reclaimEffectRate", 5.0f);
        String reclaimFx = reader.a("graphics", "reclaimEffect", (String) null);
        if (reclaimFx != null) {
            unit.bY = unit.a(reclaimFx, (z623) null);
            if (unit.bY != null && unit.bY.b()) unit.bW = true;
        }
        String reclaimFxTgt = reader.a("graphics", "reclaimEffectAtTarget", (String) null);
        if (reclaimFxTgt != null) {
            unit.bZ = unit.a(reclaimFxTgt, (z623) null);
            if (unit.bZ != null && unit.bZ.b()) unit.bW = true;
        }

        // === 动画 ===
        unit.ds.a(unit, reader, "graphics", "animation_" + unit.ds.a + "_");
        unit.dt.a(unit, reader, "graphics", "animation_" + unit.dt.a + "_");
        unit.du.a(unit, reader, "graphics", "animation_" + unit.du.a + "_");

        for (String animKey : reader.b("animation_")) {
            String animName = animKey.substring(10);
            f603 anim = new f603(animName);
            anim.a(unit, reader, animKey, "");
            unit.dr.add(anim);
        }

        unit.ds = unit.a(n611.a, unit.ds);
        unit.dt = unit.a(n611.c, unit.dt);
        unit.du = unit.a(n611.b, unit.du);
        unit.dw = unit.a(n611.e);
        unit.dx = unit.a(n611.f);
        if (unit.dw != null && unit.dx != null) {
            throw new RuntimeException("Cannot use underConstruction and underConstructionWithLinkedBuiltTime animations at the same time");
        }
        unit.dv = unit.a(n611.d);
        unit.dy = unit.a(n611.g);
        if (unit.dy != null) unit.bg = true;
        unit.dz = unit.a(n611.h);
        unit.dA = unit.a(n611.i);

        // === 生命值/护盾/能量 ===
        unit.cL.c = reader.d("core", "maxHp");
        unit.cL.g = reader.b("core", "maxShield", 0);
        unit.cM = reader.a("core", "startShieldAtZero", Boolean.FALSE);
        unit.cL.h = reader.a("core", "shieldRegen", 0.25f);
        unit.cU = reader.a("core", "shieldDisplayOnlyDeflection", Boolean.FALSE);
        unit.cV = reader.a("core", "shieldDeflectionDisplayRate", 4.0f);
        unit.cL.l = reader.a("core", "armour", 0.0f);
        unit.cN = reader.a("core", "armourMinDamageToKeep", 1.0f);
        unit.cL.d = reader.a("core", "energyMax", 0.0f);
        unit.cO = reader.a("core", "startEnergyAtZero", Boolean.FALSE);
        unit.cP = reader.a("core", "energyRegen", 0.0f);
        unit.cS = reader.a("core", "energyStartingPercentage", 1.0f);
        unit.cR = reader.a("core", "energyNeedsToRechargeToFull", Boolean.FALSE);
        unit.cQ = reader.a("core", "energyRegenWhenRecharging", unit.cP);
        unit.cT = ag500.a(reader, "core", "energyDisplayName");

        // === 半径/足迹 ===
        unit.cW = reader.d("core", "radius");
        unit.dd = reader.b("core", "displayRadius", unit.cW);
        float radius = unit.cW;
        if (radius < 6.0f) radius = 6.0f;
        unit.de = reader.a("core", "uiTargetRadius", radius);
        unit.df = reader.b("core", "shieldRenderRadius", unit.cW);
        unit.dg = reader.b("core", "buildingSelectionOffset", 0);

        unit.cX = reader.a("core", "footprint", unit.cX);
        unit.cY = reader.a("core", "constructionFootprint", unit.cY);
        unit.cZ.set(unit.cX);
        unit.cZ = reader.a("core", "displayFootprint", unit.cZ);

        unit.da = reader.a("core", "buildingToFootprintOffsetX", 10.0f);
        unit.db = reader.a("core", "buildingToFootprintOffsetY", 10.0f);
        unit.cW = (int)(unit.cW * unit.aG);
        unit.dd = (int)(unit.dd * unit.aG);

        // === 视野/出口 ===
        unit.cL.n = reader.b("core", "fogOfWarSightRange", 15);
        unit.dh = reader.b("core", "fogOfWarSightRangeWhileNotBuilt", -1);
        unit.di = reader.a("core", "exit_x", 0.0f);
        unit.dj = reader.a("core", "exit_y", 9.0f);
        unit.dk = reader.a("core", "exit_dirOffset", (Float) null);
        unit.dl = reader.a("core", "exit_heightOffset", 0.0f);
        unit.dm = reader.a("core", "exitHeightIgnoreParent", Boolean.FALSE);
        unit.dn = reader.a("core", "exit_moveAwayAmount", 70.0f);

        // === 碰撞 ===
        unit.eB = reader.b("core", "softCollisionOnAll", 0);
        unit.eC = reader.a("core", "disableAllUnitCollisions", Boolean.FALSE);
        if (unit.eC) unit.cX.set(0, 0, -1, -1);

        unit.eJ = reader.a("core", "hideScorchMark", Boolean.FALSE);
        unit.eK = reader.a("graphics", "disableLowHpFire",  unit.eD);
        unit.eL = reader.a("graphics", "disableLowHpSmoke", unit.eD);

        // === 建筑相关 ===
        unit.aH = reader.a("core", "isBuilding", Boolean.FALSE);
        unit.aI = reader.a("core", "ignoreInUnitCapCalculation", unit.aH);
        unit.aJ = reader.a("core", "placeOnlyOnResPool", Boolean.FALSE);
        unit.aK = reader.a("core", "isUnrepairableUnit", Boolean.FALSE);
        unit.aL = reader.a("core", "extraBuildRangeWhenBuildingThis", 0.0f);
        unit.aM = reader.a("core", "isUnselectable", Boolean.FALSE);
        unit.aN = reader.a("core", "isUnselectableAsTarget", unit.aM);
        unit.fO = reader.a("core", "showActionsWithMixedSelectionIfOtherUnitsHaveTag", (h605) null);
        unit.aO = reader.a("core", "canNotBeDirectlyAttacked", Boolean.FALSE);
        unit.aP = reader.a("core", "canNotBeDamaged", unit.aO);
        unit.aQ = reader.a("core", "showOnMinimap", Boolean.TRUE);
        unit.aR = reader.a("core", "showOnMinimapToEnemies", unit.cL.m);
        unit.aS = reader.a("core", "canOnlyBeAttackedByUnitsWithTags", (h605) null);
        if (unit.aO && unit.aS != null) {
            throw new RuntimeException("canNotBeDirectlyAttacked and canOnlyBeAttackedByUnitsWithTags cannot be used at the same time");
        }

        unit.aT = reader.a("core", "canNotBeGivenOrdersByPlayer", Boolean.FALSE);
        unit.aU = reader.a("core", "canRepairBuildings", Boolean.FALSE);
        unit.aV = reader.a("core", "canRepairUnits", Boolean.FALSE);
        unit.aW = reader.a("core", "autoRepair", Boolean.FALSE);
        if (unit.aW) unit.a(b.b521.a);

        // === 纳米修复/建造 ===
        unit.cL.o = reader.b("core", "nanoRange", -1);
        if (unit.cL.o != -1) unit.cL.o = (int)(unit.cL.o * unit.aG);

        unit.aY = reader.a("core", "nanoRangeForRepairIsMelee", Boolean.FALSE);
        if (unit.aY) unit.aX = 5;
        int nanoRangeRepair = reader.b("core", "nanoRangeForRepair", -1);
        if (nanoRangeRepair != -1) {
            unit.aX = (int)(nanoRangeRepair * unit.aG);
        }

        unit.ba = reader.a("core", "nanoRangeForReclaimIsMelee", Boolean.FALSE);
        if (unit.ba) unit.aZ = 5;
        int nanoRangeReclaim = reader.b("core", "nanoRangeForReclaim", -1);
        if (nanoRangeReclaim != -1) {
            unit.aZ = (int)(nanoRangeReclaim * unit.aG);
        }

        unit.bb = reader.a("core", "nanoRepairSpeed", 0.2f);
        unit.bc = reader.a("core", "nanoReclaimSpeed", unit.bb * 5.1f);
        unit.bd = reader.a("core", "resourceReclaimMultiplier", 1.0f);
        unit.be = reader.a("core", "nanoUnbuildSpeed", 1.0f) * 0.001f * 5.1f;
        unit.bf = reader.a("core", "nanoBuildSpeed", 1.0f);
        unit.cL.r = reader.a("core", "nanoFactorySpeed", 1.0f);
        unit.cL.p = reader.a("core", "selfRegenRate", 0.0f);
        unit.bh = reader.d("core", "selfBuildRate", 0.0f);
        unit.bi = reader.a("core", "dieOnConstruct", Boolean.FALSE);
        unit.bk = reader.a("core", "dieOnZeroEnergy", Boolean.FALSE);

        // === 死亡相关 ===
        int numBitsOnDeath = 4;
        if (unit.cL.b > 30000.0f) numBitsOnDeath = 8;
        if (unit.aH)                numBitsOnDeath = 7;
        unit.bq = reader.b("core", "numBitsOnDeath", numBitsOnDeath);

        unit.bn = reader.a("core", "nukeOnDeath", Boolean.FALSE);
        unit.bo = reader.a("core", "nukeOnDeathRange", 250.0f);
        unit.bp = reader.a("core", "nukeOnDeathDamage", 5400.0f);
        unit.br = reader.a("core", "nukeOnDeathDisableWhenNoNuke", Boolean.FALSE);
        unit.bm = reader.b("core", "fireOnDeath", 0);
        unit.bt = (bt441) reader.a("core", "explodeTypeOnDeath", (Enum) null, bt441.class);
        unit.bu = reader.a("core", "explodeOnDeath", Boolean.TRUE);
        unit.bs = reader.a("core", "disableDeathOnZeroHp", Boolean.FALSE);

        boolean explodeGC1 = reader.a("core", "explodeOnDeathGroundCollosion", Boolean.TRUE);
        unit.bv = reader.a("core", "explodeOnDeathGroundCollision", explodeGC1);

        unit.by = unit.a(reader.a("core", "effectOnDeath", (String) null), (z623) null);
        unit.bx = unit.a(reader.a("core", "effectOnDeathIfUnbuilt", (String) null), (z623) null);
        unit.bz = ce572.a(unit, reader.a("core", "soundOnDeath", (String) null));
        String effDeathGC1 = reader.a("core", "effectOnDeathGroundCollosion", (String) null);
        String effDeathGC2 = reader.a("core", "effectOnDeathGroundCollision", effDeathGC1);
        unit.bw = unit.a(effDeathGC2, (z623) null);

        unit.bC = ci576.a(unit, reader, "core", "unitsSpawnedOnDeath");
        unit.bD = reader.a("core", "unitsSpawnedOnDeath_setToTeamOfLastAttacker", Boolean.FALSE);

        // === 回收/修复能力 ===
        unit.fk = reader.a("core", "canReclaimResources", Boolean.FALSE);
        unit.fl = reader.a("core", "canReclaimResourcesOnlyWithTags", (h605) null);
        unit.fm = reader.b("core", "canReclaimResourcesNextSearchRange", 500);
        unit.fn = reader.a("core", "canReclaimUnitsOnlyWithTags", (h605) null);
        unit.fo = reader.a("core", "canRepairUnitsOnlyWithTags", (h605) null);

        if (unit.fn != null && !unit.aV && !unit.aU) {
            throw new RuntimeException("canReclaimUnitsOnlyWithTags requires canRepairUnits:true or canRepairBuildings:true");
        }
        if (unit.fo != null && !unit.aV && !unit.aU) {
            throw new RuntimeException("canRepairUnitsOnlyWithTags requires canRepairUnits:true or canRepairBuildings:true");
        }

        // === 运输 ===
        unit.eM = reader.b("core", "maxTransportingUnits", 0);
        if (unit.eM < 0) throw new RuntimeException("maxTransportingUnits cannot be < 0");

        unit.eN = reader.b("core", "transportUnitsUnloadDelayBetweenEachUnit", 30.0f);
        unit.eP = g604.a(reader.a("core", "transportUnitsRequireTag", (String) null));

        String transportMoveType = reader.a("core", "transportUnitsRequireMovementType", (String) null);
        if (transportMoveType != null) {
            for (String mt : transportMoveType.split(",")) {
                unit.eQ.add(cg456.a(mt.trim(), "transportUnitsRequireMovementType"));
            }
        }

        unit.eO = reader.a("core", "transportUnitsEachUnitAlwaysUsesSingleSlot", Boolean.FALSE);
        unit.eR = reader.a("core", "transportUnitsBlockAirAndWaterUnits", unit.eQ.size() == 0);
        unit.eS = reader.a("core", "transportUnitsBlockOtherTransports", Boolean.TRUE);
        unit.eU = reader.a(unit, "core", "transportUnitsKeepBuiltUnits",  LogicBoolean.falseBoolean);
        unit.eV = reader.a(unit, "core", "transportUnitsKillOnDeath",    LogicBoolean.trueBoolean);
        unit.eW = reader.a(unit, "core", "transportUnitsKeepWaypoints",  LogicBoolean.falseBoolean);
        unit.eY = reader.a("core", "transportUnitsHealBy", 0.0f);

        unit.fc = reader.a(unit, "core", "transportUnitsCanUnloadUnits", (LogicBoolean) null);
        if (unit.fc != null) {
            unit.fd = unit.fc;
        } else {
            unit.fc = l609.fa;
            unit.fd = l609.fb;
        }

        unit.eT = reader.a("core", "transportUnitsAddUnloadOption", unit.fc != LogicBoolean.falseBoolean);
        unit.eX = reader.a("core", "transportUnitsOnTeamChangeKeepCurrentTeam", unit.eX);
        unit.eZ = reader.b("core", "transportSlotsNeeded", 1);

        // === builtFrom_X_* ===
        for (int i = -1; i <= 29; i++) {
            String prefix = (i == -1) ? "builtFrom_" : ("builtFrom_" + i + "_");
            String keyName = prefix + "name";
            String builtFromNames = reader.a("core", keyName, (String) null);
            if (builtFromNames == null) continue;

            for (String n : builtFromNames.split(",")) {
                String trimmed = n.trim();
                if (trimmed.equals("")) continue;

                p613 pf = new p613();
                pf.a = trimmed;
                pf.b = reader.a("core", prefix + "pos", 999.0f);
                pf.c = reader.a("core", prefix + "forceNano", Boolean.FALSE);
                pf.d = "[core]" + keyName;
                pf.f = reader.a(unit, "core", prefix + "isLocked", (LogicBoolean) null);
                pf.g = ag500.a(reader, "core", prefix + "isLockedMessage");
                if (pf.f == LogicBoolean.falseBoolean) pf.f = null;
                if (!trimmed.equalsIgnoreCase("NONE")) {
                    unit.gg.add(pf);
                }
            }
        }

        // === canBuild_X_* ===
        for (int i = 0; i <= 50; i++) {
            String buildName = reader.a("core", "canBuild_" + i + "_name", (String) null);
            if (buildName != null) {
                ag500.a(unit, reader, "core", "canBuild_" + i + "_");
            }
        }
        for (String canBuildKey : reader.b("canBuild_")) {
            ag500.a(unit, reader, canBuildKey, "");
        }

        unit.ff = bx558.a(unit, reader);

        // === 移动类型 ===
        String movementType = reader.c("movement", "movementType");
        unit.fg = cg456.a(movementType, "movementType");
        unit.fh = !unit.aH ? unit.fg : cg456.a;

        // === AI 用途 ===
        Boolean useAsBuilder = reader.a("ai", "useAsBuilder", (Boolean) null);
        unit.fs = reader.a("ai", "useAsAttacker", Boolean.TRUE);
        Boolean isBuilder = reader.a("core", "isBuilder", (Boolean) null);

        Boolean fpVal, fqVal;
        if (isBuilder != null) {
            fpVal = isBuilder;
            fqVal = (useAsBuilder != null) ? useAsBuilder : isBuilder;
        } else if (useAsBuilder != null) {
            fpVal = useAsBuilder;
            fqVal = useAsBuilder;
        } else {
            fpVal = Boolean.FALSE;
            fqVal = Boolean.FALSE;
        }
        unit.fp = fpVal;
        unit.fq = fqVal;

        if (!unit.fp && unit.fq) {
            throw new RuntimeException("Cannot tell AI to use a non-builder as builder [ai]useAsBuilder:"
                    + unit.fq + " [core]isBuilder:" + unit.fp);
        }

        if (unit.fk) unit.fr = true;
        Boolean useAsHarvester = reader.a("ai", "useAsHarvester", (Boolean) null);
        if (useAsHarvester != null) unit.fr = useAsHarvester;

        Boolean useAsTransport = reader.a("ai", "useAsTransport", (Boolean) null);
        if (useAsTransport == null) {
            useAsTransport = (unit.eM > 0 && !unit.fq && !unit.aH);
        }
        if (!unit.eT) useAsTransport = Boolean.FALSE;
        unit.ft = useAsTransport;

        // === 图标/绘制资源 ===
        if (unit.aH) {
            unit.as = d.f655.q;
        } else if (unit.fg == cg456.d) {
            unit.as = b.b412.n;
        } else if (unit.fg == cg456.e) {
            unit.as = h.h762.q;
        } else if (unit.fg == cg456.f) {
            if (unit.cm)           unit.as = e.l714.dQ;
            else if (unit.l())     unit.as = e.b704.h;
            else                   unit.as = e.h710.n;
        } else {
            if (unit.cm)           unit.as = e.l714.dQ;
            else if (unit.l())     unit.as = e.b704.h;
            else                   unit.as = e.l714.dP;
        }

        e1216 iconZoomedOut = unit.a(reader, "graphics", "icon_zoomed_out", false);
        if (iconZoomedOut != null) {
            unit.as = unit.a(iconZoomedOut, unit.ac);
        }
        if (reader.a("graphics", "icon_zoomed_out_neverShow", Boolean.FALSE)) {
            unit.as = null;
        }

        // === HUD 显示 ===
        unit.t = reader.a("graphics", "showHealthBar", Boolean.TRUE);
        unit.u = reader.a("graphics", "showHealthBarChanges", Boolean.TRUE);
        unit.v = reader.a("graphics", "showEnergyBar", Boolean.TRUE);
        unit.w = reader.a("graphics", "showShotDelayBar", Boolean.TRUE);
        unit.x = reader.a("graphics", "showTransportBar", Boolean.TRUE);
        unit.y = reader.a("graphics", "showShieldBar", Boolean.TRUE);
        unit.z = reader.a("graphics", "showQueueBar", Boolean.TRUE);
        unit.A = reader.a("graphics", "showSelectionIndicator", Boolean.TRUE);

        unit.fi = reader.a("movement", "slowDeathFall", Boolean.FALSE);
        unit.fj = reader.a("movement", "slowDeathFallSmoke", Boolean.TRUE);

        // === 移动参数 ===
        unit.cL.j = reader.a("movement", "moveSpeed", 1.0f) * unit.aG;
        unit.dN = reader.a("movement", "moveAccelerationSpeed", 1.0f) * unit.aG;
        unit.dO = reader.a("movement", "moveDecelerationSpeed", 1.0f) * unit.aG;

        Boolean ignoreMoveOrders = reader.a("movement", "ignoreMoveOrders", (Boolean) null);
        if (unit.aH) unit.dP = true;
        if (ignoreMoveOrders != null) {
            if (ignoreMoveOrders) {
                unit.dP = true;
                if (unit.cL.j > 0) {
                    throw new RuntimeException("[movement]ignoreMoveOrders expects moveSpeed=0");
                }
            } else {
                if (unit.aH) {
                    throw new RuntimeException("[movement]ignoreMoveOrders=false not yet supported on buildings");
                }
            }
        }

        unit.ej = reader.a("movement", "moveYAxisScaling", 1.0f);
        if (unit.ej <= 0) throw new RuntimeException("[movement]moveYAxisScaling must be > 0");
        unit.ek = 1.0f / unit.ej;
        unit.el = reader.a("movement", "reverseSpeedPercentage", 0.6f);

        String landOnGround = reader.a("movement", "landOnGround", "false");
        if (landOnGround.equalsIgnoreCase("false")) {
            unit.dQ = false;
        } else if (landOnGround.equalsIgnoreCase("onlyIdle")) {
            unit.dQ = true;
            unit.dR = true;
        } else if (landOnGround.equalsIgnoreCase("true")) {
            unit.dQ = true;
        } else {
            throw new RuntimeException("landOnGround expected:true, false, onlyIdle, not:" + landOnGround);
        }

        float targetHeight = 0.0f, targetHeightDrift = 0.0f;
        if (unit.fg == cg456.d) {
            targetHeight = 35.0f;
            targetHeightDrift = 1.5f;
        }
        unit.dS = reader.a("movement", "startingHeightOffset", 0.0f);
        unit.cL.q = reader.a("movement", "targetHeight", targetHeight);
        unit.dT = reader.a("movement", "targetHeightDrift", targetHeightDrift);
        if (unit.cL.q > 80.0f) unit.B = true;
        unit.dU = reader.a("movement", "heightChangeRate", unit.dU);
        unit.dV = reader.a("movement", "fallingAcceleration", unit.dV);
        unit.dW = reader.a("movement", "fallingAccelerationDead", unit.dW);
        unit.cL.k = reader.a("movement", "maxTurnSpeed", 1.0f);
        unit.eo = reader.a("movement", "turnAcceleration", 1.0f);
        unit.dX = reader.a("movement", "moveSlidingMode", Boolean.FALSE);
        unit.dY = reader.a("movement", "moveIgnoringBody", Boolean.FALSE);
        unit.dZ = reader.b("movement", "moveSlidingDir", -1);
        unit.ei = reader.a("movement", "joinsGroupFormations", Boolean.TRUE);

        // === 攻击参数 ===
        unit.ea = reader.a("attack", "turretSize", 1.0f) * unit.aG;
        unit.eb = reader.a("attack", "turretTurnSpeed", 8.0f);
        unit.dL = reader.a("attack", "turretRotateWithBody", Boolean.TRUE);

        String attackMovement = reader.a("attack", "attackMovement", "normal");
        unit.ec = b421.a;
        if (attackMovement.equalsIgnoreCase("normal"))   unit.ec = b421.a;
        if (attackMovement.equalsIgnoreCase("strafing")) unit.ec = b421.b;
        if (attackMovement.equalsIgnoreCase("bomber"))   unit.ec = b421.d;

        unit.ef = reader.a("attack", "disablePassiveTargeting", Boolean.FALSE);
        unit.eg = reader.a("attack", "stopTargetingAfterFiring", Boolean.FALSE);
        unit.eh = reader.a("attack", "turretMultiTargeting", Boolean.FALSE);
        unit.ed = reader.a("attack", "attackMovementSpeed", 1.0f);
        unit.ee = reader.a("attack", "attackMovementSpread", 1.0f);

        Float maxAttackRange = reader.a("attack", "maxAttackRange", (Float) null);
        boolean hasMaxAttackRange;
        if (maxAttackRange != null) {
            unit.cL.i = maxAttackRange * unit.aG;
            hasMaxAttackRange = true;
        } else {
            unit.cL.i = 100.0f * unit.aG;
            hasMaxAttackRange = false;
        }

        unit.ez = reader.a("attack", "aimOffsetSpread", 0.6f);
        unit.dM = reader.b("attack", "shootDelay", 50.0f);
        unit.cL.e = reader.a("attack", "shootDelayMultiplier", 1.0f);
        unit.cL.f = reader.a("attack", "shootDamageMultiplier", 1.0f);
        unit.dK = reader.a("attack", "showRangeUIGuide", (Boolean) null);
        unit.eF = reader.a("attack", "isMelee", Boolean.FALSE);
        unit.eG = 0.0f;

        Float meleeDist = reader.a("attack", "meleeEngangementDistance", (Float) null);
        if (unit.eF) {
            unit.eG = (meleeDist != null) ? meleeDist : 250.0f;
        } else if (meleeDist != null) {
            throw new RuntimeException("[attack]meleeEngangementDistance can only be used with isMelee:true");
        }

        ag500.a(tStart, ah501.k);

        // === 投射物 ===
        for (String projKey : reader.b("projectile_")) {
            String projName = projKey.substring(11);
            if (unit.e(projName) != null) {
                throw new RuntimeException("Two projectiles found with the same name:" + projName);
            }
            ca568 proj = new ca568();
            proj.bh = projName;
            proj.bj = unit;
            ca568.a(proj, unit, reader, projKey);
        }

        int projCount = Math.max(1, unit.fT.size());
        unit.fR = new ca568[projCount];
        for (int i = 0; i < unit.fT.size(); i++) {
            ca568 p = unit.fT.get(i);
            p.bi = i;
            unit.fR[i] = p;
        }
        for (ca568 p : unit.fR) {
            if (p == null) continue;
            p.w  *= unit.aG;
            p.au *= unit.aG;
            p.aF *= unit.aG;
        }

        if (unit.fR[0] == null) {
            ca568 p = new ca568();
            p.bi = 0;
            p.bh = "1";
            p.b  = 10;
            unit.fT.add(p);
            unit.fR[0] = p;
        }

        // === 炮塔 ===
        List<cg574> turrets = unit.fS;
        for (String turretKey : reader.b("turret_")) {
            String turretName = turretKey.substring(7);
            if (unit.d(turretName) != null) {
                throw new RuntimeException("Two turrets found with the same name:" + turretName);
            }
            cg574 t = new cg574();
            t.a = turretName;
            t.b = turretKey;
            turrets.add(t);
        }
        for (cg574 t : turrets) {
            cg574.a(t, unit, reader, t.b);
        }

        if (turrets.isEmpty()) {
            cg574 t = new cg574();
            t.f = 0.0f;
            t.g = 0.0f;
            t.a = "1";
            t.m = unit.dM;
            turrets.add(t);
        }

        for (int i = turrets.size() - 1; i >= 0; i--) {
            if (turrets.get(i) != null) turrets.get(i).e = i;
        }
        for (int i = turrets.size() - 1; i >= 0; i--) {
            cg574 t = turrets.get(i);
            if (t == null) continue;
            if (t.y != null) {
                t.w = t.y.e;
                if (t.y.y != null) {
                    throw new RuntimeException(t.a + ": Turret can not be attached to turret that is also attached to a turret");
                }
            }
            if (t.z != null) t.x = t.z.e;
            if (t.W < 0) t.W = t.V;
        }

        if (turrets.size() > 31) throw new RuntimeException("Turret max count per unit is: 31");

        unit.fQ = turrets.toArray(new cg574[0]);
        unit.dJ = unit.cL.i;

        float limitingRange = -1.0f;
        boolean allTurretsLimitRange = true;
        boolean hasExplicitLimit = false;

        for (cg574 t : turrets) {
            t.X *= unit.aG;
            t.f *= unit.aG;
            t.g *= unit.aG;
            t.Y *= unit.aG;
            t.Z *= unit.aG;

            boolean addLimit = false;

            if (t.B) {
                if (t.ab >= 99999.0f) {
                    allTurretsLimitRange = false;
                } else {
                    hasExplicitLimit = true;
                    if (unit.dJ > t.ab) unit.dJ = t.ab;
                    if (limitingRange < t.ab) limitingRange = t.ab;

                    if (Math.abs(t.ab - unit.cL.i) > 5.0f) {
                        boolean exists = false;
                        for (y622 l : unit.o) {
                            if (Math.abs(t.ab - l.a) < 5.0f) { exists = true; break; }
                        }
                        if (!exists) addLimit = true;
                    }
                }
                if (t.ac != null && t.ac) {
                    y622 l = new y622();
                    l.a = t.ab;
                    unit.o.add(l);
                }
            }

            if (addLimit) {
                y622 l = new y622();
                l.a = t.ab;
                unit.o.add(l);
            }
        }

        if (hasExplicitLimit && allTurretsLimitRange) {
            if (!hasMaxAttackRange) {
                unit.cL.i = limitingRange;
            } else if (limitingRange < unit.cL.i) {
                throw new RuntimeException("limitingRange as been applied to all turrets but is less than maxAttackRange ...");
            }
        }

        String mainTurret = reader.a("attack", "setMainTurretAs", (String) null);
        if (mainTurret != null) {
            unit.dF = unit.d(mainTurret);
            if (unit.dF == null) {
                throw new RuntimeException("[attack] Could not find setMainTurretAs with name: " + mainTurret);
            }
        } else {
            unit.dF = unit.d("1");
            if (unit.dF == null) unit.dF = unit.fQ[0];
        }
        unit.dG = unit.dF.e;

        ag500.a(tStart, ah501.l);

        // === 动作定义 ===
        long tAction = cf910.a();
        if (reader.k("core", "action_")) {
            for (int i = 0; i <= 50; i++) {
                ag500.a(unit, reader, "core", "action_" + i + "_", String.valueOf(i), false, false);
            }
        }
        for (String actionKey : reader.b("action_")) {
            String actionName = actionKey.substring(7);
            if (unit.f(actionName) != null) {
                throw new RuntimeException("Two actions found with the same name:" + actionName);
            }
            ag500.a(unit, reader, actionKey, "", actionName, true, false);
        }
        for (String hiddenKey : reader.b("hiddenAction_")) {
            String hiddenName = hiddenKey.substring(13);
            if (unit.f(hiddenName) != null) {
                throw new RuntimeException("Two actions found with the same name:" + hiddenName);
            }
            ag500.a(unit, reader, hiddenKey, "", hiddenName, true, true);
        }
        ag500.a(tAction, ah501.j);

        // === 腿/手臂 ===
        List<bt554> legs = new ArrayList<>();
        List<bt554> arms = new ArrayList<>();
        for (int pass = 0; pass <= 1; pass++) {
            boolean isLeg = (pass == 0);
            List<bt554> target = isLeg ? legs : arms;
            for (int i = 1; i < 21; i++) {
                String partKey = (isLeg ? "leg_" : "arm_") + i;
                if (reader.d(partKey)) {
                    bt554 part = new bt554();
                    bt554.a(part, unit, reader, partKey, isLeg, target);
                    target.add(part);
                } else {
                    target.add(null);
                }
            }
        }

        List<bt554> allParts = new ArrayList<>();
        for (bt554 l : legs) if (l != null) allParts.add(l);
        for (bt554 a : arms) if (a != null) allParts.add(a);
        for (int i = allParts.size() - 1; i >= 0; i--) allParts.get(i).a = i;
        unit.ax = allParts.toArray(new bt554[0]);
        if (unit.ax.length > 0) unit.a(b.h527.a);

        for (f603 anim : unit.dr) anim.a(unit);

        ag500.b(unit);

        // === 死亡时对自身开火 ===
        String fireTurret = reader.a("core", "fireTurretXAtSelfOnDeath", (String) null);
        if (fireTurret != null && !fireTurret.equalsIgnoreCase("NONE")) {
            cg574 t = unit.d(fireTurret);
            if (t == null) {
                throw new RuntimeException("Cannot find turret:" + fireTurret + " for [core]fireTurretXAtSelfOnDeath");
            }
            unit.bB = t.e;
        }

        b.c522.a(unit, reader);

        unit.bj = reader.a("attack", "dieOnAttack", Boolean.FALSE);
        unit.bl = reader.a("attack", "removeOnAttack", Boolean.FALSE);
        unit.ep = reader.b("attack", "canAttack");

        if (unit.ep) {
            unit.eq = reader.a(unit, "attack", "canAttackFlyingUnits");
            unit.er = reader.a(unit, "attack", "canAttackLandUnits");
            unit.es = reader.a(unit, "attack", "canAttackUnderwaterUnits");
        } else {
            unit.eq = reader.a(unit, "attack", "canAttackFlyingUnits",    LogicBoolean.falseBoolean);
            unit.er = reader.a(unit, "attack", "canAttackLandUnits",      LogicBoolean.falseBoolean);
            unit.es = reader.a(unit, "attack", "canAttackUnderwaterUnits", LogicBoolean.falseBoolean);
        }

        unit.et = reader.a(unit, "attack", "canAttackNotTouchingWaterUnits", (LogicBoolean) null);
        if (LogicBoolean.isStaticTrue(unit.et)) unit.et = null;

        unit.ev = reader.a("attack", "canOnlyAttackUnitsWithTags", (h605) null);
        unit.ew = reader.a("attack", "canOnlyAttackUnitsWithoutTags", (h605) null);
        if (unit.ev != null || unit.ew != null) unit.eu = true;

        boolean anyOnly = false;
        boolean noneOnly = false;
        for (cg574 t : turrets) {
            if (t.O != null && t.O.a(unit.ev)) t.O = null;
            if (t.P != null && t.P.a(unit.ew)) t.P = null;
            if (t.B) {
                if (t.O != null || t.P != null) anyOnly = true;
                else                            noneOnly = true;
            }
        }
        if (anyOnly && !noneOnly) {
            unit.ex = true;
            unit.eu = true;
        }

        unit.ey = reader.a("attack", "isFixedFiring", Boolean.FALSE);
        unit.fM = reader.a("ai", "lowPriorityTargetForOtherUnits", Boolean.FALSE);
        unit.fN = reader.a("ai", "notPassivelyTargetedByOtherUnits", Boolean.FALSE);
        if (unit.ep && unit.fN) {
            throw new RuntimeException("[ai]notPassivelyTargetedByOtherUnits is cannot currently supported on units that can attack");
        }

        unit.fv = reader.a("ai", "aiTags", (h605) null);
        unit.fw = reader.a("ai", "disableUse", Boolean.FALSE);
        unit.fz = reader.a("ai", "buildPriority", 0.05f);
        unit.fA = reader.b("ai", "recommendedInEachBaseNum", 0);
        unit.fB = reader.a("ai", "recommendedInEachBasePriorityIfUnmet", 0.5f);
        unit.fy = reader.b("ai", "maxEachBase", Math.max(2, unit.fA));
        unit.fx = reader.b("ai", "maxGlobal", -1);

        if (unit.fy < unit.fA) {
            throw new RuntimeException("[ai]recommendedInEachBaseNum is smaller than maxEachBase");
        }
        if (!unit.aH) {
            if (reader.m("ai", "recommendedInEachBaseNum")) {
                throw new RuntimeException("[ai]recommendedInEachBaseNum currently only applies to buildings");
            }
            if (reader.m("ai", "recommendedInEachBasePriorityIfUnmet")) {
                throw new RuntimeException("[ai]recommendedInEachBasePriorityIfUnmet currently only applies to buildings");
            }
        }

        unit.fE = reader.b("ai", "whenUsingAsHarvester_recommendedInEachBase", -1);
        unit.fF = reader.b("ai", "whenUsingAsHarvester_recommendedGlobal", -1);
        unit.fG = reader.a("ai", "whenUsingAsHarvester_includeOtherHarvesterCounts", Boolean.FALSE);
        unit.fH = reader.a("ai", "onlyUseAsHarvester_ifBaseHasUnitTagged", (h605) null);
        unit.fC = reader.a("ai", "nonInBaseExtraPriority", 0.04f);
        unit.fC = reader.a("ai", "noneInBaseExtraPriority", unit.fC);
        unit.fD = reader.a("ai", "nonGlobalExtraPriority", 0.0f);
        unit.fD = reader.a("ai", "noneGlobalExtraPriority", unit.fD);
        unit.fI = reader.a("ai", "upgradedFrom", (String) null);

        Float upgradePriority = reader.a("ai", "ai_upgradePriority", (Float) null);
        if (upgradePriority != null && upgradePriority != -1.0f) {
            if (upgradePriority >= 0.0f && upgradePriority <= 1.0f) {
                unit.fK = upgradePriority * 100.0f;
            } else {
                throw new RuntimeException("[ai]ai_upgradePriority: " + unit.fK + " must be between 0-1 or -1 for default");
            }
        }

        // === 炮塔 UI 提示 ===
        if (unit.ep) {
            for (int i = 0; i < unit.fQ.length; i++) {
                cg574 t = unit.fQ[i];
                if (t.B && t.ao == null && unit.w) {
                    if (t.m > 140.0f) {
                        if (unit.em == -1 || unit.fQ[unit.em].m < t.m) unit.em = i;
                    }
                    if (t.n > 80.0f) unit.en = i;
                }
            }
        }

        // === 推断绘制层 ===
        if (unit.cI == -2) {
            if (unit.fg == cg456.d) {
                unit.cI = 5;
            } else if (unit.j()) {
                unit.cI = (unit.al != null) ? 3 : 2;
            } else if (unit.cL.q < -2.0f) {
                unit.cI = 1;
            } else if (unit.eM > 0) {
                unit.cI = 3;
            } else {
                unit.cI = 2;
            }
        }

        // === 自动检查 ===
        if (unit.fW.size() > 0) {
            unit.fX = true;
            List<r615> fast   = new ArrayList<>();
            List<r615> medium = new ArrayList<>();
            List<r615> slow   = new ArrayList<>();
            for (r615 r : unit.fW) {
                if (r.c == s616.a)      fast.add(r);
                else if (r.c == s616.b) medium.add(r);
                else if (r.c == s616.c) slow.add(r);
                else throw new RuntimeException("Unknown check rate:" + r.c);
            }
            unit.fY = fast.toArray(new r615[0]);
            unit.fZ = medium.toArray(new r615[0]);
            unit.ga = slow.toArray(new r615[0]);
        }

        if (unit.gb.a > 0) {
            for (t617 t : unit.gb) t.a(unit);
            unit.gb.clear();
        }

        ag500.a(tStart, ah501.m);
        reader.a();

        // === 重复键警告 ===
        for (af1326 dup : reader.e) {
            String key = dup.a();
            if (key != null && (key.startsWith("hiddenAction_") || key.startsWith("canBuild_"))) {
                throw new RuntimeException("Error [" + key + "]" + dup.b() + " has been repeated");
            }
            String msg = "Repeated key " + dup;
            unit.o(msg);
            if (unit.R > 0) {
                k1104.d("Converting warning to error (meta.strictLevel=" + unit.R + ")");
                throw new ch575(msg);
            }
        }

        // === 无法解析的行 ===
        for (String line : reader.f) {
            String msg = "Skipping line, unexpected format: '" + line + "'";
            unit.o(msg);
            if (unit.R > 0) {
                k1104.d("Converting warning to error (meta.strictLevel=" + unit.R + ")");
                throw new ch575(msg);
            }
        }

        if (b1019Var != null) b1019Var.C++;

        synchronized (l609.c) {
            l609.c.add(unit);
        }

        ag500.a(tStart, ah501.n);
        return unit;

    } catch (RuntimeException e) {
        ag500.a(name, e, b1019Var);
        return null;
    } catch (OutOfMemoryError e) {
        ag500.l++;
        ag500.a(name, new RuntimeException(e), b1019Var);
        return null;
    } catch (ch575 e) {
        ag500.a(name, e, b1019Var);
        return null;
    }
}
