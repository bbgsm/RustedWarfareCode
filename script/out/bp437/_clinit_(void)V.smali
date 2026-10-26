.method static strictfp constructor <clinit>()V
    .locals 7

    const/16 v6, 0x46

    const/16 v5, 0x28

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 90
    sput-boolean v4, Lcom/corrodinggames/rts/game/units/bp437;->L:Z

    .line 146
    new-array v0, v4, [Lcom/corrodinggames/rts/game/units/en734;

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->P:[Lcom/corrodinggames/rts/game/units/en734;

    .line 250
    new-array v0, v4, [Lcom/corrodinggames/rts/game/units/bx445;

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->av:[Lcom/corrodinggames/rts/game/units/bx445;

    .line 313
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    .line 314
    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aG:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setARGB(IIII)V

    .line 315
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aG:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 52559
    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->d:Z

    .line 318
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    .line 319
    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aH:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    sget-object v1, Lcom/corrodinggames/rts/game/units/bp437;->aG:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->set(Landroid/graphics/Paint;)V

    .line 321
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aH:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setAntiAlias(Z)V

    .line 322
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aH:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setFilterBitmap(Z)V

    .line 323
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aH:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setDither(Z)V

    .line 325
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aH:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 52561
    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->d:Z

    .line 343
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aI:Landroid/graphics/PointF;

    .line 800
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->z:Landroid/graphics/Paint;

    .line 814
    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/bp437;->d(Z)Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->B:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 815
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/bp437;->d(Z)Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->C:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 1500
    new-instance v0, Lcom/corrodinggames/rts/game/units/bq438;

    invoke-direct {v0}, Lcom/corrodinggames/rts/game/units/bq438;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aJ:Lcom/corrodinggames/rts/game/units/f/j745;

    .line 1529
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aO:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 5837
    new-instance v0, Lcom/corrodinggames/rts/game/units/bv443;

    invoke-direct {v0}, Lcom/corrodinggames/rts/game/units/bv443;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aR:Lcom/corrodinggames/rts/game/units/bv443;

    .line 6633
    new-instance v0, Lcom/corrodinggames/rts/game/units/bw444;

    invoke-direct {v0, v2}, Lcom/corrodinggames/rts/game/units/bw444;-><init>(Z)V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aS:Lcom/corrodinggames/rts/game/units/bw444;

    .line 6634
    new-instance v0, Lcom/corrodinggames/rts/game/units/bw444;

    invoke-direct {v0, v4}, Lcom/corrodinggames/rts/game/units/bw444;-><init>(Z)V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aT:Lcom/corrodinggames/rts/game/units/bw444;

    .line 6637
    new-instance v0, Lcom/corrodinggames/rts/game/units/bz447;

    invoke-direct {v0, v2}, Lcom/corrodinggames/rts/game/units/bz447;-><init>(Z)V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aU:Lcom/corrodinggames/rts/game/units/bz447;

    .line 6638
    new-instance v0, Lcom/corrodinggames/rts/game/units/bz447;

    invoke-direct {v0, v4}, Lcom/corrodinggames/rts/game/units/bz447;-><init>(Z)V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aV:Lcom/corrodinggames/rts/game/units/bz447;

    .line 9125
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aX:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    .line 9420
    new-instance v0, Lcom/corrodinggames/rts/game/units/bx445;

    invoke-direct {v0}, Lcom/corrodinggames/rts/game/units/bx445;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aY:Lcom/corrodinggames/rts/game/units/bx445;

    .line 9452
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/16 v1, 0xc8

    const/16 v2, 0xc8

    invoke-static {v1, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aZ:Landroid/graphics/PorterDuffColorFilter;

    .line 9455
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->ba:Landroid/graphics/PorterDuffColorFilter;

    .line 9456
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v3, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bb:Landroid/graphics/PorterDuffColorFilter;

    .line 9458
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/16 v1, 0x78

    const/16 v2, 0x78

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bc:Landroid/graphics/PorterDuffColorFilter;

    .line 9461
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/utility/ab1322;->b()Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bd:Landroid/graphics/Paint;

    .line 9462
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/utility/ab1322;->b()Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->be:Landroid/graphics/Paint;

    .line 9463
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/utility/ab1322;->b()Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bf:Landroid/graphics/Paint;

    .line 9988
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bg:Landroid/graphics/PointF;

    .line 10598
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/utility/am1333;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bh:Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    .line 10605
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bi:Landroid/graphics/PointF;

    .line 10625
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bj:Landroid/graphics/PointF;

    .line 10626
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/utility/am1333;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bk:Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    .line 10689
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bl:Landroid/graphics/PointF;

    .line 11062
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bm:Landroid/graphics/Point;

    .line 11138
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bn:Landroid/graphics/Point;

    .line 11406
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bo:Landroid/graphics/PointF;

    .line 11592
    new-instance v0, Lcom/corrodinggames/rts/game/units/br439;

    invoke-direct {v0}, Lcom/corrodinggames/rts/game/units/br439;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    .line 11944
    new-instance v0, Lcom/corrodinggames/rts/game/units/bu442;

    invoke-direct {v0}, Lcom/corrodinggames/rts/game/units/bu442;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    .line 12066
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    sput-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bs:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    return-void
.end method
