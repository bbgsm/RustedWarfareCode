.method private a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V
    .locals 1

    .line 1932
    if-nez p2, :cond_0

    .line 1934
    sget-object p2, Lcom/corrodinggames/rts/game/units/cj459;->i:Lcom/corrodinggames/rts/game/units/cj459;

    .line 1936
    :cond_0
    invoke-static {p2}, Lcom/corrodinggames/rts/game/units/custom/l609;->c(Lcom/corrodinggames/rts/game/units/el732;)Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v0

    .line 1937
    if-eqz v0, :cond_1

    move-object p2, v0

    .line 1942
    :cond_1
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;

    invoke-direct {v0, p0}, Lcom/corrodinggames/rts/gameFramework/n/u1305;-><init>(Lcom/corrodinggames/rts/gameFramework/n/p1300;)V

    .line 1943
    iput-object p2, v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;->a:Lcom/corrodinggames/rts/game/units/el732;

    .line 1944
    iput p3, v0, Lcom/corrodinggames/rts/gameFramework/n/u1305;->b:F

    .line 1945
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1947
    return-void
.end method
