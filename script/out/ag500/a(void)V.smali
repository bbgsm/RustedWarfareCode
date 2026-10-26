.method public static a()V
    .locals 4

    const/4 v0, 0x0

    .line 484
    new-instance v1, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v1}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 486
    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->b:I

    .line 487
    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->c:I

    .line 488
    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->d:I

    .line 490
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 492
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v0

    .line 493
    instance-of v3, v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    if-eqz v3, :cond_0

    .line 495
    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 497
    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 504
    invoke-static {v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/utility/p1351;)Z

    .line 510
    :cond_2
    return-void
.end method
