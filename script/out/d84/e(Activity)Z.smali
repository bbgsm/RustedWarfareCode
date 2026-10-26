.method public static e(Landroid/app/Activity;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1147
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v2

    .line 1149
    sget-boolean v3, Lcom/corrodinggames/rts/gameFramework/k1104;->aR:Z

    if-eqz v3, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return v0

    .line 1155
    :cond_1
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/e/a926;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1161
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 1168
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v3}, Landroid/support/v4/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1171
    iget-object v1, v2, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iput-boolean v0, v1, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->hadStoragePermissionInPast:Z

    .line 1173
    const-string v1, "File Permission is granted"

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :cond_2
    const-string v2, "Permission is revoked"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1180
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/support/v4/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    move v0, v1

    .line 1186
    goto :goto_0
.end method
