.method public final strictfp n()Ljava/lang/String;
    .locals 3

    .line 4900
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4902
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->a:Ljava/lang/String;

    .line 4943
    :goto_0
    return-object v0

    .line 4905
    :cond_0
    const-string v0, "v1.15"

    .line 4906
    sget-boolean v1, Lcom/corrodinggames/rts/gameFramework/k1104;->ar:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/corrodinggames/rts/game/i345;->aS:Z

    if-eqz v1, :cond_4

    .line 4908
    :cond_1
    const-string v0, "DEBUG BUILD - "

    const-string v1, "v1.15"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4929
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/corrodinggames/rts/gameFramework/k1104;->aW:Z

    if-nez v1, :cond_3

    .line 4931
    invoke-static {}, Lcom/corrodinggames/rts/game/i345;->ao()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4933
    const-string v1, "RAW - "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4943
    :cond_3
    sput-object v0, Lcom/corrodinggames/rts/game/i345;->a:Ljava/lang/String;

    goto :goto_0

    .line 4910
    :cond_4
    sget-boolean v1, Lcom/corrodinggames/rts/gameFramework/k1104;->as:Z

    if-eqz v1, :cond_5

    .line 4912
    const-string v0, "TESTING BUILD - "

    const-string v1, "v1.15"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4914
    :cond_5
    const-string v1, "v1.15"

    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4916
    const-string v0, "BETA VERSION - "

    const-string v1, "v1.15"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
