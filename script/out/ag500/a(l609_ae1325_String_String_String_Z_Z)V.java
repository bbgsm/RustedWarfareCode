package com.corrodinggames.rts.game.units.custom;

import android.graphics.Color;
import android.graphics.PointF;

import com.corrodinggames.rts.game.units.a.t377;
import com.corrodinggames.rts.game.units.a.u378;
import com.corrodinggames.rts.game.units.cg456;
import com.corrodinggames.rts.game.units.custom.a.a.a471;
import com.corrodinggames.rts.game.units.custom.a.a.o485;
import com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean;
import com.corrodinggames.rts.game.units.custom.logicBooleans.UnitReference;
import com.corrodinggames.rts.gameFramework.m.e1216;

import java.util.ArrayList;

/**
 * 反编译自 smali 的辅助方法。
 * 原始签名：
 * private static a(l609, ae1325, String, String, String, boolean, boolean)
 */
private static void a(l609 p0, ae1325 p1, String p2, String p3, String p4,
                      boolean p5, boolean p6) {
    // ========== 创建 action 对象 ==========
    d489 v13 = new d489();

    // ========== 查询各类字符串/数值参数 ==========
    String v5 = p1.a(p2, p3 + "convertTo", null);
    String v7 = p1.a(p2, p3 + "whenBuilding_temporarilyConvertTo", null);
    bm547[] v14 = as512.a(p1, p2, p3 + "whenBuilding_temporarilyConvertTo_keepFields");
    Float v15 = p1.a(p2, p3 + "addEnergy", (Float) null);

    b579 v16 = b579.a(p0, p1, p2, p3 + "addResources", true);
    p0.a(v16);
    b579 v17 = b579.a(p0, p1, p2, p3 + "addResourcesScaledByAIHandicaps", true);
    p0.a(v17);

    String v6 = p1.a(p2, p3 + "fireTurretXAtGround", (String) null);
    LogicBoolean v18 = p1.b(p0, p2, p3 + "alsoTriggerOrQueueActionWithTarget");
    LogicBoolean v19 = p1.a(p0, p2, p3 + "alsoTriggerOrQueueActionConditional", (LogicBoolean) null);
    String v20 = p1.a(p2, p3 + "alsoTriggerAction", (String) null);
    LogicBoolean v21 = p1.c(p0, p2, p3 + "alsoTriggerActionRepeat");
    String v22 = p1.a(p2, p3 + "alsoQueueAction", (String) null);
    String v23 = p1.a(p2, p3 + "spawnEffects", (String) null);
    String v24 = p1.a(p2, p3 + "spawnEffectsOnQueue", (String) null);
    String v25 = p1.a(p2, p3 + "playSoundAtUnit", (String) null);
    String v26 = p1.a(p2, p3 + "playSoundGlobally", (String) null);
    String v27 = p1.a(p2, p3 + "playSoundToPlayer", (String) null);
    String v28 = p1.a(p2, p3 + "playSoundToPlayerOnQueue", (String) null);

    // ========== 运输相关 ==========
    ci576 v4 = ci576.a(p0, p1, p2, p3 + "addUnitsIntoTransport");
    int v8 = p1.b(p2, p3 + "deleteNumUnitsFromTransport", Integer.valueOf(0)).intValue();
    h605 v9 = g604.a(
            p1.a(p2, "deleteNumUnitsFromTransport_onlyWithTags", (String) null),
            (h605) null);
    boolean v10 = p1.a(p2, p3 + "startUnloadingTransport", Boolean.FALSE).booleanValue();
    boolean v11 = p1.a(p2, p3 + "forceUnloadTransportNow", Boolean.FALSE).booleanValue();
    int v12 = p1.b(p2, p3 + "forceUnloadTransportNow_onlyOnSlot", Integer.valueOf(-1)).intValue();
    LogicBoolean v29 = p1.b(p0, p2, p3 + "transportTargetNow");

    if (v12 != -1 && !v11) {
        throw new ch575("forceUnloadTransportNow_onlyOnSlot expects forceUnloadTransportNow");
    }

    if (v4.a() || v8 > 0 || v10 || v11 || v29 != null) {
        o485 v30 = new o485();
        if (!v4.a()) {
            v30.a = v4;
        }
        if (v8 > 0) {
            v30.b = v8;
            v30.c = v9;
        }
        v30.d = v10;
        v30.e = v11;
        v30.f = v12;
        v30.g = v29;
        v13.ac.add(v30);
    }

    // ========== 各类静态解析器 ==========
    e475.a(p0, p1, p2, p3, v13);
    h478.a(p0, p1, p2, p3, v13);

    // ========== resourceAmount ==========
    a589 v4ra = p1.d(p0, p2, p3 + "resourceAmount");
    if (v4ra != null) {
        a471 v8a = new a471();
        v8a.a = v4ra;
        v8a.b = p1.a(p2, p3 + "resourceAmount_setValue", Double.NaN);
        v8a.c = p1.d(p0, p2, p3 + "resourceAmount_addOtherResource");
        v8a.d = p1.a(p2, p3 + "resourceAmount_multiplyBy", Float.valueOf(1.0f)).floatValue();
        v13.ac.add(v8a);
    }

    c580 v4c = c580.a(p0, p1, p2, p3 + "addResourcesWithLogic");
    c580 v8c = c580.a(p0, p1, p2, p3 + "setResourcesWithLogic");
    if (v4c != null || v8c != null) {
        a471 v9c = new a471();
        v9c.f = v8c;
        v9c.e = v4c;
        v13.ac.add(v9c);
    }

    k481.a(p0, p1, p2, p3, v13);
    b472.a(p0, p1, p2, p3, v13);
    d474.a(p0, p1, p2, p3, v13);
    l482.a(p1, p2, p3, v13);
    g477.a(p0, p1, p2, v13);
    m483.a(p0, p1, p2, p3, v13);
    f476.a(p0, p1, p2, v13);
    j480.a(p0, p1, p2, p3, v13);
    i479.a(p0, p1, p2, p3, v13);

    LogicBoolean v29Reset = p1.a(p0, p2, p3 + "resetCustomTimer", (LogicBoolean) null);

    // ========== 判断是否有可见内容 ==========
    boolean v4flag = false;
    if (p5) {
        v4flag = true;
    } else {
        if (v5 != null || v7 != null || v15 != null || v6 != null) v4flag = true;
        if (v16.d() || v17.d()) v4flag = true;
        if (v20 != null || v22 != null || v23 != null) v4flag = true;
        if (v25 != null || v26 != null || v27 != null || v28 != null) v4flag = true;
        if (v13.ac.size() > 0) v4flag = true;
    }

    if (!v4flag) {
        return;
    }

    // ========== 处理 "NONE" 标记 ==========
    String v10n;
    if ("NONE".equalsIgnoreCase(v5)) {
        v10n = null;
    } else {
        v10n = v5;
    }

    String v12n;
    if ("NONE".equalsIgnoreCase(v7)) {
        v12n = null;
    } else {
        v12n = v7;
    }

    String v11n;
    if (v6 != null && "NONE".equalsIgnoreCase(v6)) {
        v11n = null;
    } else {
        v11n = v6;
    }

    // ========== ID 校验 ==========
    v13.a = p0.gh.size();
    String v5Id = p1.a(p2, p3 + "id", (String) null);
    if (v5Id != null) {
        v13.b = "c" + v5Id;

        if (v13.b.contains(" ")) {
            throw new RuntimeException("[" + p2 + "]id cannot contain space");
        }
        if (v13.b.contains(",")) {
            throw new RuntimeException("[" + p2 + "]id cannot contain ,");
        }
        if (v13.b.contains(":")) {
            throw new RuntimeException("[" + p2 + "]id cannot contain :");
        }
        if (v13.b.contains("(")) {
            throw new RuntimeException("[" + p2 + "]id cannot contain (");
        }
        if (v13.b.contains("\u0000")) {
            throw new RuntimeException("[" + p2 + "]id cannot contain null");
        }
        if (v13.b.length() > 15) {
            throw new RuntimeException("[" + p2 + "]id cannot be longer than 15 characters");
        }

        for (Object obj : p0.gh) {
            d489 existing = (d489) obj;
            if (v13.b.equalsIgnoreCase(existing.b)) {
                throw new RuntimeException("[" + p2 + "]id more than one action exists with id: " + v5Id);
            }
        }
    }

    // ========== 基本属性 ==========
    v13.c = p4;
    v13.o = p1.a(p2, p3 + "extraLagHidingInUI", Boolean.FALSE).booleanValue();
    v13.s = g604.a(p1.a(p2, p3 + "tags", (String) null));
    v13.p = p1.a(p2, p3 + "pos", Float.valueOf(999.0f)).floatValue();
    v13.q = b579.a(p0, p1, p2, p3 + "price", true);
    v13.r = b579.b(p0, p1, p2, p3 + "streamingCost");

    boolean switchPrice = p1.a(p2, p3 + "switchPriceWithStreamingCost", Boolean.FALSE).booleanValue();
    if (switchPrice) {
        if (v13.r != null) {
            throw new RuntimeException("[" + p2 + "]streamingCost and switchPriceWithStreamingCost=true cannot be used at the same time");
        }
        v13.r = b579.b(p0, p1, p2, p3 + "price");
        v13.q = b579.a;
    }

    p0.a(v13.q);
    if (v13.r != null) {
        p0.a(v13.r);
    }

    // ========== 队列优先级等 ==========
    v13.K = p1.a(p2, p3 + "highPriorityQueue", Boolean.FALSE).booleanValue();
    v13.L = p1.a(p2, p3 + "onlyOneUnitAtATime", Boolean.FALSE).booleanValue();
    v13.M = p1.a(p2, p3 + "canPlayerCancel", Boolean.TRUE).booleanValue();
    v13.O = p1.a(p2, p3 + "alwaysSinglePress", Boolean.FALSE).booleanValue();
    v13.N = p1.a(p2, p3 + "allowMultipleInQueue", Boolean.TRUE).booleanValue();

    if (!v13.M && !v13.N && v13.O) {
        v13.P = true;
    }

    v13.j = v13.M ? u378.c : u378.a;

    // ========== 条件/可见性 ==========
    v13.t = p1.a(p0, p2, p3 + "requireConditional", (LogicBoolean) null);
    v13.u = p1.a(p0, p2, p3 + "isActive", (LogicBoolean) null);
    v13.v = p1.a(p0, p2, p3 + "isVisible", (LogicBoolean) null);
    v13.x = p1.a(p2, p3 + "isAlsoViewableByEnemies", Boolean.FALSE).booleanValue();
    v13.w = p1.a(p2, p3 + "isAlsoViewableByAllies", Boolean.valueOf(v13.x)).booleanValue();

    if (p6) {
        if (v13.v != null && !LogicBoolean.isStaticFalse(v13.v)) {
            throw new RuntimeException("[" + p2 + "]isVisible doesn't make sense to use in hidden actions");
        }
        v13.v = LogicBoolean.falseBoolean;
    }

    // ========== 锁定条件 ==========
    v13.z = p1.a(p0, p2, p3 + "isLocked", (LogicBoolean) null);
    v13.A = a(p0, p1, p2, p3 + "isLockedMessage", (String) null);
    if (v13.z != null) v13.y = true;
    if (v13.z == LogicBoolean.falseBoolean) v13.z = null;

    v13.B = p1.a(p0, p2, p3 + "isLockedAlt", (LogicBoolean) null);
    v13.C = a(p0, p1, p2, p3 + "isLockedAltMessage", (String) null);
    if (v13.B != null) v13.y = true;
    if (v13.B == LogicBoolean.falseBoolean) v13.B = null;

    v13.D = p1.a(p0, p2, p3 + "isLockedAlt2", (LogicBoolean) null);
    v13.E = a(p0, p1, p2, p3 + "isLockedAlt2Message", (String) null);
    if (v13.D != null) v13.y = true;
    if (v13.D == LogicBoolean.falseBoolean) v13.D = null;

    // ========== AI 相关 ==========
    v13.F = LogicBoolean.create(p0, p1.a(p2, p3 + "ai_isHighPriority", (String) null), (LogicBoolean) null);
    if (v13.F == LogicBoolean.falseBoolean) v13.F = null;
    if (v13.F != null) p0.fJ = true;

    v13.G = p1.a(p0, p2, p3 + "ai_isDisabled", LogicBoolean.falseBoolean);

    v13.aN = (e490) p1.a(p2, p3 + "aiUse", v13.aN, e490.class);

    // ========== GUI 建造 ==========
    String v4gui = p1.a(p2, p3 + "guiBuildUnit", (String) null);
    v13.J = p0.a(v4gui, p3 + "guiBuildUnit", p2);
    if (v13.J != null) {
        v13.j = u378.b;
        if (v10n != null) {
            throw new RuntimeException("[" + p2 + "]guiBuildUnit and convertTo cannot currently be used the same action");
        }
    }

    v13.I = p0.a(
            p1.a(p2, p3 + "ai_considerSameAsBuilding", (String) null),
            p3 + "ai_considerSameAsBuilding", p2);

    v13.aF = p1.a(p0, p2, p3 + "isGuiBlinking", (LogicBoolean) null);

    // ========== 图标 ==========
    v13.ay = a(p0.F,
            p1.a(p2, p3 + "iconImage", "NONE"),
            p0.ab, p0, p2, p3 + "iconImage");

    v13.aB = p1.a(p0, p2, p3 + "iconExtraIsVisible", (LogicBoolean) null);
    if (v13.aB == LogicBoolean.trueBoolean) v13.aB = null;

    v13.az = p0.a(p1, p2, p3 + "iconExtraImage");
    v13.aA = p1.a(p2, p3 + "iconExtraColor",
            Integer.valueOf(Color.argb(100, 255, 255, 255))).intValue();

    v13.aC = UnitReference.parseUnitTypeOrReferenceFromConf(p0, p1, p2,
            p3 + "unitShownInUI", (UnitReference.UnitReferenceOrUnitType) null);
    if (v13.aC != null && v13.ay != null) {
        throw new RuntimeException("[" + p2 + "]unitShownInUI and iconImage: doesn't make sense to use both at the same time");
    }

    v13.aD = p1.a(p2, p3 + "unitShownInUIWithHpBar", Boolean.TRUE).booleanValue();
    v13.aE = p1.a(p2, p3 + "unitShownInUIWithProgressBar", Boolean.TRUE).booleanValue();

    v13.aG = (t377) p1.a(p2, p3 + "displayType", v13.aG, t377.class);
    v13.aI = p1.a(p2, p3 + "displayRemainingStockpile", Boolean.FALSE).booleanValue();

    // ========== 文本 / 描述 ==========
    v13.d = a(p0, p1, p2, p3 + "text", "");
    v13.e = UnitReference.parseUnitTypeOrReferenceFromConf(p0, p1, p2,
            p3 + "textAddUnitName", (UnitReference.UnitReferenceOrUnitType) null);
    v13.h = a(p1, p2, p3 + "textPostFix");

    v13.f = UnitReference.parseUnitTypeOrReferenceFromConf(p0, p1, p2,
            p3 + "descriptionAddFromUnit", (UnitReference.UnitReferenceOrUnitType) null);
    v13.g = UnitReference.parseUnitTypeOrReferenceFromConf(p0, p1, p2,
            p3 + "descriptionAddUnitStats", (UnitReference.UnitReferenceOrUnitType) null);
    v13.i = a(p0, p1, p2, p3 + "description", "");

    // ========== 建造参数 ==========
    v13.S = p1.d(p2, p3 + "buildSpeed", Float.valueOf(v13.S)).floatValue();
    if (v13.S == 0f) v13.S = 50.0f;
    v13.T = p1.a(p2, p3 + "buildSpeed_ignoreFactorySpeedModifiers", Boolean.valueOf(v13.T)).booleanValue();

    // ========== 建造行为 ==========
    boolean v4b = false;

    v13.U = p1.a(p2, p3 + "whenBuilding_cannotMove", Boolean.valueOf(v13.U)).booleanValue();
    v13.V = p0.a(p1.a(p2, p3 + "whenBuilding_playAnimation", (String) null), v13.V);
    v13.W = p1.a(p2, p3 + "whenBuilding_rotateTo", v13.W);
    v13.X = p1.a(p2, p3 + "whenBuilding_rotateTo_orBackwards", Boolean.valueOf(v13.X)).booleanValue();
    v13.Y = p1.a(p2, p3 + "whenBuilding_rotateTo_waitTillRotated", Boolean.valueOf(v13.Y)).booleanValue();
    v13.Z = p1.a(p2, p3 + "whenBuilding_rotateTo_aimAtActionTarget", Boolean.valueOf(v13.Z)).booleanValue();

    String rotateTurretX = p1.a(p2, p3 + "whenBuilding_rotateTo_rotateTurretX", (String) null);
    if (rotateTurretX != null) {
        v13.aa = p0.d(rotateTurretX);
        if (v13.aa == null) {
            throw new RuntimeException("Cannot find turret:" + rotateTurretX + " for [" + p2 + "]" + p3 + "whenBuilding_rotateTo_rotateTurretX");
        }
        if (v13.X) {
            throw new RuntimeException("whenBuilding_rotateTo_orBackwards:true not supported with [" + p2 + "]" + p3 + "whenBuilding_rotateTo_rotateTurretX");
        }
    }

    if (v13.Z && v13.W == null) {
        v13.W = Float.valueOf(0f);
    }

    v13.ab = p1.a(p0, p2, p3 + "whenBuilding_triggerAction", (u618) null);
    v13.Q = p1.a(p2, p3 + "convertTo_keepCurrentTags", Boolean.valueOf(v13.Q)).booleanValue();
    v13.R = as512.a(p1, p2, p3 + "convertTo_keepCurrentFields");

    if (v12n != null && !"NONE".equalsIgnoreCase(v12n)) {
        v13.l = p0.a(v12n, p3 + "whenBuilding_temporarilyConvertTo", p2);
        v13.m = v14;
        v4b = true;
    }

    if (v13.U || v13.V != null || v13.W != null || v13.l != null || v13.ab != null) {
        p0.bg = true;
    }

    v13.aM = f491.b;

    // ========== convertTo ==========
    if (v10n != null && !"NONE".equalsIgnoreCase(v10n)) {
        v13.H = p0.a(v10n, p3 + "convertTo", p2);
        v13.k = v10n;
        v13.N = false;
        v4b = true;
    }

    if (v15 != null) {
        v13.ad = v15;
        v4b = true;
    }

    if (v16 != null && v16.d()) {
        v13.ae = v16;
        v4b = true;
    }

    if (v17 != null && v17.d()) {
        v13.af = v17;
        v4b = true;
    }

    // ========== 炮塔对地射击 ==========
    v13.ah = p1.e(p2, p3 + "fireTurretXAtGround_withOffset");
    v13.ai = p1.b(p0, p2, p3 + "fireTurretXAtGround_withTarget");
    v13.ak = p1.b(p2, p3 + "fireTurretXAtGround_count", Integer.valueOf(1)).intValue();
    v13.am = b.c522.a(p0, p1.a(p2, "fireTurretXAtGround_showGuideDecals", (String) null));

    if (v13.ai != null && v13.ah == null) {
        v13.ah = new PointF(0f, 0f);
    }

    String projectile = p1.a(p2, p3 + "fireTurretXAtGround_withProjectile", (String) null);
    if (projectile != null) {
        v13.aj = p0.e(projectile);
        if (v13.aj == null) {
            throw new RuntimeException("Cannot find projectile:" + projectile + " for [" + p2 + "]" + p3 + "fireTurretXAtGround_withProjectile");
        }
    }

    String overTile = p1.a(p2, p3 + "fireTurretXAtGround_onlyOverPassableTileOf", (String) null);
    if (overTile != null) {
        v13.al = cg456.a(overTile, p3 + "fireTurretXAtGround_overPassableTileOf");
    }

    if (v11n != null) {
        cg574 turret = p0.d(v11n);
        if (turret == null) {
            throw new RuntimeException("Cannot find turret:" + v11n + " for [" + p2 + "]" + p3 + "fireTurretXAtGround");
        }
        v13.ag = Integer.valueOf(turret.e);
        if (v13.ah == null) {
            v13.j = u378.g;
            if (v13.J != null) {
                throw new RuntimeException("[" + p2 + "]guiBuildUnit and fireTurretXAtGround (without withOffset) cannot be used in the same action");
            }
        }
        v4b = true;
    }

    v13.an = v18;
    v13.ao = v19;

    // ========== alsoTriggerAction ==========
    if (v20 != null && !"NONE".equalsIgnoreCase(v20)) {
        v13.ap = p0.b(v20, "alsoTriggerAction", p2);
        if (v21 != null) {
            if (LogicBoolean.isStaticNumber(v21)) {
                float num = LogicBoolean.getKnownStaticNumber(v21);
                if (num == 0f) {
                    v13.ap = null;
                } else if (num != 1.0f) {
                    v13.ar = v21;
                }
            } else {
                v13.ar = v21;
            }
        }
        v4b = true;
    }

    // ========== alsoQueueAction ==========
    if (v22 != null && !"NONE".equalsIgnoreCase(v22)) {
        v13.aq = p0.b(v22, "alsoQueueAction", p2);
        v4b = true;
    }

    // ========== 效果 / 音效 ==========
    if (v23 != null) {
        v13.as = p0.a(v23, (z623) null);
        v4b = true;
    }
    if (v24 != null) {
        v13.at = p0.a(v24, (z623) null);
        v4b = true;
    }
    if (v25 != null) {
        v13.au = ce572.a(p0, v25, (ce572) null);
        v4b = true;
    }
    if (v26 != null) {
        v13.av = ce572.a(p0, v26, (ce572) null);
        v4b = true;
    }
    if (v27 != null) {
        v13.aw = ce572.a(p0, v27, (ce572) null);
        v4b = true;
    }
    if (v28 != null) {
        v13.ax = ce572.a(p0, v28, (ce572) null);
        v4b = true;
    }

    if (v29Reset != null) {
        v13.aH = v29Reset;
        v4b = true;
    }

    boolean v9n;
    if (v13.ac.size() > 0) {
        v4b = true;
        v9n = true;
    } else {
        v9n = v4b;
    }

    // ========== autoTriggerOnEvent ==========
    String autoTriggerOnEvent = p1.a(p2, p3 + "autoTriggerOnEvent", (String) null);
    Integer recursionLimit = p1.b(p2, p3 + "autoTriggerOnEventRecursionLimit", (Integer) null);

    if (recursionLimit != null) {
        if (recursionLimit.intValue() < 0) {
            throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEventRecursionLimit: Cannot be < 0");
        }
        if (recursionLimit.intValue() > 100) {
            throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEventRecursionLimit: Cannot be > 100");
        }
    }

    ArrayList<ae498> autoTriggerList = null;
    if (autoTriggerOnEvent != null) {
        ArrayList<ai502> parsedList = a(p2, p3 + "autoTriggerOnEvent", autoTriggerOnEvent);
        if (parsedList != null) {
            if (parsedList.size() <= 0) {
                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: Expected 1 or more options, got:" + parsedList.size());
            }

            for (ai502 item : parsedList) {
                af499 eventType;
                try {
                    eventType = (af499) ae1325.a(item.a, (Enum) null, af499.class);
                } catch (ch575 e) {
                    throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + e.getMessage(), e);
                }

                if (autoTriggerList == null) {
                    autoTriggerList = new ArrayList<>();
                }

                ae498 entry = new ae498();
                entry.a = eventType;

                if (recursionLimit != null) {
                    entry.e = recursionLimit.intValue();
                } else if (eventType == af499.q) {
                    entry.e = 4;
                }

                if (item.b != null) {
                    for (String key : item.b.keySet()) {
                        String val = item.b.get(key);
                        boolean isTag = false;

                        if ("withtag".equalsIgnoreCase(key)) {
                            if (entry.a != af499.n && entry.a != af499.q) {
                                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " doesn't support parameter: " + key);
                            }
                            isTag = true;
                        } else if ("withprojectiletag".equalsIgnoreCase(key)) {
                            if (entry.a != af499.n) {
                                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " doesn't support parameter: " + key);
                            }
                            isTag = true;
                        } else if ("withactiontag".equalsIgnoreCase(key)) {
                            if (entry.a != af499.f && entry.a != af499.g) {
                                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " doesn't support parameter: " + key);
                            }
                            isTag = true;
                        }

                        if (isTag) {
                            String unquoted = com.corrodinggames.rts.gameFramework.f1006.s(val);
                            if (unquoted == null) {
                                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " expected quoted string, got: " + val);
                            }
                            if (entry.d != null) {
                                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " tag was set twice");
                            }
                            entry.d = ae1325.f(p2, p3 + "autoTriggerOnEvent", unquoted);
                        } else {
                            throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: Unknown parameter: " + key);
                        }
                    }
                }

                autoTriggerList.add(entry);
            }
        }
    }

    // ========== autoTrigger ==========
    LogicBoolean autoTrigger = p1.a(p0, p2, p3 + "autoTrigger", (LogicBoolean) null);
    String autoTriggerCode = p1.a(p2, p3 + "autoTrigger", (String) null);
    s616 checkRate = (s616) p1.a(p2, p3 + "autoTriggerCheckRate", p0.cb, s616.class);

    v13.n = v9n;

    if (!v9n && v13.v == null) {
        return;
    }

    // ========== 自动触发器注册 ==========
    if (autoTrigger != null && v9n) {
        r615 trigger = new r615();
        trigger.a = autoTrigger;
        trigger.b = autoTriggerCode;
        trigger.c = checkRate;
        trigger.d = new a.g492(v13,
                p0.a(v13.k, "[" + p2 + "]" + p3, p2));
        p0.fW.add(trigger);
    }

    if (autoTriggerList != null && v9n) {
        a.g492 g492 = new a.g492(v13,
                p0.a(v13.k, "[" + p2 + "]" + p3, p2));
        for (ae498 entry : autoTriggerList) {
            entry.b = g492;
            entry.c = p0;
            p0.gq.add(entry);
        }
    }

    if (v13.k != null && v13.q != null && v13.q.b > 0) {
        p0.gi = true;
    }

    // ========== 注册到单位定义 ==========
    p0.gh.add(v13);
}
