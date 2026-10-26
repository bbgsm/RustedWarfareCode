.method public static a(Ljava/lang/String;Ljava/lang/String;ZLcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;
    .locals 4

    .line 29022
    :try_start_0
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    .line 29024
    invoke-static {p0, p1, p2, p3}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/corrodinggames/rts/game/units/custom/l609;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    .line 29026
    sget-object v3, Lcom/corrodinggames/rts/game/units/custom/ah501;->b:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v0, v1, v3}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7011
    return-object v2

    .line 7013
    :catch_0
    move-exception v0

    .line 7015
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 7016
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
