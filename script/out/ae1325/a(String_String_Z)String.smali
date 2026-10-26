.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 562
    invoke-direct {p0, p1, p2, p3}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0, p1, p2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    return-object v0
.end method
