.method private static a(ILcom/corrodinggames/rts/game/units/ce454;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2580
    instance-of v2, p1, Lcom/corrodinggames/rts/game/units/bp437;

    if-nez v2, :cond_1

    .line 2629
    :cond_0
    :goto_0
    return v0

    .line 2585
    :cond_1
    iget-boolean v2, p1, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->cw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2590
    sget v2, Lcom/corrodinggames/rts/gameFramework/n/v1306;->a:I

    if-eq p0, v2, :cond_0

    .line 2594
    sget v2, Lcom/corrodinggames/rts/gameFramework/n/v1306;->b:I

    if-ne p0, v2, :cond_2

    move v0, v1

    .line 2596
    goto :goto_0

    .line 2598
    :cond_2
    sget v2, Lcom/corrodinggames/rts/gameFramework/n/v1306;->c:I

    if-ne p0, v2, :cond_3

    .line 2600
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v0

    goto :goto_0

    .line 2602
    :cond_3
    sget v2, Lcom/corrodinggames/rts/gameFramework/n/v1306;->e:I

    if-ne p0, v2, :cond_5

    .line 2604
    instance-of v2, p1, Lcom/corrodinggames/rts/game/units/d/g656;

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lcom/corrodinggames/rts/game/units/ce454;->bR:Z

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 2606
    :cond_5
    sget v2, Lcom/corrodinggames/rts/gameFramework/n/v1306;->d:I

    if-ne p0, v2, :cond_6

    .line 2608
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->br()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/corrodinggames/rts/game/units/d/a/c631;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/corrodinggames/rts/game/units/d/j659;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2610
    :cond_6
    sget v2, Lcom/corrodinggames/rts/gameFramework/n/v1306;->f:I

    if-ne p0, v2, :cond_8

    .line 2612
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->br()Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 2614
    goto :goto_0

    .line 2617
    :cond_7
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->ai()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2619
    goto :goto_0

    .line 2624
    :cond_8
    sget v1, Lcom/corrodinggames/rts/gameFramework/n/v1306;->g:I

    if-ne p0, v1, :cond_0

    goto :goto_0
.end method
