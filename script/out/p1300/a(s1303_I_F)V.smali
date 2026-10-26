.method private a(Lcom/corrodinggames/rts/gameFramework/n/s1303;IF)V
    .locals 6

    .line 1953
    if-gez p2, :cond_0

    .line 1955
    const/4 p2, 0x0

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1960
    if-nez v0, :cond_1

    .line 1962
    const-string v1, "error maxTypeNum: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 1975
    :goto_0
    return-void

    .line 1967
    :cond_1
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    rem-int v0, p2, v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;

    .line 1969
    add-int/lit8 v1, p2, 0x3

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    iget v1, v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;->b:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    float-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1970
    int-to-float v1, v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(F)F

    move-result v1

    float-to-int v1, v1

    .line 1971
    if-gtz v1, :cond_2

    const/4 v1, 0x1

    .line 1972
    :cond_2
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;->a:Lcom/corrodinggames/rts/game/units/el732;

    invoke-virtual {p1, v0, v1}, Lcom/corrodinggames/rts/gameFramework/n/s1303;->b(Lcom/corrodinggames/rts/game/units/el732;I)V

    goto :goto_0
.end method
