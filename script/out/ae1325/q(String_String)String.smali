.method private q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 779
    invoke-direct {p0, p1, p2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    if-nez v0, :cond_0

    .line 782
    invoke-static {p1, p2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_0
    return-object v0
.end method
