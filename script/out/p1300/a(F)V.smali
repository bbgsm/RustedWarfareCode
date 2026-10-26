.method public final a(F)V
    .locals 14

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/high16 v12, 0x41b80000    # 23.0f

    const/high16 v11, 0x40000000    # 2.0f

    .line 1119
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v3

    .line 1122
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->i:Z

    if-eqz v0, :cond_2

    .line 1125
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 1127
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v5, Lcom/corrodinggames/rts/gameFramework/n/d1288;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v1, v5, :cond_0

    .line 1129
    iget-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    if-eqz v1, :cond_0

    .line 1136
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a()I

    move-result v1

    int-to-float v1, v1

    iget v5, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->ct:F

    .line 1137
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b()I

    move-result v6

    int-to-float v6, v6

    iget v7, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cu:F

    .line 1142
    iget v8, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cU:F

    .line 1143
    iget v9, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cU:F

    .line 1145
    iget v10, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->w:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, v8

    add-float v5, v10, v1

    .line 1146
    iget v1, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    add-float/2addr v1, v6

    .line 1156
    iget-boolean v6, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->C:Z

    if-eqz v6, :cond_1

    .line 1158
    sget-object v6, Lcom/corrodinggames/rts/gameFramework/d/c919;->s:[Lcom/corrodinggames/rts/gameFramework/d/g923;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    .line 1159
    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->B:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v1, v7}, Lcom/corrodinggames/rts/gameFramework/d/g923;->a(FFLandroid/graphics/Paint;)V

    .line 1160
    iget v6, v6, Lcom/corrodinggames/rts/gameFramework/d/g923;->c:I

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    sub-float/2addr v1, v6

    .line 1163
    :cond_1
    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->z:Lcom/corrodinggames/rts/game/units/custom/bu555;

    if-eqz v6, :cond_0

    .line 1168
    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->z:Lcom/corrodinggames/rts/game/units/custom/bu555;

    invoke-virtual {v6}, Lcom/corrodinggames/rts/game/units/custom/bu555;->b()Ljava/lang/String;

    move-result-object v6

    .line 1170
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1175
    iget-object v7, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->B:Landroid/graphics/Paint;

    invoke-interface {v7, v6, v5, v1, v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->N:Z

    if-nez v0, :cond_3

    .line 1192
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->B:F

    invoke-static {v0, p1}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->B:F

    .line 1193
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->B:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_a

    .line 1195
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->A:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_a

    .line 1197
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->A:F

    invoke-static {v0, p1}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->A:F

    .line 1201
    const/4 v0, 0x1

    .line 1209
    :goto_1
    if-eqz v0, :cond_6

    .line 1212
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    div-float/2addr v0, v11

    add-float/2addr v0, v12

    float-to-int v0, v0

    .line 1214
    iget-object v1, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "- Wave "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    div-float/2addr v4, v11

    int-to-float v5, v0

    iget-object v6, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1216
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->s:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1218
    iget-object v1, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->s:Ljava/lang/String;

    iget v4, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    div-float/2addr v4, v11

    int-to-float v0, v0

    iget-object v5, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v0, v5

    add-float/2addr v0, v11

    iget-object v5, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->F:Landroid/graphics/Paint;

    invoke-interface {v1, v2, v4, v0, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1283
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->k:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->N:Z

    if-eqz v0, :cond_5

    .line 1285
    invoke-direct {p0}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c()Lcom/corrodinggames/rts/gameFramework/n/q1301;

    move-result-object v1

    .line 1287
    if-eqz v1, :cond_5

    .line 1291
    iget v0, v1, Lcom/corrodinggames/rts/gameFramework/n/q1301;->e:I

    iget v2, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    div-int/lit16 v2, v2, 0x3e8

    .line 1295
    iget-object v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    div-float/2addr v4, v11

    add-float/2addr v4, v12

    float-to-int v4, v4

    .line 1297
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wave "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    iget-boolean v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    if-eqz v2, :cond_4

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Defeat - Wave "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    :cond_4
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget v5, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    div-float/2addr v5, v11

    int-to-float v6, v4

    iget-object v7, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    invoke-interface {v2, v0, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1308
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/n/q1301;->f:Ljava/lang/String;

    .line 1315
    if-eqz v0, :cond_5

    .line 1318
    iget-object v1, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget v2, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    div-float/2addr v2, v11

    int-to-float v3, v4

    iget-object v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v11

    iget-object v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->H:Landroid/graphics/Paint;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1326
    :cond_5
    return-void

    .line 1225
    :cond_6
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    div-float/2addr v0, v11

    add-float/2addr v0, v12

    float-to-int v1, v0

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Wave "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    iget-boolean v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    if-eqz v4, :cond_7

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Defeat - Wave "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    :cond_7
    iget-object v4, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget v5, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    div-float/2addr v5, v11

    int-to-float v6, v1

    iget-object v7, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    invoke-interface {v4, v0, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1248
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->t:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1252
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    if-nez v0, :cond_9

    .line 1254
    invoke-direct {p0, v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b(Z)Lcom/corrodinggames/rts/gameFramework/n/s1303;

    move-result-object v0

    .line 1261
    :goto_3
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/n/s1303;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->t:Ljava/lang/String;

    .line 1264
    :cond_8
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->t:Ljava/lang/String;

    .line 1266
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget v4, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    div-float/2addr v4, v11

    int-to-float v1, v1

    iget-object v5, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v1, v5

    add-float/2addr v1, v11

    iget-object v5, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->H:Landroid/graphics/Paint;

    invoke-interface {v2, v0, v4, v1, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1258
    :cond_9
    invoke-direct {p0, v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c(Z)Lcom/corrodinggames/rts/gameFramework/n/s1303;

    move-result-object v0

    goto :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method
