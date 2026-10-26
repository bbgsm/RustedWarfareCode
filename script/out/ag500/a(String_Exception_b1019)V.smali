.method private static a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/gameFramework/i/b1019;)V
    .locals 4

    .line 5692
    const-string v0, "Error while loading unit:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 5694
    invoke-static {p1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/Throwable;)V

    .line 5696
    if-nez p0, :cond_0

    .line 5698
    const-string p0, "<null>"

    .line 5703
    :cond_0
    instance-of v0, p1, Lcom/corrodinggames/rts/game/units/custom/ch575;

    if-eqz v0, :cond_6

    .line 5705
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 5714
    :goto_0
    if-nez v0, :cond_1

    const-string v0, "<No error cause>"

    .line 5717
    :cond_1
    const-string v1, "unit config file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5720
    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5723
    :cond_2
    invoke-static {p2, p0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5728
    if-eqz p2, :cond_7

    .line 5730
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading unit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 5750
    :goto_1
    nop

    instance-of v0, p1, Lcom/corrodinggames/rts/game/units/custom/ch575;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 5752
    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/ch575;

    .line 5753
    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/custom/ch575;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/custom/ch575;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 5755
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (section:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/custom/ch575;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/custom/ch575;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5774
    :cond_4
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 5776
    sput-object v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    .line 5779
    :cond_5
    if-eqz p2, :cond_9

    .line 5783
    invoke-virtual {p2, v1}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->a(Ljava/lang/String;)V

    return-void

    .line 5711
    :cond_6
    invoke-static {p1}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5735
    :cond_7
    const-string v2, "Error loading core unit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, v0

    .line 5737
    goto :goto_1

    .line 5741
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading core unit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (This might be from placing a mod in \'assets/\', they should go under \'mods/\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 5790
    :cond_9
    const-wide/16 v2, 0x2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5795
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method
