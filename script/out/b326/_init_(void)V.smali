.method public strictfp constructor <init>()V
    .locals 6

    const/4 v2, 0x1

    const/16 v5, 0xff

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->k:[Z

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    .line 800
    iput-object v1, p0, Lcom/corrodinggames/rts/game/b/b326;->u:Lcom/corrodinggames/rts/game/b/g331;

    .line 801
    iput-object v1, p0, Lcom/corrodinggames/rts/game/b/b326;->v:Lcom/corrodinggames/rts/game/b/g331;

    .line 803
    iput-object v1, p0, Lcom/corrodinggames/rts/game/b/b326;->w:Lcom/corrodinggames/rts/game/b/g331;

    .line 807
    iput-object v1, p0, Lcom/corrodinggames/rts/game/b/b326;->y:Lcom/corrodinggames/rts/game/b/g331;

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->z:Ljava/util/ArrayList;

    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->A:Ljava/util/ArrayList;

    .line 815
    iput v2, p0, Lcom/corrodinggames/rts/game/b/b326;->B:I

    .line 816
    new-array v0, v3, [Lcom/corrodinggames/rts/game/b/i333;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->C:[Lcom/corrodinggames/rts/game/b/i333;

    .line 888
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    .line 889
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/b/b326;->G:Z

    .line 891
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/b/b326;->H:Z

    .line 921
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->P:Landroid/graphics/Rect;

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->Q:Ljava/util/ArrayList;

    .line 1037
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->W:Landroid/graphics/PointF;

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ab:F

    .line 2680
    iput v4, p0, Lcom/corrodinggames/rts/game/b/b326;->ak:F

    .line 2681
    iput v3, p0, Lcom/corrodinggames/rts/game/b/b326;->al:I

    .line 5077
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->an:Landroid/graphics/Paint;

    .line 5078
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ao:Landroid/graphics/Rect;

    .line 5177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    .line 1187
    const/16 v0, 0x14

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    .line 1188
    const/16 v0, 0x14

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    .line 1189
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    const/16 v0, 0x3c

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    .line 1192
    const/16 v0, 0x3c

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    .line 1195
    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->p:I

    .line 1196
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->q:I

    .line 1198
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    int-to-float v0, v0

    div-float v0, v4, v0

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->r:F

    .line 1199
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    int-to-float v0, v0

    div-float v0, v4, v0

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->s:F

    .line 1203
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ac:Landroid/graphics/Paint;

    .line 1204
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ac:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v5, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1205
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ac:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1208
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ad:Landroid/graphics/Paint;

    .line 1210
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ad:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1211
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ad:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1212
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ad:Landroid/graphics/Paint;

    const/16 v1, 0xe1

    invoke-virtual {v0, v5, v3, v1, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1215
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ae:Landroid/graphics/Paint;

    .line 1216
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ae:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1217
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ae:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1218
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ae:Landroid/graphics/Paint;

    const/16 v1, 0x64

    const/16 v2, 0xb9

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1221
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->af:Landroid/graphics/Paint;

    .line 1222
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->af:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1223
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->af:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1224
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->af:Landroid/graphics/Paint;

    const/16 v1, 0xaf

    invoke-virtual {v0, v5, v1, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1226
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ag:Landroid/graphics/Paint;

    .line 1229
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ag:Landroid/graphics/Paint;

    const/16 v1, 0x9b

    const/16 v2, 0xaf

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1236
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ah:Landroid/graphics/Paint;

    .line 1237
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ah:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1240
    return-void
.end method
