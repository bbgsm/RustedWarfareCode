.method private static a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V
    .locals 4

    .line 6979
    invoke-static {p0, p1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(J)F

    move-result v0

    float-to-double v0, v0

    .line 6980
    iget-wide v2, p2, Lcom/corrodinggames/rts/game/units/custom/ah501;->o:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lcom/corrodinggames/rts/game/units/custom/ah501;->o:D

    .line 6981
    return-void
.end method
