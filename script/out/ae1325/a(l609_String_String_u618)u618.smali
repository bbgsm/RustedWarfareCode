.method public final a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/u618;)Lcom/corrodinggames/rts/game/units/custom/u618;
    .locals 1

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    if-nez v0, :cond_0

    .line 1080
    :goto_0
    return-object p4

    .line 1079
    :cond_0
    invoke-virtual {p1, v0, p3, p2}, Lcom/corrodinggames/rts/game/units/custom/l609;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/u618;

    move-result-object p4

    goto :goto_0
.end method
