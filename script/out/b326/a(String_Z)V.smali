.method public final strictfp a(Ljava/lang/String;Z)V
    .locals 4

    .line 1883
    const-string v0, " --- Loading map ---"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1886
    invoke-static {p1}, Lcom/corrodinggames/rts/game/b/b326;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1888
    if-nez v0, :cond_0

    .line 1890
    invoke-static {p1}, Lcom/corrodinggames/rts/game/b/b326;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1896
    new-instance v1, Lcom/corrodinggames/rts/game/b/h332;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find map: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/e/a926;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1900
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1902
    invoke-virtual {p0, v1, p2}, Lcom/corrodinggames/rts/game/b/b326;->a(Ljava/io/InputStream;Z)V

    .line 1907
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1908
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    :goto_0
    return-void

    .line 1912
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
