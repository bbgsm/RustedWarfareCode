.method private static b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;
    .locals 2

    .line 7231
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 7232
    if-eqz v0, :cond_0

    .line 7235
    sget v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->j:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->j:I

    .line 7240
    invoke-static {v0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 7254
    :goto_0
    return-object v0

    .line 7248
    :cond_0
    sget-boolean v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->k:Z

    if-eqz v0, :cond_1

    .line 7250
    const-string v0, "loadImageInConf: cache miss: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 7252
    :cond_1
    sget v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->i:I

    .line 7254
    const/4 v0, 0x0

    goto :goto_0
.end method
