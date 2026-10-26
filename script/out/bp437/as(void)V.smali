.method public final strictfp as()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 8284
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    .line 8285
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    .line 8287
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 8289
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    .line 8290
    const v1, -0x3b864000    # -999.0f

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    .line 8291
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->au:Z

    .line 8295
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    .line 8297
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-nez v1, :cond_0

    .line 8299
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 8301
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    .line 8302
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    .line 8303
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    .line 8356
    :goto_0
    return-void

    .line 8308
    :cond_0
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 52425
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->f:Z

    .line 8312
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 8313
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 8316
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    .line 8317
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    .line 8318
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    .line 8321
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->L()V

    goto :goto_0

    .line 8327
    :cond_1
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 8329
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v1, v1, v0

    .line 52431
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->f:Z

    .line 8334
    :goto_1
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 8336
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v0

    .line 8334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8338
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    .line 8343
    :cond_3
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 8352
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->L()V

    .line 8355
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    goto :goto_0
.end method
