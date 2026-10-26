.method public static a([Lcom/corrodinggames/rts/gameFramework/m/e1216;)V
    .locals 4

    .line 330
    if-eqz p0, :cond_2

    .line 332
    const/4 v1, 0x0

    .line 333
    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    .line 335
    if-eq v0, v1, :cond_0

    .line 337
    invoke-static {v0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 340
    :cond_0
    if-nez v1, :cond_1

    .line 333
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 347
    goto :goto_1

    :cond_2
    return-void
.end method
