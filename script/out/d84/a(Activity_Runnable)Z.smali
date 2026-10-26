.method public static a(Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x0

    .line 851
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    .line 854
    invoke-static {p0, p1, v0}, Lcom/corrodinggames/rts/appFramework/d84;->a(Landroid/app/Activity;Ljava/lang/Runnable;Z)Z

    move-result v1

    .line 856
    if-eqz v1, :cond_0

    .line 858
    const/4 v0, 0x1

    .line 861
    :cond_0
    return v0
.end method
