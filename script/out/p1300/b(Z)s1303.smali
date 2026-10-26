.method private b(Z)Lcom/corrodinggames/rts/gameFramework/n/s1303;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1981
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/n/s1303;

    invoke-direct {v4, p0}, Lcom/corrodinggames/rts/gameFramework/n/s1303;-><init>(Lcom/corrodinggames/rts/gameFramework/n/p1300;)V

    .line 2002
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_5

    .line 2004
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2005
    iget v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    div-int/lit8 v1, v1, 0x64

    .line 2006
    if-nez v0, :cond_3

    .line 2008
    const-string v1, "error maxTypeNum: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 2026
    :goto_0
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    if-lez v0, :cond_0

    .line 2028
    iget v3, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    .line 2031
    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    add-int/2addr v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v4, v0, v1}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Lcom/corrodinggames/rts/gameFramework/n/s1303;IF)V

    .line 2033
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    if-nez v2, :cond_1

    .line 2035
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0xb

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v4, v0, v1}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Lcom/corrodinggames/rts/gameFramework/n/s1303;IF)V

    .line 2039
    :cond_1
    if-eqz p1, :cond_2

    .line 2042
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    .line 2044
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->v:I

    .line 2051
    :cond_2
    return-object v4

    .line 2012
    :cond_3
    iget-object v5, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->T:Ljava/util/ArrayList;

    rem-int v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;

    .line 2014
    int-to-float v1, v1

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;->b:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 2015
    if-gtz v1, :cond_4

    move v1, v2

    .line 2016
    :cond_4
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;->a:Lcom/corrodinggames/rts/game/units/el732;

    invoke-virtual {v4, v0, v1}, Lcom/corrodinggames/rts/gameFramework/n/s1303;->b(Lcom/corrodinggames/rts/game/units/el732;I)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method
