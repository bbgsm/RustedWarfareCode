.method public static strictfp a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 1365
    invoke-static {p0}, Lcom/corrodinggames/rts/game/b/b326;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1366
    if-nez v0, :cond_0

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".tmx"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_moved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/game/b/b326;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1369
    if-eqz v1, :cond_0

    .line 1371
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1373
    const-string v1, "Found moved map at:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1374
    invoke-static {v0}, Lcom/corrodinggames/rts/game/b/b326;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1378
    :cond_0
    return-object v0
.end method
