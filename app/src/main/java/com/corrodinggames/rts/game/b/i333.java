package com.corrodinggames.rts.game.b;

import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.corrodinggames.rts.game.p352;
import com.corrodinggames.rts.game.units.ce454;
import com.corrodinggames.rts.game.units.cj459;
import com.corrodinggames.rts.game.units.custom.l609;
import com.corrodinggames.rts.game.units.el732;
import com.corrodinggames.rts.game.units.h.d758;
import com.corrodinggames.rts.gameFramework.ah801;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.m.fi1252;

import java.util.Properties;

/* loaded from: classes.dex */
public final class i333 {
    static final Rect n = new Rect();
    public l336 a;
    public int b;
    public int c = -2;
    public short d = -1;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public byte j;
    public boolean k;
    public boolean l;
    public i333[] m;

    public static boolean a(i333 i333Var, i333 i333Var2) {
        return i333Var == i333Var2 || (i333Var != null && i333Var2 != null && i333Var.a == i333Var2.a && i333Var.b == i333Var2.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public i333 clone() {
        i333 i333Var = new i333();
        i333Var.a = this.a;
        i333Var.b = this.b;
        i333Var.e = this.e;
        i333Var.f = this.f;
        i333Var.g = this.g;
        i333Var.h = this.h;
        i333Var.i = this.i;
        i333Var.j = this.j;
        i333Var.k = this.k;
        i333Var.l = this.l;
        return i333Var;
    }

    private static void a(String str) {
        k1104.b(str);
        k1104.t().g("Missing unit data while loading map: ".concat(String.valueOf(str)));
        try {
            Thread.sleep(2L);
        } catch (InterruptedException e) {
        }
    }

    /**
     * 创建一个 i333 的浅拷贝副本（用于生成随机瓦片变体）。
     *
     * 注意：刻意不拷贝 m 字段（子变体数组），以避免无限递归。
     */
    private strictfp i333 a() {
        i333 v0 = new i333();

        v0.a = this.a;   // l336 地图块引用
        v0.b = this.b;   // int  瓦片索引
        v0.e = this.e;   // boolean water
        v0.f = this.f;   // boolean water-bridge
        v0.g = this.g;   // boolean lava
        v0.h = this.h;   // boolean cliff / cliff-soft / lava-cliff
        v0.i = this.i;   // boolean res_pool
        v0.j = this.j;   // byte  block 标记
        v0.k = this.k;   // boolean large-cliff / trees
        v0.l = this.l;   // boolean block-buildings

        return v0;
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x03a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */

    /**
     * 根据地图块属性数据（Properties）生成对应的单位或地形对象。
     *
     * @param p0 游戏世界 / 地图上下文对象 (b326)
     * @param p1 地图图层信息 (g331)
     * @param p2 地图块 (l336)
     * @param p3 地图块索引偏移
     * @param p4 x 坐标 (short)
     * @param p5 y 坐标 (short)
     * @param p6 是否小地图标记
     * @return 生成的地形 i333 对象，单位创建时返回 null
     */
    public static strictfp i333 a(b326 p0, g331 p1, l336 p2, int p3, short p4, short p5, boolean p6)  {
        try {
// 第 150 / 1585 行：从地图块中按 (l + 偏移) 取出 Properties
            int key = p2.l + p3;
            Properties props = (Properties) p2.t.get(Integer.valueOf(key));

            // 第 151 行：若存在属性配置
            if (props != null) {

                // ---------- 第 153-162 行：showFog 特殊处理 ----------
                String showFog = props.getProperty("showFog");
                if (showFog != null) {
                    int fogVal = Integer.parseInt(showFog);
                    k1104 gf = k1104.t();

                    p0.a(p4, p5); // 更新位置

                    float x = (float) (p0.U + p0.p);
                    float y = (float) (p0.V + p0.q);

                    // 调用世界对象上的雾效绘制
                    gf.bI.a(x, y, fogVal, gf.bp, false);
                    return null;
                }

                // ---------- 第 168-169 行：读取单位标识 ----------
                String unit = props.getProperty("unit");
                String customUnit = props.getProperty("customUnit");

                // 第 171-176 行：若存在 unit 或 customUnit，则走单位创建逻辑
                if (unit != null || customUnit != null) {

                    // ---------- 第 176-205 行：解析阵营 ----------
                    String teamStr = props.getProperty("team");
                    p352 team;

                    if ("none".equalsIgnoreCase(teamStr)) {
                        // 第 180 行：中立阵营
                        team = p352.i(-1);
                    } else if (teamStr == null) {
                        // 第 182-185 行：缺少 team 属性，仅警告
                        k1104.a("map", "warning: unit has no team property:" + unit
                                + " at: " + p4 + "," + p5);
                        return null;
                    } else {
                        // 第 189-199 行：按数字解析玩家，跳过 spectate
                        team = p352.i(Integer.valueOf(teamStr).intValue());
                        if (team == null) {
                            k1104.a("map", "skipping unit without player:" + unit
                                    + " at: " + p4 + "," + p5 + " team:" + teamStr);
                            return null;
                        }
                        if (team.a()) {
                            k1104.a("map", "Unit team is marked as spectator:" + unit
                                    + " (skipping unit)");
                            return null;
                        }
                    }

                    // ---------- 第 205-266 行：根据 customUnit / unit 创建单位实例 ----------
                    ce454 ce;

                    if (customUnit != null) {
                        // 自定义单位
                        l609 custom = l609.k(customUnit);
                        if (custom == null) {
                            String msg = "Could not find custom unit of:" + customUnit
                                    + " at x:" + p4 + ", y:" + p5;
                            i333.a(msg);
                            throw new h332(msg);
                        }

                        el732 repl = l609.c(custom);
                        l609 chosen;
                        if (repl == null) {
                            chosen = custom;
                        } else if (repl instanceof l609) {
                            chosen = (l609) repl;
                        } else {
                            k1104.b("replacement not a custom unit:" + repl.i());
                            chosen = custom;
                        }
                        ce = l609.a(false, chosen);
                    } else {
                        // 内置单位
                        el732 template = cj459.a(unit);
                        ce = null;
                        if (template != null) {
                            ce = template.a();
                        }
                        if (ce == null && "scoutShip".equalsIgnoreCase(unit)) {
                            ce = new d758(false);
                        }
                        if (ce == null) {
                            String msg = "Could not find unit:" + unit
                                    + " at: " + p4 + "," + p5;
                            i333.a(msg);
                            throw new h332(msg);
                        }
                    }

                    // ---------- 第 272-311 行：放置单位、初始化状态 ----------
                    p0.a(p4, p5);

                    ce.eq = (float) p0.U + ce.cB();
                    ce.er = (float) p0.V + ce.cC();

                    if (team == null) {
                        throw new h332("team has not been set for:" + unit);
                    }
                    ce.b(team);

                    if (props.getProperty("type") != null) {
                        ce.a_(props.getProperty("type"));
                    }
                    if (props.getProperty("randomRotate") != null) {
                        ce.ci = (float) f1006.a(ce, -0xb4, 0xb4);
                    }

                    ce.bQ = "builder".equalsIgnoreCase(unit)
                            || "builder".equalsIgnoreCase(customUnit);
                    ce.bR = "commandCenter".equalsIgnoreCase(unit)
                            || "commandCenter".equalsIgnoreCase(customUnit);

                    ce.bO = true;
                    ce.m();

                    p352.c(ce);
                    ah801.dk();

                    return null;
                }

                // 第 316-319 行：如果有 properties 但既没有 unit 也没有 customUnit，
                // 且属于 units 层，则只打一条日志
                if (p1 != null && "units".equals(p1.l)) {
                    android.util.Log.e("RustedWarfare",
                            "non unit on units layer at:" + p4 + "," + p5);
                    return null;
                }
            }

            // ---------- 第 327-346 行：构造地形 i333 对象 ----------
            i333 result = new i333();
            result.a = p2;
            p2.p = true;

            if (p1 != null && !p1.r) {
                p2.r = true;
            }
            if (p6) {
                p2.q = true;
            }
            result.b = p3;

            // ---------- 第 350-484 行：解析地形属性 ----------
            if (props != null) {
                if (props.getProperty("water") != null) result.e = true;
                if (props.getProperty("water-bridge") != null) result.f = true;

                if (props.getProperty("lava") != null
                        || props.getProperty("lava-cliff") != null) {
                    result.g = true;
                    if (props.getProperty("lava-cliff") != null) {
                        result.h = true;
                    }
                }
                if (props.getProperty("cliff-soft") != null) result.h = true;
                if (props.getProperty("cliff") != null) result.h = true;
                if (props.getProperty("large-cliff") != null) result.k = true;
                if (props.getProperty("trees") != null) result.k = true;
                if (props.getProperty("res_pool") != null) result.i = true;

                props.getProperty("tree"); // 无实际作用，保留以匹配原逻辑

                if (props.getProperty("small-rock") != null) {
                    result.j = (byte) 0x28;
                }
                if (props.getProperty("large-rock") != null) {
                    result.j = (byte) -1;
                }
                if (props.getProperty("block-land") != null) {
                    result.j = (byte) -1;
                }
                if (props.getProperty("block-buildings") != null) {
                    result.l = true;
                }
            }

            // ---------- 第 484-548 行：按纹理名推导随机瓦片变体数 ----------
            int count = 0;
            int offset = 0;

            if (result.a != null && result.a.c != null) {
                String name = result.a.c;

                if (result.b == 0 && "shallowwater.png".equals(name)) count = 5;
                if (result.b == 0 && "deepwater.png".equals(name)) count = 2;
                if (result.b == 0 && "water.png".equals(name)) count = 2;
                if (result.b == 0 && "longgrass.png".equals(name)) count = 3;
                if (result.b == 0 && "mountain.png".equals(name)) count = 3;
                if (result.b == 7 && "stone.png".equals(name)) {
                    count = 4;
                    offset = 0x17;
                }
                if (result.b == 0 && "lava.png".equals(name)) {
                    // 原字节码中此分支无操作
                }
                if (result.b == 0 && "snow.png".equals(name)) count = 2;
            }

            // ---------- 第 548-577 行：randomTileBy / randomTileFixedOffset 覆盖 ----------
            if (props != null && props.getProperty("randomTileBy") != null) {
                try {
                    count = Integer.parseInt(props.getProperty("randomTileBy"));
                } catch (NumberFormatException e) {
                    throw new h332("(x:" + p4 + "y:" + p5
                            + ") - randomTileBy: Unexpected integer value:'"
                            + props.getProperty("randomTileBy") + "'");
                }

                if (props.getProperty("randomTileFixedOffset") != null) {
                    try {
                        offset = Integer.parseInt(
                                props.getProperty("randomTileFixedOffset"));
                    } catch (NumberFormatException e) {
                        throw new h332("(x:" + p4 + "y:" + p5
                                + ") - randomTileFixedOffset: Unexpected integer value:'"
                                + props.getProperty("randomTileBy") + "'");
                    }
                }
            }

            // ---------- 第 579-594 行：生成随机变体数组 ----------
            if (count > 0) {
                i333[] variants = new i333[count];
                for (int i = 0; i < count; i++) {
                    i333 v = result.a();
                    variants[i] = v;
                    v.b += (i + 1) + offset;
                }
                result.m = variants;
            }

            return result;
        } catch (Exception e) {
            k1104.b("Error while loading map: " + e.getMessage());
        }
        return null;
    }


    i333() {
    }

    public final void a(fi1252 fi1252Var, RectF rectF, Paint paint) {
        l336 l336Var = this.a;
        fi1252Var.a(l336Var.b, l336Var.a(this.b), rectF, paint);
    }
}
