.method private static a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/ae1325;
    .locals 5

    .line 785
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->n:Ljava/util/HashMap;

    monitor-enter v1

    .line 787
    :try_start_0
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;

    .line 788
    if-eqz v0, :cond_0

    .line 790
    monitor-exit v1

    .line 820
    :goto_0
    return-object v0

    .line 8502
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8509
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/e/a926;->k(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/o1350;

    move-result-object v2

    .line 794
    if-nez v2, :cond_1

    .line 796
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 800
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    :try_start_2
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;

    invoke-direct {v0, v3, p0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9119
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->g:Z

    .line 9120
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->c:Z

    .line 9166
    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/utility/o1350;->b:Ljava/lang/String;

    .line 807
    iput-object v2, v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 818
    :try_start_3
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ag500;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    monitor-exit v1

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 814
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 815
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Load of \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
