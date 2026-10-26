.method private static a(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/l609;
    .locals 6

    .line 2119
    :try_start_0
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v4

    .line 20502
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20509
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/e/a926;->k(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/o1350;

    move-result-object v3

    .line 2124
    if-nez v3, :cond_0

    .line 2126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to open unit config file:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2174
    :catch_0
    move-exception v0

    .line 2176
    invoke-static {p0, v0, p1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/gameFramework/i/b1019;)V

    .line 2177
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2129
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2131
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ah501;->g:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v4, v5, v0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    .line 2135
    sget v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->b:I

    .line 2136
    if-eqz p1, :cond_1

    .line 2138
    sget v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->c:I

    .line 2141
    :cond_1
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 2143
    const-string v0, "core units"

    .line 2144
    if-eqz p1, :cond_2

    .line 2146
    :try_start_2
    invoke-virtual {p1}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->a()Ljava/lang/String;

    move-result-object v0

    .line 2148
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading units - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/corrodinggames/rts/game/units/custom/ag500;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20624
    iput-object v0, v2, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 21151
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->Z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21155
    iget-object v0, v3, Lcom/corrodinggames/rts/gameFramework/utility/o1350;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 21160
    new-instance v0, Ljava/io/File;

    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/utility/o1350;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21161
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    :cond_3
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 2151
    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/io/InputStream;Lcom/corrodinggames/rts/gameFramework/i/b1019;Lcom/corrodinggames/rts/gameFramework/utility/o1350;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/l609;

    move-result-object v0

    .line 2153
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    .line 2158
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2159
    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/utility/o1350;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2168
    :goto_1
    :try_start_4
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/ah501;->h:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v4, v5, v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    goto :goto_0

    .line 2164
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
