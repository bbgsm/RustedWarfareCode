.method private static a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;)V
    .locals 2

    .line 855
    invoke-static {p2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/ae1325;

    move-result-object v0

    .line 857
    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/custom/l609;->l(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;)V

    .line 871
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;I)V

    goto :goto_0
.end method
