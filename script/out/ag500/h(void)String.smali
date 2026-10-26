.method public static h()Ljava/lang/String;
    .locals 1

    .line 7815
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aR:Z

    if-eqz v0, :cond_0

    .line 7817
    const-string v0, "/SD/mods/units"

    .line 7825
    :goto_0
    return-object v0

    .line 7821
    :cond_0
    const-string v0, "/SD/rustedWarfare/units"

    goto :goto_0
.end method
