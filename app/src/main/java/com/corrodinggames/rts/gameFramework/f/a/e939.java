package com.corrodinggames.rts.gameFramework.f.a;

import android.graphics.Paint;
import android.graphics.Rect;

import com.corrodinggames.rts.gameFramework.m.e1216;
import com.corrodinggames.rts.gameFramework.m.fi1252;
import com.corrodinggames.rts.gameFramework.m.fk1254;

/**
 * 九宫格（Nine-Patch）绘制元素。
 * 基于父类 {@link i943}，持有源纹理和绘制 Paint，
 * 将该纹理分割成 9 个区域（4 角 + 4 边 + 中心）分别绘制到目标矩形中。
 */
public final class e939 extends i943 {

    // 共享的临时矩形，用于拼接源/目标区域（非线程安全）
    // 注意：改名为 sSrcRect / sDstRect，避免与父类 i943 中名为 h / i 的 int 字段冲突
    static final Rect sSrcRect = new Rect();
    static final Rect sDstRect = new Rect();

    int   a;   // 角宽（源像素）
    int   b;   // 角高（源像素）
    float c;   // a / texWidth  —— 横向切分比例
    float d;   // b / texHeight —— 纵向切分比例

    public boolean e = true;   // true 允许缩放；false 仅限制为半宽/半高
    public boolean f = false;  // 是否为九宫格（true 走 fk1254 路径，false 直接绘制）
    public float   g = 1.0f;   // 仅九宫格路径使用的透明度/强度

    public e939() {
        // 字段初始化器已设置 e/f/g 默认值
    }

    public e939(e1216 tex, int w, int hgt) {
        super.a(tex);
        this.a = w;
        this.b = hgt;
        this.c = (float) w   / (float) tex.p;   // tex.p = 源宽
        this.d = (float) hgt / (float) tex.q;   // tex.q = 源高
    }

    /** 11 参数版本：非九宫格绘制（角落使用）。 */
    private void a(fi1252 renderer, e1216 tex, Paint paint,
                   int x, int y, int w, int h,
                   float u1, float v1, float u2, float v2) {
        a(renderer, tex, paint, x, y, w, h, u1, v1, u2, v2, false);
    }

    /**
     * 12 参数版本：核心绘制。
     * 按 (u1,v1)-(u2,v2) 比例切出源区域，绘制到 (x,y)-(x+w,y+h) 目标区域。
     * p12=true 时走九宫格绘制路径。
     */
    private void a(fi1252 renderer, e1216 tex, Paint paint,
                   int x, int y, int w, int h,
                   float u1, float v1, float u2, float v2,
                   boolean ninePatch) {

        Rect src = sSrcRect;
        Rect dst = sDstRect;

        src.set(
                (int) (tex.p * u1),
                (int) (tex.q * v1),
                (int) (tex.p * u2),
                (int) (tex.q * v2)
        );

        dst.set(x, y, x + w, y + h);

        if (!ninePatch) {
            renderer.a(tex, src, dst, paint);
        } else {
            fk1254.a(renderer, tex, src, dst, paint, this.g);
        }
    }

    /** 克隆自身。 */
    public final e939 a() {
        e939 copy = new e939();
        copy.a(this);
        return copy;
    }

    /** 从另一个实例复制。 */
    public final void a(i943 other) {
        e939 src = (e939) other;
        this.a = src.a;
        this.b = src.b;
        this.c = src.c;
        this.d = src.d;
        this.e = src.e;
        super.a(other);
    }

    public final void a(e1216 tex) {
        super.a(tex);
    }

    /**
     * 主绘制入口：将纹理以九宫格方式绘制到 dst 目标矩形。
     * 先根据 this.e 决定 cornerW/cornerH 是否缩放，然后依次绘制：
     *   上边、左边、下边、右边（使用 this.f 作为九宫格标志）
     *   左上、右上、左下、右下（非九宫格）
     *   中心（使用 this.f 作为九宫格标志）
     */
    public final void a(fi1252 renderer, Rect dst) {
        e1216 tex   = this.p;   // 父类字段：当前纹理
        Paint paint = this.o;   // 父类字段：当前 Paint

        int left   = dst.left;
        int top    = dst.top;
        int width  = dst.width();
        int height = dst.height();

        int cornerW = this.a;
        int cornerH = this.b;

        if (!this.e) {
            // 不允许缩放：仅把角限制为不超过半宽/半高
            int halfW = width  / 2;
            if (cornerW > halfW)  cornerW = halfW;
            int halfH = height / 2;
            if (cornerH > halfH)  cornerH = halfH;
        } else {
            // 允许缩放：整体等比缩放，保证角不超过半宽/半高
            int halfW = width  / 2;
            int halfH = height / 2;
            float scale = 1.0f;
            if (cornerW > halfW) {
                scale = (float) halfW / (float) cornerW;
            }
            if (cornerH * scale > halfH) {
                scale = (float) halfH / (float) cornerH;
            }
            cornerW = (int) (this.a * scale);
            cornerH = (int) (this.b * scale);
        }

        int midW = width  - cornerW * 2;
        int midH = height - cornerH * 2;
        float c = this.c;
        float d = this.d;
        boolean ninePatch = this.f;

        // ---- 四条边（使用九宫格路径） ----
        // 上边
        a(renderer, tex, paint, left + cornerW, top, midW, cornerH,
                c, 0f, 1f - c, d, ninePatch);
        // 左边
        a(renderer, tex, paint, left, top + cornerH, cornerW, midH,
                0f, d, c, 1f - d, ninePatch);
        // 下边
        a(renderer, tex, paint, left + cornerW, top + height - cornerH, midW, cornerH,
                c, 1f - d, 1f - c, 1f, ninePatch);
        // 右边
        a(renderer, tex, paint, left + width - cornerW, top + cornerH, cornerW, midH,
                1f - c, d, 1f, 1f - d, ninePatch);

        // ---- 四个角（非九宫格，直接绘制） ----
        // 左上
        a(renderer, tex, paint, left, top, cornerW, cornerH,
                0f, 0f, c, d);
        // 右上
        a(renderer, tex, paint, left + width - cornerW, top, cornerW, cornerH,
                1f - c, 0f, 1f, d);
        // 左下
        a(renderer, tex, paint, left, top + height - cornerH, cornerW, cornerH,
                0f, 1f - d, c, 1f);
        // 右下
        a(renderer, tex, paint, left + width - cornerW, top + height - cornerH, cornerW, cornerH,
                1f - c, 1f - d, 1f, 1f);

        // ---- 中心区域（使用九宫格路径） ----
        a(renderer, tex, paint, left + cornerW, top + cornerH, midW, midH,
                c, d, 1f - c, 1f - d, ninePatch);
    }

    @Override
    public final Object clone() {
        return this.a();
    }
}
