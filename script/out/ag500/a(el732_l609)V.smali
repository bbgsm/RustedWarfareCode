.method private static a(Lcom/corrodinggames/rts/game/units/el732;Lcom/corrodinggames/rts/game/units/custom/l609;)V
    .locals 4

    .line 1256
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 1262
    instance-of v2, v0, Lcom/corrodinggames/rts/game/units/custom/j607;

    if-eqz v2, :cond_0

    .line 1264
    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/j607;

    .line 1266
    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/custom/j607;->x:Lcom/corrodinggames/rts/game/units/custom/l609;

    if-ne v2, p0, :cond_2

    .line 1270
    invoke-static {v0}, Lcom/corrodinggames/rts/game/p352;->b(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 1273
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Lcom/corrodinggames/rts/game/units/custom/j607;->a(Lcom/corrodinggames/rts/game/units/custom/l609;ZZ)V

    .line 1275
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/custom/j607;->S()V

    .line 10405
    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/ce454;->dK:Lcom/corrodinggames/rts/game/units/custom/c/c563;

    .line 1277
    if-eqz v2, :cond_1

    .line 11405
    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/ce454;->dK:Lcom/corrodinggames/rts/game/units/custom/c/c563;

    .line 1279
    invoke-virtual {v2, p1}, Lcom/corrodinggames/rts/game/units/custom/c/c563;->a(Lcom/corrodinggames/rts/game/units/custom/l609;)V

    .line 1282
    :cond_1
    invoke-static {v0}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 1286
    :cond_2
    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/custom/j607;->z:Lcom/corrodinggames/rts/game/units/custom/l609;

    if-ne v2, p0, :cond_0

    .line 1288
    iput-object p1, v0, Lcom/corrodinggames/rts/game/units/custom/j607;->z:Lcom/corrodinggames/rts/game/units/custom/l609;

    goto :goto_0

    .line 1294
    :cond_3
    return-void
.end method
