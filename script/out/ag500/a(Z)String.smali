.method public static a(Z)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 1334
    invoke-static {p0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->c(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1336
    sput-object v1, Lcom/corrodinggames/rts/game/units/custom/l609;->e:Ljava/util/ArrayList;

    .line 1337
    sput-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    .line 1339
    sput-object v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableAll: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1345
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->d()V

    .line 1348
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    return-object v0
.end method
