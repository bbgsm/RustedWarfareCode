.method public strictfp constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0, p1}, Lcom/corrodinggames/rts/gameFramework/k1104;-><init>(Landroid/content/Context;)V

    .line 152
    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->d:F

    .line 166
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/corrodinggames/rts/game/m349;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->f:[Lcom/corrodinggames/rts/game/m349;

    .line 274
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/i345;->h:Z

    .line 284
    iput v2, p0, Lcom/corrodinggames/rts/game/i345;->i:I

    .line 288
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 308
    iput v2, p0, Lcom/corrodinggames/rts/game/i345;->p:I

    .line 309
    iput v2, p0, Lcom/corrodinggames/rts/game/i345;->q:I

    .line 318
    iput v2, p0, Lcom/corrodinggames/rts/game/i345;->r:I

    .line 319
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->s:F

    .line 322
    const-string v0, "0fps"

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->t:Ljava/lang/String;

    .line 338
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->u:Landroid/graphics/Rect;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->v:Ljava/util/ArrayList;

    .line 350
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->z:Landroid/graphics/Paint;

    .line 356
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/d/b918;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/d/b918;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->C:Lcom/corrodinggames/rts/gameFramework/d/b918;

    .line 2163
    iput v1, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    .line 3155
    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->G:F

    .line 3851
    iput v1, p0, Lcom/corrodinggames/rts/game/i345;->Q:F

    .line 3853
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->R:Landroid/graphics/Rect;

    .line 3854
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->S:Landroid/graphics/RectF;

    .line 3857
    iput-object v4, p0, Lcom/corrodinggames/rts/game/i345;->T:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3858
    iput-object v4, p0, Lcom/corrodinggames/rts/game/i345;->U:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3895
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    const-string v1, "allOnScreenObjects"

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->V:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    .line 3898
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    const-string v1, "allOnScreenObjectsDirty"

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->W:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    .line 4458
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->X:Landroid/graphics/Matrix;

    .line 4571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->Y:Ljava/util/ArrayList;

    .line 4574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->Z:Ljava/util/ArrayList;

    .line 5023
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ac:Ljava/lang/Object;

    .line 5164
    iput v2, p0, Lcom/corrodinggames/rts/game/i345;->ad:I

    .line 129
    return-void
.end method
