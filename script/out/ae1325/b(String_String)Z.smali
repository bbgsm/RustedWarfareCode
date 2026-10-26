.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 699
    if-nez v0, :cond_0

    .line 702
    invoke-static {p1, p2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
