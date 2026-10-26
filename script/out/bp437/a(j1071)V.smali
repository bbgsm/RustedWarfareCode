.method public strictfp a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V
    .locals 7

    const/4 v3, 0x0

    .line 524
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    .line 14188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 525
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    .line 526
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v0, v0, v3

    .line 15188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 526
    iput v1, v0, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    .line 16182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 528
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 530
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-lez v0, :cond_0

    .line 532
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->Q(I)V

    .line 535
    :cond_0
    const/16 v0, 0x1e

    .line 17101
    iget v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->c:I

    .line 536
    const/16 v2, 0x2a

    if-lt v1, v2, :cond_1

    .line 17182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    :cond_1
    move v2, v3

    .line 541
    :goto_0
    if-ge v2, v0, :cond_3

    .line 545
    invoke-direct {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->Q(I)V

    .line 547
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    array-length v1, v1

    if-lt v2, v1, :cond_1e

    .line 549
    const-string v1, "Too many waypoints:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 553
    :goto_1
    iget-object v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v4, v4, v1

    if-nez v4, :cond_2

    .line 555
    iget-object v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    new-instance v5, Lcom/corrodinggames/rts/game/units/en734;

    invoke-direct {v5}, Lcom/corrodinggames/rts/game/units/en734;-><init>()V

    aput-object v5, v4, v1

    .line 557
    :cond_2
    iget-object v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v1, v4, v1

    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/game/units/en734;->a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :cond_3
    const-class v0, Lcom/corrodinggames/rts/game/units/a384;

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/a384;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    .line 563
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v1, Lcom/corrodinggames/rts/game/units/a384;->a:Lcom/corrodinggames/rts/game/units/a384;

    if-ne v0, v1, :cond_5

    .line 565
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->H()Z

    move-result v0

    if-nez v0, :cond_4

    .line 567
    sget-object v0, Lcom/corrodinggames/rts/game/units/a384;->b:Lcom/corrodinggames/rts/game/units/a384;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    .line 18101
    :cond_4
    iget v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->c:I

    .line 570
    const/16 v1, 0x4a

    if-ge v0, v1, :cond_5

    .line 572
    sget-object v0, Lcom/corrodinggames/rts/game/units/a384;->b:Lcom/corrodinggames/rts/game/units/a384;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    .line 18261
    :cond_5
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 19188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 580
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->U:F

    .line 20188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 581
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->W:F

    .line 21188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 582
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    .line 22176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 583
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 22188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 584
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 23188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 585
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 24188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 586
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 587
    invoke-virtual {p1}, Lcom/corrodinggames/rts/gameFramework/j/j1071;->c()Lcom/corrodinggames/rts/game/units/bp437;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 25176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 588
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    .line 26176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 589
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ah:Z

    .line 27176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 590
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->al:Z

    .line 27188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 591
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->am:F

    .line 28188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 592
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->an:F

    .line 29188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 593
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ao:F

    .line 30182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 594
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ap:I

    .line 31101
    iget v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->c:I

    .line 596
    const/16 v1, 0x12

    if-lt v0, v1, :cond_6

    .line 31182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 598
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ae:I

    .line 32101
    :cond_6
    iget v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->c:I

    .line 602
    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    .line 32182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    move v0, v3

    .line 606
    :goto_2
    if-ge v0, v1, :cond_a

    .line 608
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->h(I)V

    .line 610
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    .line 612
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    new-instance v6, Lcom/corrodinggames/rts/game/units/bx445;

    invoke-direct {v6}, Lcom/corrodinggames/rts/game/units/bx445;-><init>()V

    aput-object v6, v2, v0

    .line 614
    :cond_7
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/corrodinggames/rts/game/units/bx445;->a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v3

    .line 621
    :goto_3
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_a

    .line 623
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->h(I)V

    .line 625
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v1, v1, v0

    if-nez v1, :cond_9

    .line 627
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    new-instance v2, Lcom/corrodinggames/rts/game/units/bx445;

    invoke-direct {v2}, Lcom/corrodinggames/rts/game/units/bx445;-><init>()V

    aput-object v2, v1, v0

    .line 629
    :cond_9
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/game/units/bx445;->a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 33182
    :cond_a
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 633
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 34182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 634
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    .line 35170
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 638
    if-lez v0, :cond_b

    .line 35188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 640
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    .line 36188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 641
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    .line 644
    :cond_b
    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    .line 37188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 646
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    .line 38188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 647
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    .line 650
    :cond_c
    const/4 v1, 0x3

    if-lt v0, v1, :cond_d

    .line 39176
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    .line 652
    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    .line 655
    :cond_d
    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    .line 39188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 657
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ak:F

    .line 40182
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 658
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 662
    :cond_e
    const/4 v1, 0x5

    if-lt v0, v1, :cond_f

    .line 40188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 664
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 667
    :cond_f
    const/4 v1, 0x6

    if-lt v0, v1, :cond_10

    .line 41188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 669
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    .line 42176
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    .line 670
    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    .line 43176
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    .line 671
    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->au:Z

    .line 673
    :cond_10
    const/4 v1, 0x7

    if-lt v0, v1, :cond_11

    .line 43550
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 676
    iput-short v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->aj:S

    .line 679
    :cond_11
    const/16 v1, 0x8

    if-lt v0, v1, :cond_12

    .line 44188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 682
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    .line 685
    :cond_12
    const/16 v1, 0x9

    if-lt v0, v1, :cond_13

    .line 45182
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 688
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    .line 691
    :cond_13
    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    .line 45188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 693
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Z:F

    .line 696
    :cond_14
    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 46188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 698
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    .line 47188
    iget-object v1, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 699
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->aC:F

    .line 702
    :cond_15
    const/16 v1, 0xc

    if-lt v0, v1, :cond_16

    .line 48550
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 48102
    if-gtz v2, :cond_17

    .line 48104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->br:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    .line 711
    :cond_16
    :goto_4
    invoke-super {p0, p1}, Lcom/corrodinggames/rts/game/units/c449;->a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V

    .line 716
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->bX:Z

    if-nez v0, :cond_1c

    .line 718
    invoke-static {v4, v5, v3}, Lcom/corrodinggames/rts/gameFramework/ah801;->a(JZ)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    move v0, v3

    .line 720
    :goto_5
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-ge v0, v1, :cond_1c

    .line 723
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v1, v1, v0

    if-nez v1, :cond_1b

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readIn: convertUnitIds is null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waypointsCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 720
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 48109
    :cond_17
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->br:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    if-nez v0, :cond_18

    .line 48111
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->br:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    .line 48119
    :goto_7
    iget-object v6, p0, Lcom/corrodinggames/rts/game/units/bp437;->br:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    .line 48121
    const-string v0, "s"

    invoke-virtual {p1, v0, v3}, Lcom/corrodinggames/rts/gameFramework/j/j1071;->a(Ljava/lang/String;Z)V

    move v1, v3

    .line 48123
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 48125
    const-class v0, Lcom/corrodinggames/rts/game/units/g/b748;

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/g/b748;

    .line 48126
    if-nez v0, :cond_19

    .line 48128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown status effect type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48115
    :cond_18
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->br:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->clear()V

    goto :goto_7

    .line 48131
    :cond_19
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/g/b748;->a()Lcom/corrodinggames/rts/game/units/g/a747;

    move-result-object v0

    .line 48132
    invoke-virtual {v0, p0, p1}, Lcom/corrodinggames/rts/game/units/g/a747;->a(Lcom/corrodinggames/rts/game/units/bp437;Lcom/corrodinggames/rts/gameFramework/j/j1071;)V

    .line 48133
    invoke-virtual {v6, v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    .line 48123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 48137
    :cond_1a
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/j1071;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 729
    :cond_1b
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/en734;->a()V

    goto :goto_6

    .line 736
    :cond_1c
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->S()V

    .line 738
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->bX:Z

    if-eqz v0, :cond_1d

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ey:Z

    .line 743
    :cond_1d
    return-void

    :cond_1e
    move v1, v2

    goto/16 :goto_1
.end method
