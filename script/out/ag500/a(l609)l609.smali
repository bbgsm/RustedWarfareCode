.method private static a(Lcom/corrodinggames/rts/game/units/custom/l609;)Lcom/corrodinggames/rts/game/units/custom/l609;
    .locals 7

    const/4 v1, 0x0

    .line 1162
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->D:Ljava/lang/String;

    .line 1163
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v4

    .line 1173
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    if-eqz v0, :cond_5

    .line 1175
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->P:Ljava/lang/String;

    .line 1178
    :goto_0
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ag500;->n:Ljava/util/HashMap;

    monitor-enter v2

    .line 1180
    :try_start_0
    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/ag500;->n:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1181
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    sput-object v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    .line 1187
    :try_start_1
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    iget-object v5, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->K:Ljava/lang/String;

    iget-object v6, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->L:Ljava/lang/String;

    invoke-static {v3, v2, v5, v6}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/l609;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1200
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    if-eqz v2, :cond_1

    .line 1207
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    iput-object v0, v2, Lcom/corrodinggames/rts/gameFramework/i/b1019;->P:Ljava/lang/String;

    .line 1212
    :cond_1
    if-eqz v1, :cond_3

    .line 1214
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1216
    :try_start_2
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1217
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1219
    invoke-static {p0, v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/el732;Lcom/corrodinggames/rts/game/units/custom/l609;)V

    .line 1221
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1223
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    iget v0, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->H:I

    iget v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->H:I

    if-eq v0, v2, :cond_2

    .line 1229
    sget v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->d:I

    .line 1243
    :cond_2
    :goto_2
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->F()V

    .line 1245
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/f/i988;->n()V

    .line 1249
    :cond_3
    return-object v1

    .line 1181
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1189
    :catch_0
    move-exception v2

    .line 1191
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1193
    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error loading unit:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    invoke-static {v6, v3}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1196
    invoke-virtual {v4, v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->g(Ljava/lang/String;)V

    goto :goto_1

    .line 1217
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1239
    :cond_4
    const-string v0, "Changed unit was not enabled (original not found in customUnitTypes)"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method
