.method private strictfp b()V
    .locals 4

    .line 975
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v1

    .line 976
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 978
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v2, v2, v0

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/units/ch457;->a(I)V

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    :cond_0
    return-void
.end method
