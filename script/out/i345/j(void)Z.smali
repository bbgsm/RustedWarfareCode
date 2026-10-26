.method public final strictfp j()Z
    .locals 2

    .line 52219
    const-string v0, "1.15"

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4799
    const/4 v0, 0x1

    .line 4802
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
