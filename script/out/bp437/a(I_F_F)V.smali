.method private strictfp a(IFF)V
    .locals 2

    .line 8624
    invoke-direct {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->h(I)V

    .line 8626
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 8628
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    new-instance v1, Lcom/corrodinggames/rts/game/units/bx445;

    invoke-direct {v1}, Lcom/corrodinggames/rts/game/units/bx445;-><init>()V

    aput-object v1, v0, p1

    .line 8631
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    .line 8632
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v0, v0, p1

    iput p3, v0, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    .line 8633
    return-void
.end method
