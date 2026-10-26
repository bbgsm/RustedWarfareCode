.method private static strictfp d(Z)Lcom/corrodinggames/rts/gameFramework/m/fq1260;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 926
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    .line 927
    if-eqz p0, :cond_0

    .line 929
    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setAntiAlias(Z)V

    .line 930
    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setFilterBitmap(Z)V

    .line 931
    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setDither(Z)V

    .line 941
    :goto_0
    return-object v0

    .line 935
    :cond_0
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setAntiAlias(Z)V

    .line 936
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setFilterBitmap(Z)V

    .line 937
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setDither(Z)V

    goto :goto_0
.end method
