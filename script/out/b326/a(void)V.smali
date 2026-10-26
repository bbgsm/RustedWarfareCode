.method public static strictfp a()V
    .locals 8

    .line 200
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->g:Landroid/graphics/Paint;

    const/16 v2, 0x96

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 204
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->g:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->g:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 208
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->h:Landroid/graphics/Paint;

    const/16 v2, 0x96

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 209
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->h:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->i:Landroid/graphics/Paint;

    const/16 v2, 0x96

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 214
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->i:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->j:Landroid/graphics/Paint;

    const/16 v2, 0x96

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 236
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v6

    .line 238
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v2, Lcom/corrodinggames/rts/R$drawable;->fog_smooth:I

    invoke-interface {v1, v2}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v5

    .line 249
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    const/16 v2, 0x161

    const/16 v3, 0x161

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(IIZ)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v1

    .line 250
    sput-object v1, Lcom/corrodinggames/rts/game/b/b326;->L:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/corrodinggames/rts/gameFramework/m/e1216;->m:Z

    .line 251
    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->L:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 7154
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/corrodinggames/rts/gameFramework/m/e1216;->w:Z

    .line 253
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget-object v2, Lcom/corrodinggames/rts/game/b/b326;->L:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-interface {v1, v2}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Lcom/corrodinggames/rts/gameFramework/m/e1216;)Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-result-object v1

    sput-object v1, Lcom/corrodinggames/rts/game/b/b326;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 257
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(IIZ)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v3

    .line 258
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0, v3}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Lcom/corrodinggames/rts/gameFramework/m/e1216;)Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-result-object v4

    .line 7475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 8475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 9475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 10475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 280
    const/16 v0, 0x10

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 281
    const/16 v0, 0x20

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 282
    const/16 v0, 0x40

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 283
    const/16 v0, -0x80

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 286
    const/16 v0, 0x30

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 287
    const/16 v0, 0x60

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 288
    const/16 v0, -0x40

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 289
    const/16 v0, -0x70

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a([IIILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 11475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 12475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 13475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 14475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 298
    const/16 v0, 0x70

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 299
    const/16 v0, -0x20

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_e

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_f

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 300
    const/16 v0, -0x30

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_10

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_11

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 301
    const/16 v0, -0x50

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_12

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_13

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 19475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_14

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 20475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x60

    aput v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_15

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 21475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_16

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 22475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_17

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 320
    const/16 v0, 0x14

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_18

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_19

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 321
    const/16 v0, 0x42

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1a

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1b

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 326
    const/16 v0, -0x7e

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1c

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1d

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 327
    const/16 v0, 0x21

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1e

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1f

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 331
    const/16 v0, 0x18

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_21

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 332
    const/16 v0, 0x41

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_23

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 338
    const/16 v0, -0x7c

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 339
    const/16 v0, 0x28

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_27

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 343
    const/16 v0, 0x1c

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_29

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 344
    const/16 v0, 0x43

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2a

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2b

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 345
    const/16 v0, -0x7a

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2d

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 346
    const/16 v0, 0x29

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2e

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->a(I[I)[I

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2f

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 35475
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_30

    invoke-static {v0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 373
    sget-object v0, Lcom/corrodinggames/rts/game/b/b326;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->n()V

    .line 376
    const/4 v0, 0x0

    sput-object v0, Lcom/corrodinggames/rts/game/b/b326;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 382
    const-string v0, "smoothFog load took:"

    invoke-static {v0, v6, v7}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    .line 397
    invoke-static {}, Lcom/corrodinggames/rts/game/b/b326;->b()V

    .line 403
    new-instance v0, Lcom/corrodinggames/rts/game/b/j334;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/corrodinggames/rts/game/b/j334;-><init>(FZ)V

    .line 404
    sput-object v0, Lcom/corrodinggames/rts/game/b/b326;->l:Lcom/corrodinggames/rts/game/b/j334;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/j334;->a()V

    .line 406
    new-instance v0, Lcom/corrodinggames/rts/game/b/j334;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/corrodinggames/rts/game/b/j334;-><init>(FZ)V

    .line 407
    sput-object v0, Lcom/corrodinggames/rts/game/b/b326;->m:Lcom/corrodinggames/rts/game/b/j334;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/j334;->a()V

    .line 413
    return-void

    .line 280
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 281
    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data

    .line 282
    :array_2
    .array-data 4
        0x8
        0x4
    .end array-data

    .line 283
    :array_3
    .array-data 4
        0x1
        0x8
    .end array-data

    .line 286
    :array_4
    .array-data 4
        0x2
        0x1
        0x4
    .end array-data

    .line 287
    :array_5
    .array-data 4
        0x4
        0x8
        0x2
    .end array-data

    .line 288
    :array_6
    .array-data 4
        0x8
        0x4
        0x1
    .end array-data

    .line 289
    :array_7
    .array-data 4
        0x1
        0x8
        0x2
    .end array-data

    .line 11475
    :array_8
    .array-data 4
        0x2
        0x5
        0x0
        0x5
    .end array-data

    .line 12475
    :array_9
    .array-data 4
        0x0
        0x5
        0x0
        0x3
    .end array-data

    .line 13475
    :array_a
    .array-data 4
        0x0
        0x3
        0x2
        0x3
    .end array-data

    .line 14475
    :array_b
    .array-data 4
        0x2
        0x3
        0x2
        0x5
    .end array-data

    .line 298
    :array_c
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x0
        0x2
        0x2
    .end array-data

    .line 299
    :array_e
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x2
        0x0
        0x2
    .end array-data

    .line 300
    :array_10
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x2
        0x0
        0x0
    .end array-data

    .line 301
    :array_12
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x2
        0x0
    .end array-data

    .line 19475
    :array_14
    .array-data 4
        0x1
        0x0
        0x1
        0x2
    .end array-data

    .line 20475
    :array_15
    .array-data 4
        0x0
        0x1
        0x2
        0x1
    .end array-data

    .line 21475
    :array_16
    .array-data 4
        0x2
        0x5
        0x0
        0x3
    .end array-data

    .line 22475
    :array_17
    .array-data 4
        0x0
        0x5
        0x2
        0x3
    .end array-data

    .line 320
    :array_18
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x0
        0x0
        0x3
    .end array-data

    .line 321
    :array_1a
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_1b
    .array-data 4
        0x1
        0x2
        0x0
        0x5
    .end array-data

    .line 326
    :array_1c
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x1
        0x0
        0x5
    .end array-data

    .line 327
    :array_1e
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x1
        0x2
        0x5
    .end array-data

    .line 331
    :array_20
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data

    .line 332
    :array_22
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x2
        0x2
        0x5
    .end array-data

    .line 338
    :array_24
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x1
        0x0
        0x3
    .end array-data

    .line 339
    :array_26
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_27
    .array-data 4
        0x2
        0x1
        0x2
        0x3
    .end array-data

    .line 343
    :array_28
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_29
    .array-data 4
        0x1
        0x0
        0x0
        0x3
        0x2
        0x3
    .end array-data

    .line 344
    :array_2a
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x2
        0x0
        0x5
        0x2
        0x5
    .end array-data

    .line 345
    :array_2c
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0x2
        0x3
    .end array-data

    .line 346
    :array_2e
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_2f
    .array-data 4
        0x2
        0x1
        0x0
        0x5
        0x0
        0x3
    .end array-data

    .line 35475
    :array_30
    .array-data 4
        0x1
        0x4
    .end array-data
.end method
