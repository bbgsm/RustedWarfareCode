.method public static c()V
    .locals 2

    .line 714
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyPendingNetworkUnits: Applying new network units from server ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/l609;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " units)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 718
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->e:Ljava/util/ArrayList;

    sput-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    .line 719
    const/4 v0, 0x0

    sput-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->e:Ljava/util/ArrayList;

    .line 721
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->d()V

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    const-string v0, "applyPendingNetworkUnits: no server units list found"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
