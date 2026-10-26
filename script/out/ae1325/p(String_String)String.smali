.method private p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 755
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 770
    if-nez v0, :cond_0

    .line 772
    const/4 v0, 0x0

    .line 774
    :cond_0
    return-object v0
.end method
