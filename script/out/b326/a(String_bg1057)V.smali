.method public static strictfp a(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V
    .locals 4

    .line 1252
    invoke-static {p0}, Lcom/corrodinggames/rts/game/b/b326;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1253
    if-nez v0, :cond_0

    .line 1255
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writeMapStream: Could not find map:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1258
    :cond_0
    invoke-static {p0}, Lcom/corrodinggames/rts/game/b/b326;->b(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 1261
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1263
    new-instance v2, Ljava/io/IOException;

    const-string v3, "writeMapStream: Failed to get map size"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1266
    :cond_1
    if-nez v1, :cond_2

    .line 1268
    new-instance v2, Ljava/io/IOException;

    const-string v3, "writeMapStream: Got empty map size"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1272
    :cond_2
    const-string v2, "Sending map stream of size: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p1, v0, v1}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Ljava/io/InputStream;I)V

    .line 1282
    return-void
.end method
