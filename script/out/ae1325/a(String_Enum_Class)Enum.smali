.method public static a(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 6

    .line 1718
    if-nez p0, :cond_1

    move-object v0, p1

    .line 1729
    :cond_0
    return-object v0

    .line 1723
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1724
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 1726
    check-cast v0, Ljava/lang/Enum;

    .line 1727
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1724
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1733
    :cond_2
    invoke-static {v2, p2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
