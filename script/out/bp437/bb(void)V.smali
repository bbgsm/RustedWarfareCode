.method public final strictfp bb()V
    .locals 25

    .line 11142
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v5

    .line 11144
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v6

    invoke-interface {v6}, Lcom/corrodinggames/rts/game/units/el732;->p()Z

    move-result v6

    if-nez v6, :cond_2

    .line 11147
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->bI()Landroid/graphics/Rect;

    move-result-object v6

    .line 11153
    iget-object v7, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    sget-object v8, Lcom/corrodinggames/rts/game/units/bp437;->bn:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/b/b326;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 11154
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 11155
    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 11158
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    .line 11161
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 11162
    iget v10, v6, Landroid/graphics/Rect;->top:I

    .line 11165
    iget v11, v6, Landroid/graphics/Rect;->right:I

    .line 11166
    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    .line 11173
    iget-object v13, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v6, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->ct:F

    float-to-int v14, v6

    iget v6, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->cu:F

    float-to-int v15, v6

    iget-object v0, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v16, v0

    .line 52484
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v5

    .line 52485
    iget-object v0, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    move-object/from16 v17, v0

    .line 52488
    iget-object v5, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-object v5, v5, Lcom/corrodinggames/rts/gameFramework/f/i988;->ac:Lcom/corrodinggames/rts/game/units/a/s376;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/a/s376;->h()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v18

    .line 52493
    invoke-interface/range {v18 .. v18}, Lcom/corrodinggames/rts/game/units/el732;->o()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v19

    add-int v5, v9, v8

    move v6, v5

    .line 52496
    :goto_0
    add-int v5, v8, v11

    if-gt v6, v5, :cond_2

    add-int v5, v10, v7

    .line 52498
    :goto_1
    add-int v9, v12, v7

    if-gt v5, v9, :cond_1

    .line 52501
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v6, v5}, Lcom/corrodinggames/rts/game/units/d/f655;->a(Lcom/corrodinggames/rts/game/units/bp437;Lcom/corrodinggames/rts/game/units/el732;Lcom/corrodinggames/rts/game/units/cg456;II)Z

    move-result v9

    .line 52504
    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    move/from16 v20, v0

    mul-int v20, v20, v6

    sub-int v20, v20, v14

    .line 52505
    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    move/from16 v21, v0

    mul-int v21, v21, v5

    sub-int v21, v21, v15

    .line 52507
    iget-object v0, v13, Lcom/corrodinggames/rts/game/b/b326;->ao:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    move/from16 v23, v0

    add-int v23, v23, v20

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    move/from16 v24, v0

    add-int v24, v24, v21

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 52518
    if-eqz v9, :cond_0

    .line 52521
    iget-object v9, v13, Lcom/corrodinggames/rts/game/b/b326;->ao:Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/b326;->ae:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v9, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52498
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 52527
    :cond_0
    iget-object v9, v13, Lcom/corrodinggames/rts/game/b/b326;->ao:Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/b326;->ag:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v9, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52528
    iget-object v9, v13, Lcom/corrodinggames/rts/game/b/b326;->ao:Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/b326;->af:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v9, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 52496
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_0

    .line 11191
    :cond_2
    return-void
.end method
