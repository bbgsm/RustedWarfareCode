.method public static b(Z)Z
    .locals 4

    const/4 v1, 0x1

    .line 1355
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    .line 1359
    if-eqz p0, :cond_0

    .line 1361
    invoke-static {v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->c(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1371
    :goto_0
    const/4 v3, 0x0

    sput-object v3, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    .line 1373
    sput-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    .line 1374
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->l()V

    .line 1376
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1378
    const/4 v0, 0x0

    .line 1381
    :goto_1
    sput-object v2, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    .line 1382
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->l()V

    .line 1385
    return v0

    .line 1365
    :cond_0
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
