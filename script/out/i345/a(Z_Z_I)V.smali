.method public final strictfp a(ZZI)V
    .locals 17

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->teamUnitCapSinglePlayer:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->bz:I

    .line 1091
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/game/i345;->bz:I

    if-gtz v2, :cond_0

    .line 1093
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->bz:I

    .line 1095
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/game/i345;->bz:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->by:I

    .line 1098
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/game/i345;->c(Z)V

    .line 1101
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->M()V

    .line 1104
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bl:Z

    .line 1106
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1110
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bF:Z

    .line 1111
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bD:Z

    .line 1113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bm:Z

    .line 1115
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bC:Z

    .line 1116
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->bv:I

    .line 1118
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->ce:Z

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 50783
    const-wide/16 v4, 0x1

    iput-wide v4, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->w:J

    .line 1122
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->bu:I

    .line 1124
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->bG:I

    .line 1125
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/f1006;->a()V

    .line 1137
    if-nez p2, :cond_1

    .line 1139
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->dn:Z

    .line 1140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->do:Z

    .line 1141
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->dp:F

    .line 1142
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->dr:Z

    .line 1143
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->dq:Z

    .line 1147
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->i:I

    .line 1149
    if-nez p2, :cond_2

    .line 1151
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->cS:F

    .line 1158
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->du:F

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/bp890;->g()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-nez v2, :cond_4

    .line 1165
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Z)Ljava/lang/String;

    .line 1175
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-nez v2, :cond_7

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/bp890;->g()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1180
    if-eqz p1, :cond_6

    .line 1182
    new-instance v2, Lcom/corrodinggames/rts/game/e341;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/e341;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    const-string v3, "Player"

    iput-object v3, v2, Lcom/corrodinggames/rts/game/p352;->w:Ljava/lang/String;

    .line 1185
    const/4 v2, 0x1

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_5

    .line 1187
    new-instance v3, Lcom/corrodinggames/rts/game/a/a296;

    invoke-direct {v3, v2}, Lcom/corrodinggames/rts/game/a/a296;-><init>(I)V

    .line 1185
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1169
    :cond_4
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->c()V

    goto :goto_0

    .line 1189
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->B()Z

    .line 1227
    :cond_6
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    .line 1229
    new-instance v2, Lcom/corrodinggames/rts/game/b/b326;

    invoke-direct {v2}, Lcom/corrodinggames/rts/game/b/b326;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    .line 1234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->dj:Lcom/corrodinggames/rts/gameFramework/j/j1071;

    if-eqz v2, :cond_9

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->dj:Lcom/corrodinggames/rts/gameFramework/j/j1071;

    .line 50785
    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;
    :try_end_0
    .catch Lcom/corrodinggames/rts/game/b/h332; {:try_start_0 .. :try_end_0} :catch_1

    .line 1240
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/corrodinggames/rts/game/b/h332; {:try_start_1 .. :try_end_1} :catch_1

    .line 1247
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lcom/corrodinggames/rts/game/b/b326;->a(Ljava/io/InputStream;Z)V
    :try_end_2
    .catch Lcom/corrodinggames/rts/game/b/h332; {:try_start_2 .. :try_end_2} :catch_1

    .line 1308
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/game/b/b326;->X:Z

    if-nez v2, :cond_c

    .line 1310
    const-string v2, "map did not load, returning"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bF:Z

    .line 1974
    :goto_5
    return-void

    .line 1211
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->A:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    if-nez v2, :cond_8

    .line 1215
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cannot find player\'s team"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1219
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    iget v3, v3, Lcom/corrodinggames/rts/game/p352;->l:I

    invoke-static {v3}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v3

    if-eq v2, v3, :cond_6

    .line 1221
    const-string v2, "Stale playerTeam"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->f(Ljava/lang/String;)V

    goto :goto_2

    .line 1244
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Lcom/corrodinggames/rts/game/b/h332; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1255
    :catch_1
    move-exception v2

    .line 1266
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/b/h332;->printStackTrace()V

    .line 1269
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error loading map: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/b/h332;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/corrodinggames/rts/game/i345;->g(Ljava/lang/String;)V

    .line 1278
    sget-boolean v3, Lcom/corrodinggames/rts/game/i345;->aQ:Z

    if-eqz v3, :cond_a

    .line 1280
    const-string v3, "Crashing on allowed map error because automated testing is active"

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1281
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1251
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    .line 50786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->di:Ljava/lang/String;

    .line 1251
    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/corrodinggames/rts/game/b/b326;->a(Ljava/lang/String;Z)V
    :try_end_4
    .catch Lcom/corrodinggames/rts/game/b/h332; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 1284
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-nez v3, :cond_b

    .line 1288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    if-eqz v3, :cond_b

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getInGameActivity()Lcom/corrodinggames/rts/appFramework/InGameActivity;

    move-result-object v3

    .line 1291
    if-eqz v3, :cond_b

    .line 1293
    invoke-virtual {v3}, Lcom/corrodinggames/rts/appFramework/InGameActivity;->showPCMainMenu()V

    .line 1299
    :cond_b
    invoke-static {v2}, Lcom/corrodinggames/rts/game/i345;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1300
    const-string v3, "Map Load Warning"

    invoke-static {v3, v2}, Lcom/corrodinggames/rts/game/i345;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bF:Z

    goto/16 :goto_5

    .line 1321
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/b/b326;->H:Z

    .line 1323
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->f()V

    .line 1325
    const/4 v2, 0x0

    :goto_6
    sget v3, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v2, v3, :cond_e

    .line 1327
    invoke-static {v2}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v3

    .line 1328
    if-eqz v3, :cond_d

    .line 1330
    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/p352;->B()V

    .line 1325
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1334
    :cond_e
    if-nez p2, :cond_f

    .line 1337
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/l609;->F()V

    .line 1341
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    .line 1342
    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/bp890;->g()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->h:F

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    const/4 v3, 0x1

    const v4, 0x3b9aca00

    invoke-static {v3, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(II)I

    move-result v3

    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->q:I

    .line 1353
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->q:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->bG:I

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "global Seed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/i345;->bG:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50791
    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/bp890;->g()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1361
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->G:Z

    if-nez v2, :cond_12

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ay:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->by:I

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->az:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->bz:I

    .line 1367
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unit cap is now: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/i345;->bz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50793
    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->d:I

    if-nez v2, :cond_15

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/b/b326;->G:Z

    .line 1385
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget-boolean v3, v3, Lcom/corrodinggames/rts/gameFramework/j/as1042;->e:Z

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/b/b326;->H:Z

    .line 1405
    const/4 v2, 0x0

    :goto_8
    sget v3, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v2, v3, :cond_19

    .line 1407
    invoke-static {v2}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v5

    .line 1408
    if-eqz v5, :cond_14

    .line 1410
    iget-object v3, v5, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    if-nez v3, :cond_17

    .line 1412
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fog null for team: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v5, Lcom/corrodinggames/rts/game/p352;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50795
    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1405
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1374
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/b/b326;->G:Z

    goto :goto_7

    .line 1379
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/b/b326;->G:Z

    goto :goto_7

    .line 1416
    :cond_17
    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v4, v4, Lcom/corrodinggames/rts/game/b/b326;->D:I

    if-ge v3, v4, :cond_14

    .line 1418
    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v6, v6, Lcom/corrodinggames/rts/game/b/b326;->E:I

    if-ge v4, v6, :cond_18

    .line 1420
    iget-object v6, v5, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    aget-object v6, v6, v3

    const/16 v7, 0xa

    aput-byte v7, v6, v4

    .line 1418
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1416
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1428
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->e()I

    move-result v14

    .line 1429
    const/4 v2, 0x0

    move v4, v2

    :goto_b
    sget v2, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v4, v2, :cond_33

    .line 1431
    invoke-static {v4}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v15

    .line 1432
    if-eqz v15, :cond_26

    .line 1435
    int-to-double v2, v14

    iput-wide v2, v15, Lcom/corrodinggames/rts/game/p352;->p:D

    .line 1437
    iget-boolean v2, v15, Lcom/corrodinggames/rts/game/p352;->x:Z

    if-eqz v2, :cond_1a

    .line 1439
    iget-boolean v2, v15, Lcom/corrodinggames/rts/game/p352;->z:Z

    if-nez v2, :cond_20

    .line 1441
    iget-object v2, v15, Lcom/corrodinggames/rts/game/p352;->A:Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    .line 1443
    iget-object v2, v15, Lcom/corrodinggames/rts/game/p352;->A:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/corrodinggames/rts/game/p352;->y:I

    .line 1456
    :cond_1a
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->l:Z

    iput-boolean v2, v15, Lcom/corrodinggames/rts/game/p352;->L:Z

    .line 1460
    const/4 v10, 0x0

    .line 1461
    const/4 v8, 0x0

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->g:I

    .line 1465
    iget-object v3, v15, Lcom/corrodinggames/rts/game/p352;->B:Ljava/lang/Integer;

    if-eqz v3, :cond_49

    .line 1467
    iget-object v2, v15, Lcom/corrodinggames/rts/game/p352;->B:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v13, v2

    .line 1470
    :goto_d
    const/4 v2, 0x1

    if-eq v13, v2, :cond_26

    .line 1480
    const/4 v5, 0x1

    .line 1481
    const/4 v2, 0x1

    .line 1483
    const/4 v9, 0x0

    .line 1484
    const/4 v7, 0x0

    .line 1486
    const/4 v6, 0x0

    .line 1487
    const/4 v11, 0x0

    .line 1489
    const/4 v3, 0x5

    if-eq v13, v3, :cond_1b

    const/4 v3, 0x4

    if-eq v13, v3, :cond_1b

    const/16 v3, 0xa

    if-le v13, v3, :cond_1c

    .line 1491
    :cond_1b
    const/4 v2, 0x0

    .line 1493
    :cond_1c
    const/4 v3, 0x5

    if-eq v13, v3, :cond_1d

    const/4 v3, 0x4

    if-eq v13, v3, :cond_1d

    const/4 v3, 0x3

    if-eq v13, v3, :cond_1d

    const/16 v3, 0xa

    if-le v13, v3, :cond_1e

    .line 1495
    :cond_1d
    const/4 v5, 0x0

    .line 1497
    :cond_1e
    const/16 v3, 0x9

    if-ne v13, v3, :cond_48

    .line 1499
    const/4 v5, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 1503
    :goto_e
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 1505
    instance-of v12, v2, Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v12, :cond_4a

    .line 1510
    iget-boolean v12, v2, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v12, :cond_4a

    iget-object v12, v2, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-ne v12, v15, :cond_4a

    .line 1513
    iget-boolean v12, v2, Lcom/corrodinggames/rts/game/units/ce454;->bQ:Z

    if-eqz v12, :cond_22

    if-nez v10, :cond_22

    .line 1515
    const/4 v12, 0x1

    const/4 v10, 0x1

    .line 1517
    iget v7, v2, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 1518
    iget v7, v2, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 1520
    if-nez v5, :cond_21

    .line 1522
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->bN()V

    goto :goto_f

    .line 1447
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/j/as1042;->f:I

    iput v2, v15, Lcom/corrodinggames/rts/game/p352;->y:I

    goto/16 :goto_c

    .line 1452
    :cond_20
    const-string v2, "aiDifficulty is locked"

    invoke-virtual {v15, v2}, Lcom/corrodinggames/rts/game/p352;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_21
    move v10, v12

    .line 1527
    :cond_22
    iget-boolean v12, v2, Lcom/corrodinggames/rts/game/units/ce454;->bR:Z

    if-eqz v12, :cond_4a

    if-nez v8, :cond_4a

    .line 1529
    const/4 v12, 0x1

    const/4 v8, 0x1

    .line 1531
    iget v6, v2, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1532
    iget v11, v2, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 1534
    if-nez v3, :cond_23

    .line 1536
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->bN()V

    goto :goto_f

    :cond_23
    move v8, v12

    move-object v2, v6

    :goto_10
    move-object v6, v2

    .line 1548
    goto :goto_f

    .line 1550
    :cond_24
    if-nez v9, :cond_25

    move-object v9, v6

    move-object v7, v11

    .line 1556
    :cond_25
    if-nez v9, :cond_27

    .line 1558
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "placementLocation==null for team:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v15, Lcom/corrodinggames/rts/game/p352;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50797
    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1429
    :cond_26
    :goto_11
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_b

    .line 1563
    :cond_27
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1564
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1567
    const/4 v2, 0x2

    if-ne v13, v2, :cond_2a

    .line 1569
    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x2

    if-gt v2, v3, :cond_29

    .line 1571
    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    .line 1573
    sget-object v3, Lcom/corrodinggames/rts/game/units/cj459;->h:Lcom/corrodinggames/rts/game/units/cj459;

    .line 50799
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/corrodinggames/rts/game/units/cj459;->a(Z)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v3

    .line 1574
    invoke-virtual {v3, v15}, Lcom/corrodinggames/rts/game/units/ce454;->b(Lcom/corrodinggames/rts/game/p352;)V

    .line 1575
    const/high16 v7, 0x42480000    # 50.0f

    sub-float v7, v5, v7

    mul-int/lit8 v8, v2, 0x32

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    .line 1576
    iput v6, v3, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    .line 1578
    invoke-static {v3}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 1569
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1582
    :cond_29
    const/4 v2, 0x0

    :goto_13
    const/4 v3, 0x2

    if-gt v2, v3, :cond_26

    .line 1584
    sget-object v3, Lcom/corrodinggames/rts/game/units/cj459;->w:Lcom/corrodinggames/rts/game/units/cj459;

    .line 50800
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/corrodinggames/rts/game/units/cj459;->a(Z)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v3

    .line 1585
    invoke-virtual {v3, v15}, Lcom/corrodinggames/rts/game/units/ce454;->b(Lcom/corrodinggames/rts/game/p352;)V

    .line 1586
    const/high16 v7, 0x42480000    # 50.0f

    sub-float v7, v5, v7

    mul-int/lit8 v8, v2, 0x32

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    .line 1587
    const/high16 v7, 0x42480000    # 50.0f

    add-float/2addr v7, v6

    iput v7, v3, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    .line 1589
    invoke-static {v3}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 1582
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1595
    :cond_2a
    const/4 v2, 0x3

    if-eq v13, v2, :cond_2b

    const/4 v2, 0x4

    if-ne v13, v2, :cond_2d

    .line 1599
    :cond_2b
    const/4 v2, 0x0

    :goto_14
    const/4 v3, 0x2

    if-gt v2, v3, :cond_26

    .line 1602
    const-string v3, "combatEngineer"

    invoke-static {v3}, Lcom/corrodinggames/rts/game/units/cj459;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v3

    .line 1603
    if-nez v3, :cond_2c

    .line 1605
    const-string v3, "Could not find: combatEngineer on network.setup.startingUnits==3"

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->e(Ljava/lang/String;)V

    .line 1599
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1609
    :cond_2c
    invoke-interface {v3}, Lcom/corrodinggames/rts/game/units/el732;->a()Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v3

    .line 1610
    invoke-virtual {v3, v15}, Lcom/corrodinggames/rts/game/units/ce454;->b(Lcom/corrodinggames/rts/game/p352;)V

    .line 1611
    const/high16 v7, 0x42480000    # 50.0f

    sub-float v7, v5, v7

    mul-int/lit8 v8, v2, 0x32

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    .line 1612
    const/high16 v7, 0x42480000    # 50.0f

    add-float/2addr v7, v6

    iput v7, v3, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    .line 1614
    invoke-static {v3}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/units/ce454;)V

    goto :goto_15

    .line 1617
    :cond_2d
    const/4 v2, 0x5

    if-ne v13, v2, :cond_30

    .line 1619
    const-string v2, "experimentalSpider"

    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/cj459;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v2

    .line 1620
    if-nez v2, :cond_2e

    .line 1622
    const-string v2, "Could not find: experimentalSpider on network.setup.startingUnits==5"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->e(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1626
    :cond_2e
    invoke-interface {v2}, Lcom/corrodinggames/rts/game/units/el732;->a()Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v3

    .line 1627
    invoke-virtual {v3, v15}, Lcom/corrodinggames/rts/game/units/ce454;->b(Lcom/corrodinggames/rts/game/p352;)V

    .line 1628
    iput v5, v3, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    .line 1629
    iput v6, v3, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    .line 1630
    const/high16 v2, 0x42b40000    # 90.0f

    iput v2, v3, Lcom/corrodinggames/rts/game/units/ce454;->ci:F

    .line 1631
    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v3, Lcom/corrodinggames/rts/game/units/ce454;->es:F

    .line 1633
    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/units/ce454;->cE()V

    .line 1701
    :cond_2f
    :goto_16
    invoke-static {v3}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/units/ce454;)V

    goto/16 :goto_11

    .line 1653
    :cond_30
    const/16 v2, 0x9

    if-eq v13, v2, :cond_26

    .line 1657
    const/16 v2, 0xa

    if-le v13, v2, :cond_26

    .line 1662
    invoke-static {v13}, Lcom/corrodinggames/rts/game/units/custom/l609;->c(I)Lcom/corrodinggames/rts/game/units/custom/l609;

    move-result-object v2

    .line 1664
    if-nez v2, :cond_31

    .line 1666
    const-string v2, "Could not find starting unit on startingUnits=="

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->e(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 50801
    :cond_31
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(ZLcom/corrodinggames/rts/game/units/custom/l609;)Lcom/corrodinggames/rts/game/units/custom/j607;

    move-result-object v3

    .line 1672
    invoke-virtual {v3, v15}, Lcom/corrodinggames/rts/game/units/ce454;->b(Lcom/corrodinggames/rts/game/p352;)V

    .line 1673
    iput v5, v3, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    .line 1674
    iput v6, v3, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    .line 1676
    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v5

    if-nez v5, :cond_32

    .line 1678
    const/high16 v5, 0x42b40000    # 90.0f

    iput v5, v3, Lcom/corrodinggames/rts/game/units/ce454;->ci:F

    .line 1682
    :cond_32
    iget-boolean v2, v2, Lcom/corrodinggames/rts/game/units/custom/l609;->eI:Z

    if-eqz v2, :cond_2f

    .line 1684
    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/units/ce454;->cE()V

    move-object v2, v3

    .line 1688
    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/j607;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/j607;->cT()V

    goto :goto_16

    .line 1720
    :cond_33
    if-nez p2, :cond_39

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/n/p1300;->q:Z

    if-nez v2, :cond_39

    .line 1724
    :cond_34
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/corrodinggames/rts/game/i345;->a(FF)V

    .line 1726
    const/4 v4, 0x0

    .line 1727
    const/4 v2, 0x0

    .line 1731
    sget-object v3, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v5, 0x0

    move v3, v2

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 1734
    instance-of v7, v2, Lcom/corrodinggames/rts/game/units/cd453;

    if-eqz v7, :cond_35

    .line 1736
    add-int/lit8 v3, v3, 0x1

    .line 1742
    :goto_18
    iget-object v7, v2, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    if-ne v7, v8, :cond_47

    iget-boolean v7, v2, Lcom/corrodinggames/rts/game/units/ce454;->bR:Z

    if-eqz v7, :cond_47

    .line 1744
    iget v5, v2, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v2, v2, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/corrodinggames/rts/game/i345;->b(FF)V

    .line 1745
    const/4 v2, 0x1

    :goto_19
    move v5, v2

    .line 1747
    goto :goto_17

    .line 1740
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1748
    :cond_36
    if-nez v5, :cond_38

    .line 1750
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_37
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 1752
    iget-object v6, v2, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    if-ne v6, v7, :cond_37

    .line 1754
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->r()Z

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->s()Z

    move-result v6

    if-nez v6, :cond_37

    .line 1759
    iget v6, v2, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v2, v2, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/corrodinggames/rts/game/i345;->b(FF)V

    goto :goto_1a

    .line 1764
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "there are "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " units on this map and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " trees"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50802
    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1772
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->al:Landroid/content/Context;

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/bt894;->b(Landroid/content/Context;)Lcom/corrodinggames/rts/gameFramework/bt894;

    move-result-object v2

    .line 50804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->di:Ljava/lang/String;

    .line 1772
    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/gameFramework/bt894;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/bu895;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/corrodinggames/rts/game/i345;->A:Lcom/corrodinggames/rts/gameFramework/bu895;

    .line 1774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/b/b326;Z)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/corrodinggames/rts/gameFramework/f/q996;->a(Z)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->cc:Lcom/corrodinggames/rts/gameFramework/c904;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/c904;->a()V

    .line 1782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bS:Lcom/corrodinggames/rts/gameFramework/al805;

    .line 50805
    const/4 v3, 0x1

    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/al805;->a:I

    .line 1784
    if-nez p2, :cond_3a

    .line 1786
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/d/a917;->a()V

    .line 1789
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bX:Lcom/corrodinggames/rts/gameFramework/aj803;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/corrodinggames/rts/gameFramework/aj803;->a(Z)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/corrodinggames/rts/gameFramework/f/i988;->a(Z)V

    .line 1793
    if-nez p2, :cond_3b

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/f/i988;->h()V

    .line 1800
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/i345;->ai()V

    .line 1803
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bs:Z

    if-eqz v2, :cond_3c

    .line 1812
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/f/i988;->h()V

    .line 1815
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/units/f/c738;->a(Lcom/corrodinggames/rts/game/b/b326;)V

    .line 1817
    if-nez p2, :cond_3d

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bK:Lcom/corrodinggames/rts/gameFramework/ax817;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/ax817;->b()V

    .line 1824
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bV:Lcom/corrodinggames/rts/gameFramework/bv896;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/bv896;->a()V

    .line 1850
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 1852
    instance-of v4, v2, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_3e

    .line 1854
    check-cast v2, Lcom/corrodinggames/rts/game/units/bp437;

    .line 1855
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/corrodinggames/rts/game/units/bp437;->a(Z)V

    goto :goto_1b

    .line 1859
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->A:Lcom/corrodinggames/rts/gameFramework/bu895;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/corrodinggames/rts/gameFramework/bu895;->e:Z

    .line 1861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->B:Lcom/corrodinggames/rts/gameFramework/bt894;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/i345;->al:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/gameFramework/bt894;->a(Landroid/content/Context;)V

    .line 1865
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bD:Z

    .line 1866
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bE:Z

    .line 1867
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/i345;->bF:Z

    .line 1870
    sget v2, Lcom/corrodinggames/rts/gameFramework/ac796;->a:I

    move/from16 v0, p3

    if-eq v0, v2, :cond_40

    .line 1872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->hasPlayedGameOrSeenHelp:Z

    if-nez v2, :cond_40

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->hasPlayedGameOrSeenHelp:Z

    .line 1875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->save()Z

    .line 1880
    :cond_40
    const/4 v2, 0x0

    :goto_1c
    const/4 v3, 0x5

    if-ge v2, v3, :cond_41

    .line 1882
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1880
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1886
    :cond_41
    sget-boolean v2, Lcom/corrodinggames/rts/gameFramework/k1104;->aR:Z

    if-nez v2, :cond_42

    .line 1888
    const-string v2, "RustedWarfare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNativeHeapSize"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const-string v2, "RustedWarfare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNativeHeapAllocatedSize"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const-string v2, "RustedWarfare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNativeHeapFreeSize"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    const-string v2, "RustedWarfare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Runtime.getRuntime().maxMemory()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->dh:Lcom/corrodinggames/rts/gameFramework/ak804;

    if-eqz v2, :cond_43

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->dh:Lcom/corrodinggames/rts/gameFramework/ak804;

    .line 50807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/corrodinggames/rts/gameFramework/ak804;->c:J

    .line 1900
    :cond_43
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/i345;->F:F

    .line 1904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->G:Z

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-eqz v2, :cond_44

    .line 1906
    const-string v2, "Disabling network for singleplayer"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    .line 1913
    :cond_44
    invoke-static {}, Lcom/corrodinggames/rts/game/i345;->ab()Z

    move-result v2

    if-nez v2, :cond_45

    .line 1915
    sget v2, Lcom/corrodinggames/rts/gameFramework/ac796;->c:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_46

    .line 1917
    const-string v2, "Not starting replay recording as we are loading a save"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1926
    :cond_45
    :goto_1d
    sget-boolean v2, Lcom/corrodinggames/rts/gameFramework/k/k1099;->m:Z

    goto/16 :goto_5

    .line 1921
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/corrodinggames/rts/gameFramework/bp890;->a(Z)V

    goto :goto_1d

    :cond_47
    move v2, v5

    goto/16 :goto_19

    :cond_48
    move v3, v2

    goto/16 :goto_e

    :cond_49
    move v13, v2

    goto/16 :goto_d

    :cond_4a
    move-object v2, v6

    goto/16 :goto_10
.end method
