.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 789
    if-nez p0, :cond_0

    .line 791
    const/4 v0, 0x0

    .line 797
    :goto_0
    return-object v0

    .line 795
    :cond_0
    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-static {p0, v0, v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
