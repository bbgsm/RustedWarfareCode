.method public final strictfp a(II[[BB)B
    .locals 5

    const/4 v0, 0x0

    .line 5569
    .line 5571
    iget v1, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    .line 5572
    iget v2, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    .line 5589
    if-lez p1, :cond_2

    .line 5592
    add-int/lit8 v3, p1, -0x1

    aget-object v3, p3, v3

    aget-byte v3, v3, p2

    if-lt v3, p4, :cond_0

    const/16 v0, -0x80

    .line 5595
    :cond_0
    if-lez p2, :cond_1

    .line 5598
    add-int/lit8 v3, p1, -0x1

    aget-object v3, p3, v3

    add-int/lit8 v4, p2, -0x1

    aget-byte v3, v3, v4

    if-lt v3, p4, :cond_1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 5600
    :cond_1
    add-int/lit8 v3, v2, -0x1

    if-ge p2, v3, :cond_2

    .line 5603
    add-int/lit8 v3, p1, -0x1

    aget-object v3, p3, v3

    add-int/lit8 v4, p2, 0x1

    aget-byte v3, v3, v4

    if-lt v3, p4, :cond_2

    add-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 5606
    :cond_2
    if-lez p2, :cond_4

    .line 5609
    aget-object v3, p3, p1

    add-int/lit8 v4, p2, -0x1

    aget-byte v3, v3, v4

    if-lt v3, p4, :cond_3

    add-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 5611
    :cond_3
    add-int/lit8 v3, v1, -0x1

    if-ge p1, v3, :cond_4

    .line 5614
    add-int/lit8 v3, p1, 0x1

    aget-object v3, p3, v3

    add-int/lit8 v4, p2, -0x1

    aget-byte v3, v3, v4

    if-lt v3, p4, :cond_4

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 5618
    :cond_4
    add-int/lit8 v3, v1, -0x1

    if-ge p1, v3, :cond_5

    .line 5621
    add-int/lit8 v3, p1, 0x1

    aget-object v3, p3, v3

    aget-byte v3, v3, p2

    if-lt v3, p4, :cond_5

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 5624
    :cond_5
    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_7

    .line 5627
    aget-object v2, p3, p1

    add-int/lit8 v3, p2, 0x1

    aget-byte v2, v2, v3

    if-lt v2, p4, :cond_6

    add-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    .line 5629
    :cond_6
    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_7

    .line 5632
    add-int/lit8 v1, p1, 0x1

    aget-object v1, p3, v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    if-lt v1, p4, :cond_7

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 5636
    :cond_7
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_8

    .line 5638
    const/4 v0, -0x1

    .line 5641
    :cond_8
    return v0
.end method
