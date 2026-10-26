.method public static strictfp k(F)I
    .locals 4

    const/16 v1, 0x2d

    .line 9524
    const v0, -0x41666666    # -0.3f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 9526
    const/high16 v0, 0x3f800000    # 1.0f

    neg-float v2, p0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x43020000    # 130.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x42340000    # 45.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 9527
    if-ge v0, v1, :cond_0

    move v0, v1

    .line 9535
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method
