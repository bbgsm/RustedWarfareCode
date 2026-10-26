.method public final strictfp d(F)V
    .locals 14

    const/4 v13, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 5970
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v6

    .line 5974
    sget-boolean v0, Lcom/corrodinggames/rts/game/b/b326;->a:Z

    if-eqz v0, :cond_1

    .line 5976
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ar:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ar:F

    .line 5977
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ar:F

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 5981
    iput v3, p0, Lcom/corrodinggames/rts/game/b/b326;->ar:F

    .line 5982
    iget-wide v0, p0, Lcom/corrodinggames/rts/game/b/b326;->aq:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_0

    .line 5984
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seeThoughFogOfWarTimes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/corrodinggames/rts/game/b/b326;->aq:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Lcom/corrodinggames/rts/gameFramework/cf910;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 5985
    iput-wide v10, p0, Lcom/corrodinggames/rts/game/b/b326;->aq:J

    .line 5987
    :cond_0
    iget-wide v0, p0, Lcom/corrodinggames/rts/game/b/b326;->aq:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_1

    .line 5989
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seeThoughFogOfWarTimes negative: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/corrodinggames/rts/game/b/b326;->aq:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Lcom/corrodinggames/rts/gameFramework/cf910;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 5990
    iput-wide v10, p0, Lcom/corrodinggames/rts/game/b/b326;->aq:J

    .line 5996
    :cond_1
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/b/b326;->G:Z

    if-eqz v0, :cond_e

    .line 6001
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/b/b326;->h()V

    .line 6005
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->as:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->as:F

    .line 6008
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->as:F

    const/high16 v1, 0x43820000    # 260.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 6010
    iput v3, p0, Lcom/corrodinggames/rts/game/b/b326;->as:F

    .line 6018
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->et:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    .line 48109
    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->c:[Lcom/corrodinggames/rts/gameFramework/ah801;

    .line 6019
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/ah801;->et:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->size()I

    move-result v8

    move v1, v2

    move v3, v2

    .line 6023
    :goto_0
    sget v0, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v3, v0, :cond_9

    .line 6025
    invoke-static {v3}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v4

    .line 6026
    if-eqz v4, :cond_f

    iget-boolean v0, v4, Lcom/corrodinggames/rts/game/p352;->J:Z

    if-nez v0, :cond_f

    move v1, v2

    .line 6031
    :goto_1
    if-ge v1, v8, :cond_3

    .line 6033
    aget-object v0, v7, v1

    .line 6034
    instance-of v9, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v9, :cond_2

    .line 6036
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 6037
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->bq()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 6039
    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->g(Lcom/corrodinggames/rts/game/p352;)V

    .line 6031
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6044
    :cond_3
    iget-object v0, v4, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    if-nez v0, :cond_4

    .line 6046
    const-string v0, "fogOfWar_map==null for:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 6049
    :cond_4
    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/p352;->m()Z

    move-result v9

    .line 6050
    iget-object v10, v4, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    .line 6051
    iget-object v11, p0, Lcom/corrodinggames/rts/game/b/b326;->O:[[B

    move v0, v2

    move v1, v2

    .line 6053
    :goto_2
    iget v4, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    if-ge v1, v4, :cond_7

    move v4, v2

    .line 6055
    :goto_3
    iget v12, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    if-ge v4, v12, :cond_6

    .line 6057
    aget-object v12, v10, v1

    aget-byte v12, v12, v4

    if-ge v12, v13, :cond_5

    .line 6059
    aget-object v12, v10, v1

    aput-byte v13, v12, v4

    .line 6061
    if-eqz v9, :cond_5

    .line 6063
    sget-object v0, Lcom/corrodinggames/rts/game/b/b326;->am:Lcom/corrodinggames/rts/game/b/e329;

    invoke-virtual {v0, v1, v4}, Lcom/corrodinggames/rts/game/b/e329;->a(II)V

    .line 6069
    aget-object v0, v11, v1

    const/16 v12, 0x7f

    aput-byte v12, v0, v4

    move v0, v5

    .line 6055
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 6053
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6077
    :cond_7
    if-eqz v0, :cond_8

    .line 6079
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    iput-boolean v5, v0, Lcom/corrodinggames/rts/gameFramework/f/q996;->O:Z

    :cond_8
    move v0, v5

    .line 6023
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_9
    move v3, v2

    .line 6093
    :goto_5
    if-ge v3, v8, :cond_b

    .line 6095
    aget-object v0, v7, v3

    .line 6096
    instance-of v4, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_a

    .line 6098
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 6099
    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bX:Z

    if-nez v4, :cond_a

    .line 6101
    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(Z)V

    .line 6093
    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 6108
    :cond_b
    if-eqz v1, :cond_e

    move v1, v2

    .line 6111
    :goto_6
    if-ge v1, v8, :cond_e

    .line 6113
    aget-object v0, v7, v1

    .line 6114
    instance-of v3, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v3, :cond_d

    .line 6116
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 6117
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->bq()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 48216
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v3

    .line 48225
    iget-object v4, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v5, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-eq v4, v5, :cond_d

    .line 48227
    iget-object v4, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    iget v4, v4, Lcom/corrodinggames/rts/game/p352;->l:I

    if-ltz v4, :cond_d

    iget-object v4, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    iget v4, v4, Lcom/corrodinggames/rts/game/p352;->l:I

    sget v5, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v4, v5, :cond_d

    .line 48229
    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->dH:[Lcom/corrodinggames/rts/game/units/cf455;

    iget-object v5, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    iget v5, v5, Lcom/corrodinggames/rts/game/p352;->l:I

    aget-object v4, v4, v5

    .line 48231
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/cf455;->c:Lcom/corrodinggames/rts/gameFramework/d/a917;

    if-eqz v5, :cond_c

    .line 48233
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/cf455;->c:Lcom/corrodinggames/rts/gameFramework/d/a917;

    iget-boolean v5, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->c:Z

    if-eqz v5, :cond_c

    .line 48235
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/corrodinggames/rts/game/units/cf455;->c:Lcom/corrodinggames/rts/gameFramework/d/a917;

    .line 48239
    :cond_c
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/cf455;->c:Lcom/corrodinggames/rts/gameFramework/d/a917;

    if-nez v5, :cond_d

    .line 48241
    iget-boolean v5, v4, Lcom/corrodinggames/rts/game/units/cf455;->a:Z

    if-eqz v5, :cond_d

    .line 48244
    iget-object v5, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/game/units/ce454;->d(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v5

    .line 48245
    if-nez v5, :cond_d

    .line 48250
    new-instance v5, Lcom/corrodinggames/rts/gameFramework/d/a917;

    invoke-direct {v5}, Lcom/corrodinggames/rts/gameFramework/d/a917;-><init>()V

    .line 48251
    iput-object v5, v4, Lcom/corrodinggames/rts/game/units/cf455;->c:Lcom/corrodinggames/rts/gameFramework/d/a917;

    .line 48253
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v6

    iput-object v6, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->d:Lcom/corrodinggames/rts/game/units/el732;

    .line 48254
    iget v6, v0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iput v6, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->g:F

    .line 48255
    iget v6, v0, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iput v6, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->h:F

    .line 48256
    iput-boolean v2, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->n:Z

    .line 48258
    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iput-object v6, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->e:Lcom/corrodinggames/rts/game/p352;

    .line 48259
    iget v4, v4, Lcom/corrodinggames/rts/game/units/cf455;->b:I

    iput v4, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->f:I

    .line 48260
    iget-object v3, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    iput-object v3, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->j:Lcom/corrodinggames/rts/game/p352;

    .line 48263
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->d_()Z

    move-result v3

    iput-boolean v3, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->u:Z

    .line 48265
    iput-object v0, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->v:Lcom/corrodinggames/rts/game/units/ce454;

    .line 6111
    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 6137
    :cond_e
    return-void

    :cond_f
    move v0, v1

    goto/16 :goto_4
.end method
