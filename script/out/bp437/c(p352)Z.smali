.method public strictfp c(Lcom/corrodinggames/rts/game/p352;)Z
    .locals 2

    const/4 v0, 0x0

    .line 11054
    invoke-virtual {p0, v0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->a(ZLcom/corrodinggames/rts/game/p352;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
