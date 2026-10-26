.method public strictfp a(Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V
    .locals 5

    const/4 v1, 0x0

    .line 404
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 405
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 406
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 408
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 410
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 412
    invoke-virtual {p1, v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    move v0, v1

    .line 413
    :goto_0
    if-ge v0, v2, :cond_0

    .line 415
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/corrodinggames/rts/game/units/en734;->a(Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Ljava/lang/Enum;)V

    .line 421
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    .line 422
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v2, :cond_1

    .line 424
    const/4 v0, 0x0

    .line 427
    :cond_1
    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->b(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 428
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->U:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 429
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->W:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 430
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 431
    const-string v0, "pathing_active:"

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(Ljava/lang/String;)V

    .line 432
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 433
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 434
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 435
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 436
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 437
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 438
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ah:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 439
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->al:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 440
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->am:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 441
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->an:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 442
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ao:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 443
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ap:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 445
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ae:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 447
    const-string v0, "activePathCount:"

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(Ljava/lang/String;)V

    .line 449
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    move v0, v1

    .line 450
    :goto_1
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-ge v0, v2, :cond_2

    .line 452
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v2, v2, v0

    .line 12430
    iget v3, v2, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    invoke-virtual {p1, v3}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 12431
    iget v2, v2, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    invoke-virtual {p1, v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    :cond_2
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 458
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 474
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->b(I)V

    .line 477
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 478
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 481
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 482
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 485
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 488
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ak:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 489
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 492
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 495
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 496
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 497
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->au:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 500
    iget-short v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aj:S

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(S)V

    .line 503
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 506
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 509
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Z:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 512
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 513
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aC:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 13067
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->br:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    .line 13068
    if-nez v2, :cond_3

    move v0, v1

    .line 13077
    :goto_2
    int-to-short v3, v0

    invoke-virtual {p1, v3}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(S)V

    .line 13079
    if-eqz v0, :cond_5

    .line 13084
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->d(Ljava/lang/String;)V

    .line 13098
    iget-object v3, v2, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->b:[Ljava/lang/Object;

    .line 13087
    :goto_3
    iget v0, v2, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->a:I

    if-ge v1, v0, :cond_4

    .line 13089
    aget-object v0, v3, v1

    check-cast v0, Lcom/corrodinggames/rts/game/units/g/a747;

    .line 13090
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/g/a747;->a()Lcom/corrodinggames/rts/game/units/g/b748;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Ljava/lang/Enum;)V

    .line 13091
    invoke-virtual {v0, p0, p1}, Lcom/corrodinggames/rts/game/units/g/a747;->a(Lcom/corrodinggames/rts/game/units/bp437;Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V

    .line 13087
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 13074
    :cond_3
    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v0

    goto :goto_2

    .line 13094
    :cond_4
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->e(Ljava/lang/String;)V

    .line 519
    :cond_5
    invoke-super {p0, p1}, Lcom/corrodinggames/rts/game/units/c449;->a(Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V

    .line 520
    return-void
.end method
