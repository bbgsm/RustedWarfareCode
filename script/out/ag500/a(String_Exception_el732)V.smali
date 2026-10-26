.method public static a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/game/units/el732;)V
    .locals 2

    .line 5639
    const/4 v0, 0x0

    .line 5640
    instance-of v1, p2, Lcom/corrodinggames/rts/game/units/custom/l609;

    if-eqz v1, :cond_0

    .line 5642
    check-cast p2, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 5643
    iget-object v0, p2, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    .line 5645
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/gameFramework/i/b1019;)V

    .line 5646
    return-void
.end method
