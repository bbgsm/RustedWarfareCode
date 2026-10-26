.method public static strictfp a(ILandroid/graphics/Rect;)V
    .locals 2

    .line 765
    int-to-float v0, p0

    const/high16 v1, 0x3d800000    # 0.0625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 768
    rem-int/lit8 v1, p0, 0x10

    mul-int/lit8 v1, v1, 0x16

    add-int/lit8 v1, v1, 0x1

    .line 769
    mul-int/lit8 v0, v0, 0x16

    add-int/lit8 v0, v0, 0x1

    .line 771
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 772
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 773
    add-int/lit8 v1, v1, 0x14

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 774
    add-int/lit8 v0, v0, 0x14

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 775
    return-void
.end method
