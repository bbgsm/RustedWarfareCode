.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    if-nez v0, :cond_0

    .line 714
    invoke-static {p1, p2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_0
    return-object v0
.end method
