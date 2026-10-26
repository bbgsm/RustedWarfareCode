.method public static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1114
    sget-boolean v1, Lcom/corrodinggames/rts/gameFramework/k1104;->aR:Z

    if-eqz v1, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return v0

    .line 1119
    :cond_1
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/e/a926;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 1126
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    const/4 v0, 0x0

    goto :goto_0
.end method
