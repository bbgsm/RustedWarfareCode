.method strictfp constructor <init>(Lcom/corrodinggames/rts/gameFramework/k/k1099;Lcom/corrodinggames/rts/game/units/cg456;II)V
    .locals 3

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, -0x63

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->k:I

    .line 61
    iput v2, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->l:I

    .line 779
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->n:Landroid/graphics/Point;

    .line 29
    iput p3, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b:I

    .line 30
    iput p4, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    .line 32
    iput-object p1, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    .line 33
    iput-object p2, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    .line 34
    mul-int v0, p3, p4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->d:[B

    .line 36
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k/k1099;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k/k1099;->u:Ljava/util/ArrayList;

    new-array v2, v2, [Lcom/corrodinggames/rts/gameFramework/k/h1096;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/corrodinggames/rts/gameFramework/k/h1096;

    iput-object v0, v1, Lcom/corrodinggames/rts/gameFramework/k/k1099;->v:[Lcom/corrodinggames/rts/gameFramework/k/h1096;

    .line 1067
    invoke-direct {p0}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c()V

    .line 1068
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 1069
    invoke-virtual {p0}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b()V

    .line 40
    return-void
.end method
