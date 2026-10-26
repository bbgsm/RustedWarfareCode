.method public final strictfp q()V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 5169
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->ad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 5239
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 5177
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->nextBackgroundMap:I

    .line 5181
    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v3, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->nextBackgroundMap:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->nextBackgroundMap:I

    .line 5182
    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->nextBackgroundMap:I

    if-le v2, v4, :cond_2

    .line 5184
    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v3, 0x1

    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->nextBackgroundMap:I

    .line 5186
    :cond_2
    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->save()Z

    .line 5197
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(III)I

    move-result v1

    .line 5198
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/corrodinggames/rts/game/i345;->dj:Lcom/corrodinggames/rts/gameFramework/j/j1071;

    .line 5199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maps/menu_background/menu"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/corrodinggames/rts/game/i345;->di:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5204
    const/16 v1, 0xa

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v1, v2}, Lcom/corrodinggames/rts/game/p352;->b(IZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5211
    :goto_1
    :try_start_3
    sget v1, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v0, v1, :cond_4

    .line 5213
    new-instance v1, Lcom/corrodinggames/rts/game/a/a296;

    invoke-direct {v1, v0}, Lcom/corrodinggames/rts/game/a/a296;-><init>(I)V

    .line 5214
    if-nez v0, :cond_3

    .line 5216
    iput-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    .line 5211
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5206
    :catch_0
    move-exception v0

    .line 5208
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5228
    :cond_4
    const/4 v0, 0x0

    :try_start_4
    sget v1, Lcom/corrodinggames/rts/gameFramework/ac796;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(ZI)V

    .line 5229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bE:Z

    .line 5231
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/f/i988;->h()V

    .line 5233
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bD:Z

    if-nez v0, :cond_0

    .line 5235
    const-string v0, "Menu load failed"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->f(Ljava/lang/String;)V

    .line 5236
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->ad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->ad:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
