.method private c(Z)Lcom/corrodinggames/rts/gameFramework/n/s1303;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2059
    new-instance v5, Lcom/corrodinggames/rts/gameFramework/n/s1303;

    invoke-direct {v5, p0}, Lcom/corrodinggames/rts/gameFramework/n/s1303;-><init>(Lcom/corrodinggames/rts/gameFramework/n/p1300;)V

    .line 2062
    iput-boolean v4, v5, Lcom/corrodinggames/rts/gameFramework/n/s1303;->a:Z

    .line 2066
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->v:I

    .line 2068
    const/4 v1, 0x0

    .line 2070
    iget-boolean v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->p:Z

    if-eqz v2, :cond_1

    .line 2072
    sget-object v1, Lcom/corrodinggames/rts/game/units/cj459;->t:Lcom/corrodinggames/rts/game/units/cj459;

    .line 2171
    :cond_0
    :goto_0
    invoke-virtual {v5, v1, v0}, Lcom/corrodinggames/rts/gameFramework/n/s1303;->a(Lcom/corrodinggames/rts/game/units/el732;I)V

    .line 2176
    return-object v5

    .line 2078
    :cond_1
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-nez v2, :cond_2

    .line 2080
    add-int/lit8 v0, v0, 0x1

    .line 2081
    sget-object v1, Lcom/corrodinggames/rts/game/units/cj459;->i:Lcom/corrodinggames/rts/game/units/cj459;

    .line 2084
    :cond_2
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-ne v2, v3, :cond_3

    .line 2086
    sget-object v1, Lcom/corrodinggames/rts/game/units/cj459;->j:Lcom/corrodinggames/rts/game/units/cj459;

    .line 2089
    :cond_3
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-ne v2, v9, :cond_4

    .line 2091
    sget-object v1, Lcom/corrodinggames/rts/game/units/cj459;->l:Lcom/corrodinggames/rts/game/units/cj459;

    .line 2095
    :cond_4
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    .line 2097
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    .line 2098
    sget-object v1, Lcom/corrodinggames/rts/game/units/cj459;->w:Lcom/corrodinggames/rts/game/units/cj459;

    .line 2101
    :cond_5
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-ne v2, v7, :cond_6

    .line 2103
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    .line 2104
    sget-object v1, Lcom/corrodinggames/rts/game/units/cj459;->x:Lcom/corrodinggames/rts/game/units/cj459;

    .line 2106
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 2108
    sget-object v1, Lcom/corrodinggames/rts/game/units/cj459;->n:Lcom/corrodinggames/rts/game/units/cj459;

    .line 2112
    :cond_6
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-ne v2, v8, :cond_7

    .line 2117
    iput-boolean v3, v5, Lcom/corrodinggames/rts/gameFramework/n/s1303;->a:Z

    .line 2120
    sget-object v1, Lcom/corrodinggames/rts/game/units/cj459;->F:Lcom/corrodinggames/rts/game/units/cj459;

    move v0, v3

    .line 2123
    :cond_7
    if-eqz p1, :cond_0

    .line 2126
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    .line 2131
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    if-ne v2, v3, :cond_9

    .line 2133
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-le v2, v9, :cond_a

    .line 2160
    :cond_8
    :goto_1
    if-eqz v3, :cond_0

    .line 2162
    iput v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    .line 2163
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->v:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->v:I

    .line 2164
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    goto :goto_0

    .line 2138
    :cond_9
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    if-ge v2, v8, :cond_b

    .line 2140
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-gt v2, v7, :cond_8

    :cond_a
    move v3, v4

    goto :goto_1

    .line 2147
    :cond_b
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-le v2, v8, :cond_d

    move v2, v3

    .line 2152
    :goto_2
    iget v6, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    if-le v6, v7, :cond_c

    iget v6, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    :cond_c
    move v3, v2

    goto :goto_1

    :cond_d
    move v2, v4

    goto :goto_2
.end method
