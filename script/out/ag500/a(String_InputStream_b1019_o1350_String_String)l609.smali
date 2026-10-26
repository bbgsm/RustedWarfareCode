.method private static a(Ljava/lang/String;Ljava/io/InputStream;Lcom/corrodinggames/rts/gameFramework/i/b1019;Lcom/corrodinggames/rts/gameFramework/utility/o1350;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/l609;
    .locals 18

    .line 2687
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v9

    .line 2693
    :try_start_0
    sget-boolean v2, Lcom/corrodinggames/rts/game/units/custom/ag500;->a:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v2, :cond_1

    .line 2695
    const-string v2, "CORE"

    .line 2696
    if-eqz p2, :cond_0

    .line 2698
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->g()Ljava/lang/String;

    move-result-object v2

    .line 2700
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading unit config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2706
    :cond_1
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v12

    .line 2711
    :try_start_2
    new-instance v14, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_2 .. :try_end_2} :catch_3

    .line 2718
    :try_start_3
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ah501;->e:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v12, v13, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    .line 2721
    new-instance v3, Lcom/corrodinggames/rts/game/units/custom/l609;

    invoke-direct {v3}, Lcom/corrodinggames/rts/game/units/custom/l609;-><init>()V

    .line 2733
    const-string v2, "core"

    const-string v4, "dont_load"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2735
    const/4 v3, 0x0

    .line 5625
    :goto_0
    return-object v3

    .line 2713
    :catch_0
    move-exception v2

    .line 2715
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_3 .. :try_end_3} :catch_3

    .line 5611
    :catch_1
    move-exception v2

    .line 5613
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/gameFramework/i/b1019;)V

    .line 5614
    const/4 v3, 0x0

    goto :goto_0

    .line 2739
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->D:Ljava/lang/String;

    .line 2740
    invoke-virtual/range {p3 .. p3}, Lcom/corrodinggames/rts/gameFramework/utility/o1350;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->E:Ljava/lang/String;

    .line 2742
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->D:Ljava/lang/String;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->F:Ljava/lang/String;

    .line 2744
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    .line 2745
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->K:Ljava/lang/String;

    .line 2746
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->L:Ljava/lang/String;

    .line 2749
    sput-object p2, Lcom/corrodinggames/rts/game/units/custom/ag500;->e:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    .line 2750
    const/4 v2, 0x0

    sput-boolean v2, Lcom/corrodinggames/rts/game/units/custom/ag500;->f:Z

    .line 2766
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v4

    .line 2768
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v3, v14, v14, v0, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;I)V

    .line 2770
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->L:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->L:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/all-units.template"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v14, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;)V

    .line 2778
    :cond_3
    const-string v2, "core"

    const-string v6, "copyFrom"

    invoke-virtual {v14, v2, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    const-string v2, "core"

    const-string v6, "strictLevel"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v2, v6, v7}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    .line 2782
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    if-gez v2, :cond_4

    .line 2784
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    const-string v3, "[core]strictLevel cannot be < 0"

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_4 .. :try_end_4} :catch_3

    .line 5616
    :catch_2
    move-exception v2

    .line 5618
    sget v3, Lcom/corrodinggames/rts/game/units/custom/ag500;->l:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/corrodinggames/rts/game/units/custom/ag500;->l:I

    .line 5619
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/gameFramework/i/b1019;)V

    .line 5620
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2786
    :cond_4
    :try_start_5
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    const/4 v6, 0x1

    if-le v2, v6, :cond_5

    .line 2788
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    const-string v3, "[core]strictLevel cannot yet be > 1"

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_5 .. :try_end_5} :catch_3

    .line 5622
    :catch_3
    move-exception v2

    .line 5624
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/gameFramework/i/b1019;)V

    .line 5625
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2791
    :cond_5
    :try_start_6
    const-string v2, "core"

    const-string v6, "logIfCreditResourceUsed"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v6, v7}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gs:Z

    .line 2794
    const-string v2, "core"

    const-string v6, "dont_load"

    invoke-virtual {v14, v2, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    const-string v2, "core"

    const-string v6, "class"

    const-string v7, "CustomUnitMetadata"

    invoke-virtual {v14, v2, v6, v7}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2800
    const-string v2, "@copyFrom_skipThisSection"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    .line 2801
    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2803
    const-string v7, "@copyFrom_skipThisSection"

    invoke-virtual {v14, v2, v7}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2806
    :cond_6
    const-string v2, "@copyFromSection"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    .line 2807
    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2809
    const/4 v7, 0x0

    invoke-static {v3, v14, v2, v2, v7}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 2814
    :cond_7
    invoke-static {v14}, Lcom/corrodinggames/rts/game/units/custom/f/a597;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;)V

    .line 2817
    const-string v2, "core"

    const-string v6, "overrideResourceLoadPath"

    const/4 v7, 0x0

    invoke-virtual {v14, v2, v6, v7}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2818
    if-eqz v2, :cond_8

    .line 2820
    move-object/from16 v0, p0

    invoke-static {v3, v0, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->F:Ljava/lang/String;

    .line 2824
    :cond_8
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ah501;->i:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v4, v5, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    .line 2828
    const-string v2, "core"

    const-string v4, "name"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    .line 2830
    invoke-virtual {v14}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->H:I

    .line 2838
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    const-string v4, "self"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2840
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unit name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is reserved"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2842
    :cond_9
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    const-string v4, "self."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2844
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    const-string v3, "Unit name cannot start with self."

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2858
    :cond_a
    const-string v2, "core"

    const-string v4, "altNames"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2859
    if-eqz v2, :cond_b

    .line 2861
    const-string v4, "NONE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2864
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_b

    aget-object v6, v4, v2

    .line 2866
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2867
    iget-object v7, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->N:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v7, v6}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    .line 2864
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2873
    :cond_b
    const-string v2, "core"

    const-string v4, "tags"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/g604;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->O:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 2876
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    if-lez v2, :cond_d

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->O:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-eqz v2, :cond_d

    .line 2878
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->O:Lcom/corrodinggames/rts/game/units/custom/h605;

    iget-object v4, v2, Lcom/corrodinggames/rts/game/units/custom/h605;->a:[Lcom/corrodinggames/rts/game/units/custom/g604;

    array-length v5, v4
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_7 .. :try_end_7} :catch_3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_d

    aget-object v6, v4, v2

    .line 2880
    :try_start_8
    iget-object v7, v6, Lcom/corrodinggames/rts/game/units/custom/g604;->a:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2882
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(strictLevel 1) [core]tags: space in tag: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/corrodinggames/rts/game/units/custom/g604;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2878
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2887
    :cond_d
    const-string v2, "core"

    const-string v4, "overrideAndReplace"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->Q:Ljava/lang/String;

    .line 2889
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->Q:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 2891
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->Q:Ljava/lang/String;

    const-string v4, "NONE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2893
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->Q:Ljava/lang/String;

    .line 2905
    :cond_e
    const-string v2, "core"

    const-string v4, "defineUnitMemory"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2906
    if-eqz v2, :cond_f

    .line 2908
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->r:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$VariableMapping;

    const-string v5, "core"

    const-string v6, "defineUnitMemory"

    invoke-virtual {v4, v3, v5, v6, v2}, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$VariableMapping;->addDefineValue(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->r:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$VariableMapping;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$VariableMapping;->hasArrays()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2913
    const-string v2, "1.15p11"

    const v4, 0x1c143

    const-string v5, "core"

    const-string v6, "Memory arrays (in defineUnitMemory)"

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2919
    :cond_f
    const-string v2, "core"

    const-string v4, "@memory "

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2921
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2922
    const-string v2, "core"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v7, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2924
    if-eqz v5, :cond_10

    .line 2928
    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2930
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "core"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Only a single variable can be defined per @memory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2933
    :cond_11
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->r:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$VariableMapping;

    const-string v6, "core"

    invoke-virtual/range {v2 .. v7}, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$VariableMapping;->addSingleDefine(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->r:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$VariableMapping;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$VariableMapping;->hasArrays()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2938
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Memory arrays (in "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "1.15p11"

    const v5, 0x1c143

    const-string v6, "core"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2947
    :cond_12
    const-string v2, "core"

    const-string v4, "onNewMapSpawn"

    const/4 v5, 0x0

    const-class v6, Lcom/corrodinggames/rts/game/units/custom/ad497;

    invoke-virtual {v14, v2, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/ad497;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->T:Lcom/corrodinggames/rts/game/units/custom/ad497;

    .line 2957
    const-string v2, "core"

    const-string v4, "globalScale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    .line 2960
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->E:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->l(Ljava/lang/String;)V

    .line 2962
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    const-string v4, "missing"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2964
    if-nez p2, :cond_16

    .line 2966
    const-string v2, "Setting missingPlaceHolder"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2967
    sput-object v3, Lcom/corrodinggames/rts/game/units/custom/l609;->b:Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 2975
    :cond_13
    :goto_6
    const-string v2, "core"

    const-string v4, "displayLocaleKey"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aE:Ljava/lang/String;

    .line 2978
    const-string v2, "core"

    const-string v4, "displayText"

    invoke-static {v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/bu555;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aC:Lcom/corrodinggames/rts/game/units/custom/bu555;

    .line 2981
    const-string v2, "core"

    const-string v4, "displayDescription"

    invoke-static {v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/bu555;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aD:Lcom/corrodinggames/rts/game/units/custom/bu555;

    .line 2992
    const-string v2, "core"

    const-string v4, "isBio"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eD:Z

    .line 2993
    const-string v2, "core"

    const-string v4, "isBug"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eE:Z

    .line 2998
    const-string v2, "core"

    const-string v4, "isPickableStartingUnit"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eH:Z

    .line 3000
    const-string v2, "core"

    const-string v4, "startFallingWhenStartingUnit"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eI:Z

    .line 3002
    const-string v2, "core"

    const-string v4, "stayNeutral"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cy:Z

    .line 3003
    const-string v2, "core"

    const-string v4, "createNeutral"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cz:Z

    .line 3005
    const-string v2, "core"

    const-string v4, "allowCaptureWhenNeutralByAI"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cA:Z

    .line 3007
    const-string v2, "core"

    const-string v4, "createOnNeutralTeam"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3009
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cz:Z

    .line 3013
    :cond_14
    const-string v2, "core"

    const-string v4, "whileNeutralTransportAnyTeam"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cB:Z

    .line 3014
    const-string v2, "core"

    const-string v4, "whileNeutralConvertToTransportedTeam"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cC:Z

    .line 3015
    const-string v2, "core"

    const-string v4, "convertToNeutralIfNotTransporting"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cD:Z

    .line 3017
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cD:Z

    if-eqz v2, :cond_15

    .line 3019
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cy:Z

    .line 3023
    :cond_15
    const-string v2, "core"

    const-string v4, "createOnAggressiveTeam"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cE:Z

    .line 3027
    const-string v2, "core"

    const-string v4, "showInEditor"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aF:Z

    .line 3034
    const-string v2, "graphics"

    const-string v4, "total_frames"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->U:I

    .line 3036
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->U:I

    if-gtz v2, :cond_17

    .line 3038
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TOTAL_FRAMES cannot be: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->U:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (must be 1 or more)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2971
    :cond_16
    const-string v2, "Not setting missingPlaceHolder, as we are in a mod"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3041
    :cond_17
    const-string v2, "graphics"

    const-string v4, "frame_width"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->W:I

    .line 3042
    const-string v2, "graphics"

    const-string v4, "frame_height"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->X:I

    .line 3044
    const-string v2, "graphics"

    const-string v4, "default_frame"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->Y:I

    .line 3050
    const-string v2, "graphics"

    const-string v4, "image_offsetX"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ah:I

    .line 3051
    const-string v2, "graphics"

    const-string v4, "image_offsetY"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ai:I

    .line 3052
    const-string v2, "graphics"

    const-string v4, "image_offsetH"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aj:F

    .line 3054
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ah:I

    if-nez v2, :cond_18

    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ai:I

    if-nez v2, :cond_18

    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aj:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_19

    .line 3056
    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ak:Z

    .line 3059
    :cond_19
    sget-object v2, Lcom/corrodinggames/rts/game/q353;->a:Lcom/corrodinggames/rts/game/q353;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    .line 3061
    const-string v2, "graphics"

    const-string v4, "teamColorsUseHue"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3063
    sget-object v2, Lcom/corrodinggames/rts/game/q353;->b:Lcom/corrodinggames/rts/game/q353;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    .line 3066
    :cond_1a
    const-string v2, "graphics"

    const-string v4, "teamColoringMode"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3067
    if-eqz v2, :cond_1c

    .line 3070
    const-string v4, "graphics"

    const-string v5, "teamColorsUseHue"

    const/4 v6, 0x0

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 3072
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    const-string v3, "Cannot use teamColoringMode and teamColorsUseHue at the same time"

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3075
    :cond_1b
    const-string v4, "pureGreen"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3077
    sget-object v2, Lcom/corrodinggames/rts/game/q353;->a:Lcom/corrodinggames/rts/game/q353;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    .line 3099
    :cond_1c
    :goto_7
    const-string v2, "graphics"

    const-string v4, "imageSmoothing"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ab:Z

    .line 3102
    const-string v2, "graphics"

    const-string v4, "imageSmoothingWhenZoomedIn"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aa:Z

    .line 3106
    const-string v2, "graphics"

    const-string v4, "isVisible"

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->Z:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 3108
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->Z:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    sget-object v4, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->trueBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    if-ne v2, v4, :cond_1d

    .line 3110
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->Z:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 3115
    :cond_1d
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "graphics"

    const-string v5, "isVisibleToEnemies"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->m:Z

    .line 3120
    const-string v2, "graphics"

    const-string v4, "image"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3121
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->F:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ab:Z

    const-string v7, "graphics"

    const-string v8, "image"

    invoke-virtual/range {v3 .. v8}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3124
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v2, :cond_22

    .line 3126
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    const-string v3, "Main unit image must be set on custom unit"

    invoke-direct {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3079
    :cond_1e
    const-string v4, "hueAdd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3081
    sget-object v2, Lcom/corrodinggames/rts/game/q353;->b:Lcom/corrodinggames/rts/game/q353;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    goto :goto_7

    .line 3083
    :cond_1f
    const-string v4, "hueShift"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3085
    sget-object v2, Lcom/corrodinggames/rts/game/q353;->d:Lcom/corrodinggames/rts/game/q353;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    goto/16 :goto_7

    .line 3087
    :cond_20
    const-string v4, "disabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3089
    sget-object v2, Lcom/corrodinggames/rts/game/q353;->e:Lcom/corrodinggames/rts/game/q353;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    goto/16 :goto_7

    .line 3093
    :cond_21
    new-instance v3, Lcom/corrodinggames/rts/game/units/custom/ch575;

    const-string v4, "Unknown teamColoringMode:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3133
    :cond_22
    const-string v2, "graphics"

    const-string v4, "image_floatingPointSize"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ae:Z

    .line 3136
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->h()I

    move-result v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->U:I

    div-int/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    .line 3137
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->g()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ag:I

    .line 3139
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    if-gtz v2, :cond_23

    .line 3141
    const/4 v2, 0x1

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    .line 3146
    :cond_23
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->W:I

    if-lez v2, :cond_24

    .line 3148
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->W:I

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    .line 3150
    :cond_24
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->X:I

    if-lez v2, :cond_25

    .line 3152
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->X:I

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ag:I

    .line 3155
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ag:I

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->g()I

    move-result v4

    if-ge v2, v4, :cond_25

    .line 3157
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->h()I

    move-result v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    div-int/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->V:I

    .line 3159
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->V:I

    if-gtz v2, :cond_25

    .line 3161
    const/4 v2, 0x1

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->V:I

    .line 3175
    :cond_25
    const-string v2, "graphics"

    const-string v4, "image_back"

    invoke-virtual {v3, v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->al:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3178
    const-string v2, "graphics"

    const-string v4, "image_back_always_use_full_image"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->am:Z

    .line 3182
    const-string v2, "graphics"

    const-string v4, "image_wreak"

    invoke-virtual {v3, v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->an:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3186
    const-string v2, "graphics"

    const-string v4, "image_turret"

    invoke-virtual {v3, v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ao:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3189
    sget-object v2, Lcom/corrodinggames/rts/game/units/e/l714;->dP:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3191
    const-string v2, "graphics"

    const-string v4, "image_shadow"

    const-string v5, "NONE"

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3192
    const-string v2, "AUTO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[autoShadow:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ag:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/m/e1216;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/m/e1216;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3198
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    .line 3199
    if-eqz v4, :cond_2b

    .line 3201
    iput-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3265
    :cond_26
    :goto_8
    const-string v2, "graphics"

    const-string v4, "image_shadow_frames"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3267
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aq:Z

    .line 3271
    :cond_27
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/game/q353;)[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ar:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3276
    const-string v2, "graphics"

    const-string v4, "teamColorsOnTurret"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->s:Z

    .line 3277
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->s:Z

    if-eqz v2, :cond_28

    .line 3279
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ao:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-eqz v2, :cond_28

    .line 3281
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ao:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/game/q353;)[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->at:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3286
    :cond_28
    const-string v2, "graphics"

    const-string v4, "scaleImagesTo"

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3288
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_29

    .line 3290
    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    .line 3292
    mul-float/2addr v2, v4

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bH:F

    .line 3295
    :cond_29
    const-string v2, "graphics"

    const-string v4, "imageScale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3296
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2a

    .line 3298
    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bH:F

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bH:F

    .line 3302
    :cond_2a
    const-string v2, "graphics"

    const-string v4, "scaleTurretImagesTo"

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3304
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_31

    .line 3306
    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    .line 3308
    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ao:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v5, :cond_30

    .line 3310
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "scaleTurretImagesTo needs image_turret set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3205
    :cond_2b
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ag:I

    invoke-static {v4, v5, v6}, Lcom/corrodinggames/rts/game/units/ce454;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;II)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3206
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 3208
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-eqz v4, :cond_26

    .line 3210
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-static {v2, v4}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    goto/16 :goto_8

    .line 3226
    :cond_2c
    const-string v2, "AUTO_ANIMATED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[autoShadowAnimated:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->af:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ag:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/m/e1216;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/m/e1216;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3232
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    .line 3233
    if-eqz v4, :cond_2e

    .line 3235
    iput-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3248
    :cond_2d
    :goto_9
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aq:Z

    goto/16 :goto_8

    .line 3239
    :cond_2e
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->h()I

    move-result v5

    iget-object v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v6}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->g()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/corrodinggames/rts/game/units/ce454;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;II)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3240
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 3242
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-eqz v4, :cond_2d

    .line 3244
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-static {v2, v4}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    goto :goto_9

    .line 3262
    :cond_2f
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->F:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ab:Z

    const-string v7, "graphics"

    const-string v8, "image_shadow"

    invoke-virtual/range {v3 .. v8}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ap:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_8

    .line 3313
    :cond_30
    mul-float/2addr v2, v4

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ao:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/m/e1216;->p:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bI:F

    .line 3315
    :cond_31
    const-string v2, "graphics"

    const-string v4, "turretImageScale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3316
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_32

    .line 3318
    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bI:F

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bI:F

    .line 3326
    :cond_32
    sget-object v2, Lcom/corrodinggames/rts/game/units/e/c705;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->au:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3328
    const-string v2, "graphics"

    const-string v4, "image_shield"

    invoke-virtual {v3, v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    .line 3329
    if-eqz v2, :cond_33

    .line 3331
    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->au:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3332
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->av:Z

    .line 3337
    :cond_33
    const-string v2, "graphics"

    const-string v4, "icon_build"

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v2, v4, v5}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Z)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aw:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 3343
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->h()I

    move-result v2

    int-to-float v2, v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bH:F

    mul-float/2addr v2, v4

    .line 3344
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ad:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->g()I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bH:F

    mul-float/2addr v4, v5

    .line 3346
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_34

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_35

    .line 3349
    :cond_34
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->C:Landroid/graphics/Rect;

    .line 3351
    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->C:Landroid/graphics/Rect;

    neg-float v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3352
    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->C:Landroid/graphics/Rect;

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 3354
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->C:Landroid/graphics/Rect;

    neg-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 3355
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->C:Landroid/graphics/Rect;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 3357
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->B:Z

    .line 3361
    :cond_35
    const-string v2, "resource_"

    const-string v4, "global_resource_"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3365
    const-string v4, "resource_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3367
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3368
    const/4 v4, 0x0

    .line 3376
    :goto_b
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3378
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 3380
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] resource codename cannot contain a space"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3372
    :cond_36
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3373
    const/4 v4, 0x1

    goto :goto_b

    .line 3383
    :cond_37
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 3384
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 3385
    const-string v7, "<"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, "$"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 3387
    :cond_38
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] resource codename cannot contain the symbols: =|:,()<>$"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3390
    :cond_39
    new-instance v7, Lcom/corrodinggames/rts/game/units/custom/e/d592;

    invoke-direct {v7, v4}, Lcom/corrodinggames/rts/game/units/custom/e/d592;-><init>(Z)V

    .line 3391
    invoke-virtual {v7, v3, v14, v2, v5}, Lcom/corrodinggames/rts/game/units/custom/e/d592;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    iget-object v4, v7, Lcom/corrodinggames/rts/game/units/custom/e/d592;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->i(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/e/a589;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 3395
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] resource with name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v7, Lcom/corrodinggames/rts/game/units/custom/e/d592;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " already exists in this file"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3397
    :cond_3a
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->j:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2, v7}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 3400
    :cond_3b
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->j:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/e/d592;

    .line 3402
    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/e/d592;->a(Lcom/corrodinggames/rts/game/units/custom/l609;)V

    goto :goto_c

    .line 3470
    :cond_3c
    invoke-virtual {v9}, Lcom/corrodinggames/rts/gameFramework/k1104;->k()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3472
    invoke-static {v3, v14}, Lcom/corrodinggames/rts/game/units/custom/b/l531;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;)V

    .line 3474
    invoke-static {v3, v14}, Lcom/corrodinggames/rts/game/units/custom/b/j529;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;)V

    .line 3480
    :cond_3d
    invoke-static {v3, v14}, Lcom/corrodinggames/rts/game/units/custom/b/m532;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;)V

    .line 3484
    const-string v2, "core"

    const-string v4, "autoTriggerCooldownTime"

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ca:F

    .line 3486
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ca:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3e

    .line 3488
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "autoTriggerCooldownTime cannot be < 0"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3491
    :cond_3e
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ca:F

    const/high16 v4, 0x42f00000    # 120.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3f

    .line 3493
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "autoTriggerCooldownTime cannot be more than 2 seconds"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3496
    :cond_3f
    const-string v2, "core"

    const-string v4, "autoTriggerCooldownTime_allowDangerousHighCPU"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_40

    .line 3498
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ca:F

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_40

    .line 3500
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "autoTriggerCooldownTime cannot be this low (without override). Note this cooldown is only applied after triggering an action not for the detection."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3505
    :cond_40
    const-string v2, "core"

    const-string v4, "autoTriggerCheckRate"

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/s616;->a:Lcom/corrodinggames/rts/game/units/custom/s616;

    const-class v6, Lcom/corrodinggames/rts/game/units/custom/s616;

    invoke-virtual {v14, v2, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/s616;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cb:Lcom/corrodinggames/rts/game/units/custom/s616;

    .line 3511
    const-string v2, "core"

    const-string v4, "autoTriggerCheckWhileNotBuilt"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cd:Z

    .line 3517
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "mass"

    invoke-virtual {v14, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->b:F

    .line 3519
    const-string v2, "core"

    const-string v4, "availableInDemo"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ce:Z

    .line 3521
    const-string v2, "core"

    const-string v4, "isLocked"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cf:Z

    .line 3522
    const-string v2, "core"

    const-string v4, "isLockedIfGameModeNoNuke"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cg:Z

    .line 3527
    const-string v2, "core"

    const-string v4, "price"

    const/4 v5, 0x0

    invoke-static {v3, v14, v2, v4, v5}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Z)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ch:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3531
    const-string v2, "core"

    const-string v4, "reclaimPrice"

    invoke-static {v3, v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ci:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3535
    const-string v2, "core"

    const-string v4, "streamingCost"

    invoke-static {v3, v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->b(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cj:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3537
    const-string v2, "core"

    const-string v4, "switchPriceWithStreamingCost"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 3539
    if-eqz v4, :cond_42

    .line 3541
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cj:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    if-eqz v2, :cond_41

    .line 3543
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "core"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]streamingCost and switchPriceWithStreamingCost=true cannot be used at the same time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3546
    :cond_41
    const-string v2, "core"

    const-string v5, "price"

    invoke-static {v3, v14, v2, v5}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->b(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cj:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3547
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ch:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3553
    :cond_42
    const-string v2, "core"

    const-string v5, "buildSpeed"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v2, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ck:F

    .line 3554
    const-string v2, "core"

    const-string v5, "techLevel"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v2, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cl:I

    .line 3557
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cl:I

    const/4 v5, 0x3

    if-le v2, v5, :cond_43

    .line 3559
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "techLevel cannot be greater than max tech level of:3"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3562
    :cond_43
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cl:I

    if-gtz v2, :cond_44

    .line 3564
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "techLevel cannot be less than 1, it is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cl:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3567
    :cond_44
    const-string v2, "core"

    const-string v5, "experimental"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cm:Z

    .line 3573
    const-string v2, "core"

    const-string v5, "borrowResourcesWhileAlive"

    const/4 v6, 0x1

    invoke-static {v3, v14, v2, v5, v6}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Z)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cv:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3576
    const-string v2, "core"

    const-string v5, "borrowResourcesWhileBuilt"

    const/4 v6, 0x1

    invoke-static {v3, v14, v2, v5, v6}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Z)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cw:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3579
    const-string v2, "core"

    const-string v5, "generation_resources"

    const/4 v6, 0x1

    invoke-static {v3, v14, v2, v5, v6}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Z)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->co:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3582
    const-string v2, "core"

    const-string v5, "generation_credits"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v2, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3583
    if-eqz v2, :cond_45

    .line 3585
    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->co:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(I)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;Lcom/corrodinggames/rts/game/units/custom/d/b579;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->co:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 3588
    :cond_45
    const-string v2, "core"

    const-string v5, "generation_delay"

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v2, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cr:I

    .line 3590
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cr:I

    if-nez v2, :cond_46

    .line 3592
    const/4 v2, 0x1

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cr:I

    .line 3594
    :cond_46
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cr:I

    if-gez v2, :cond_47

    .line 3596
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "core"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]generation_delay cannot be < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3610
    :cond_47
    const/high16 v2, 0x42200000    # 40.0f

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cr:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cs:F

    .line 3612
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->co:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->c()Z

    move-result v2

    if-nez v2, :cond_48

    .line 3614
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/e/f594;

    invoke-direct {v2}, Lcom/corrodinggames/rts/game/units/custom/e/f594;-><init>()V

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cp:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    .line 3615
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cp:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->co:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    invoke-virtual {v2, v5}, Lcom/corrodinggames/rts/game/units/custom/e/f594;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;)V

    .line 3616
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cp:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cs:F

    float-to-double v6, v5

    invoke-virtual {v2, v6, v7}, Lcom/corrodinggames/rts/game/units/custom/e/f594;->a(D)V

    .line 3618
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cn:Z

    .line 3623
    :cond_48
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cp:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/e/f594;->a()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 3625
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cp:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/custom/e/f594;->b:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_49
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/e/e593;

    .line 3627
    iget-object v6, v2, Lcom/corrodinggames/rts/game/units/custom/e/e593;->a:Lcom/corrodinggames/rts/game/units/custom/e/a589;

    invoke-virtual {v6}, Lcom/corrodinggames/rts/game/units/custom/e/a589;->a()Z

    move-result v6

    if-nez v6, :cond_49

    iget-object v6, v2, Lcom/corrodinggames/rts/game/units/custom/e/e593;->a:Lcom/corrodinggames/rts/game/units/custom/e/a589;

    invoke-virtual {v6}, Lcom/corrodinggames/rts/game/units/custom/e/a589;->b()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 3629
    iget-object v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cq:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    sget-object v7, Lcom/corrodinggames/rts/game/units/custom/e/f594;->a:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    if-ne v6, v7, :cond_4a

    .line 3631
    new-instance v6, Lcom/corrodinggames/rts/game/units/custom/e/f594;

    invoke-direct {v6}, Lcom/corrodinggames/rts/game/units/custom/e/f594;-><init>()V

    iput-object v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cq:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    .line 3633
    :cond_4a
    iget-object v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cq:Lcom/corrodinggames/rts/game/units/custom/e/f594;

    iget-object v7, v2, Lcom/corrodinggames/rts/game/units/custom/e/e593;->a:Lcom/corrodinggames/rts/game/units/custom/e/a589;

    iget-wide v8, v2, Lcom/corrodinggames/rts/game/units/custom/e/e593;->b:D

    invoke-virtual {v6, v7, v8, v9}, Lcom/corrodinggames/rts/game/units/custom/e/f594;->b(Lcom/corrodinggames/rts/game/units/custom/e/a589;D)V

    goto :goto_d

    .line 3638
    :cond_4b
    const-string v2, "core"

    const-string v5, "generation_active"

    sget-object v6, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->trueBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    invoke-virtual {v14, v3, v2, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cx:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 3641
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->co:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;)V

    .line 3645
    const-string v2, "core"

    const-string v5, "resourceRate"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v2, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cF:F

    .line 3648
    if-eqz v4, :cond_4c

    .line 3650
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cF:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4c

    .line 3652
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "To avoid mistakes ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "core"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]resourceRate cannot be used with switchPriceWithStreamingCost=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3657
    :cond_4c
    const-string v2, "core"

    const-string v4, "updateUnitMemory"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3659
    if-eqz v2, :cond_4d

    .line 3661
    const-string v4, "core"

    const-string v5, "updateUnitMemory"

    invoke-static {v2, v3, v4, v5}, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope;->createMemoryWriter(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$MemoryWriter;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ct:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/VariableScope$CachedWriter;

    .line 3663
    :cond_4d
    const-string v2, "core"

    const-string v4, "updateUnitMemoryRate"

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cu:F

    .line 3667
    const-string v2, "core"

    const-string v4, "resourceMaxConcurrentReclaimingThis"

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cG:I

    .line 3669
    const-string v2, "core"

    const-string v4, "similarResourcesHaveTag"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cH:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 3671
    const-string v2, "core"

    const-string v4, "soundOnAttackOrder"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/ce572;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/ce572;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->do:Lcom/corrodinggames/rts/game/units/custom/ce572;

    .line 3672
    const-string v2, "core"

    const-string v4, "soundOnMoveOrder"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/ce572;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/ce572;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dp:Lcom/corrodinggames/rts/game/units/custom/ce572;

    .line 3673
    const-string v2, "core"

    const-string v4, "soundOnNewSelection"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/ce572;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/ce572;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dq:Lcom/corrodinggames/rts/game/units/custom/ce572;

    .line 3679
    const-string v2, "graphics"

    const-string v4, "drawLayer"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3680
    if-eqz v2, :cond_4e

    .line 3682
    const-string v4, "experimentals"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 3684
    const/4 v2, 0x4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    .line 3720
    :cond_4e
    :goto_e
    const-string v2, "graphics"

    const-string v4, "shadowOffsetX"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cJ:F

    .line 3721
    const-string v2, "graphics"

    const-string v4, "shadowOffsetY"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cK:F

    .line 3724
    const-string v2, "graphics"

    const-string v4, "rotate_with_direction"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dB:Z

    .line 3726
    const-string v2, "graphics"

    const-string v4, "lock_body_rotation_with_main_turret"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dC:Z

    .line 3728
    const-string v2, "graphics"

    const-string v4, "lock_shadow_rotation_with_main_turret"

    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dC:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dD:Z

    .line 3730
    const-string v2, "graphics"

    const-string v4, "lock_leg_rotation_with_main_turret"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dE:Z

    .line 3735
    const-string v2, "graphics"

    const-string v4, "whenBeingBuiltMakeTransparentTill"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dH:F

    .line 3738
    const-string v2, "graphics"

    const-string v4, "animation_"

    invoke-static {v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/m610;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/m610;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dI:Lcom/corrodinggames/rts/game/units/custom/m610;

    .line 3745
    const-string v2, "effect_"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3747
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3749
    new-instance v6, Lcom/corrodinggames/rts/game/units/custom/br552;

    invoke-direct {v6, v5}, Lcom/corrodinggames/rts/game/units/custom/br552;-><init>(Ljava/lang/String;)V

    .line 3751
    invoke-virtual {v6, v3, v14, v2}, Lcom/corrodinggames/rts/game/units/custom/br552;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;)V

    .line 3753
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gd:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 3686
    :cond_4f
    const-string v4, "underwater"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 3688
    const/4 v2, 0x1

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto/16 :goto_e

    .line 3690
    :cond_50
    const-string v4, "bottom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3692
    const/4 v2, 0x1

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto/16 :goto_e

    .line 3694
    :cond_51
    const-string v4, "ground"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 3696
    const/4 v2, 0x2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto/16 :goto_e

    .line 3698
    :cond_52
    const-string v4, "ground2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 3700
    const/4 v2, 0x3

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto/16 :goto_e

    .line 3702
    :cond_53
    const-string v4, "air"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3704
    const/4 v2, 0x5

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto/16 :goto_e

    .line 3706
    :cond_54
    const-string v4, "top"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3708
    const/16 v2, 0xa

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto/16 :goto_e

    .line 3710
    :cond_55
    const-string v4, "wreaks"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3712
    const/4 v2, 0x0

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto/16 :goto_e

    .line 3716
    :cond_56
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "unknown drawLayer:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3755
    :cond_57
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_58
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/br552;

    .line 3757
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/br552;->alsoEmitEffects:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v5, :cond_59

    .line 3759
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/br552;->alsoEmitEffects:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/custom/z623;->c()V

    .line 3762
    :cond_59
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/br552;->alsoEmitEffectsOnDeath:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v5, :cond_5a

    .line 3764
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/br552;->alsoEmitEffectsOnDeath:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/custom/z623;->c()V

    .line 3767
    :cond_5a
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/br552;->ifSpawnFailsEmitEffects:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v5, :cond_5b

    .line 3769
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/br552;->ifSpawnFailsEmitEffects:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/custom/z623;->c()V

    .line 3773
    :cond_5b
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/br552;->trailEffect:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v5, :cond_58

    .line 3775
    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/custom/br552;->trailEffect:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/z623;->c()V

    goto :goto_10

    .line 3784
    :cond_5c
    const-string v2, "graphics"

    const-string v4, "splastEffect"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bJ:Z

    .line 3785
    const-string v2, "graphics"

    const-string v4, "dustEffect"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bM:Z

    .line 3787
    const-string v2, "graphics"

    const-string v4, "splastEffectReverse"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bK:Z

    .line 3788
    const-string v2, "graphics"

    const-string v4, "dustEffectReverse"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bN:Z

    .line 3790
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bM:Z

    if-nez v2, :cond_5d

    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bJ:Z

    if-eqz v2, :cond_64

    :cond_5d
    const/4 v2, 0x1

    :goto_11
    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bL:Z

    .line 3792
    const-string v2, "graphics"

    const-string v4, "movementEffect"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3793
    if-eqz v2, :cond_5e

    .line 3795
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bO:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 3797
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bO:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v2, :cond_5e

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bO:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/z623;->a()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 3799
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bL:Z

    .line 3802
    :cond_5e
    const-string v2, "graphics"

    const-string v4, "movementEffectReverse"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3803
    if-eqz v2, :cond_5f

    .line 3805
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bP:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 3807
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bP:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v2, :cond_5f

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bP:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/z623;->a()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 3809
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bL:Z

    .line 3812
    :cond_5f
    const-string v2, "graphics"

    const-string v4, "movementEffectRate"

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bR:F

    .line 3814
    const-string v2, "graphics"

    const-string v4, "movementEffectReverseFlipEffects"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bQ:Z

    .line 3819
    const-string v2, "graphics"

    const-string v4, "repairEffectRate"

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bT:F

    .line 3821
    const-string v2, "graphics"

    const-string v4, "repairEffect"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3822
    if-eqz v2, :cond_60

    .line 3824
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bU:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 3826
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bU:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v2, :cond_60

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bU:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/z623;->b()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 3828
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bS:Z

    .line 3832
    :cond_60
    const-string v2, "graphics"

    const-string v4, "repairEffectAtTarget"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3833
    if-eqz v2, :cond_61

    .line 3835
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bV:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 3837
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bV:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v2, :cond_61

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bV:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/z623;->b()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 3839
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bS:Z

    .line 3846
    :cond_61
    const-string v2, "graphics"

    const-string v4, "reclaimEffectRate"

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bX:F

    .line 3848
    const-string v2, "graphics"

    const-string v4, "reclaimEffect"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3849
    if-eqz v2, :cond_62

    .line 3851
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bY:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 3853
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bY:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v2, :cond_62

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bY:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/z623;->b()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 3855
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bW:Z

    .line 3859
    :cond_62
    const-string v2, "graphics"

    const-string v4, "reclaimEffectAtTarget"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3860
    if-eqz v2, :cond_63

    .line 3862
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bZ:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 3864
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bZ:Lcom/corrodinggames/rts/game/units/custom/z623;

    if-eqz v2, :cond_63

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bZ:Lcom/corrodinggames/rts/game/units/custom/z623;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/z623;->b()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3866
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bW:Z

    .line 3872
    :cond_63
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ds:Lcom/corrodinggames/rts/game/units/custom/f603;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "animation_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "graphics"

    iget-object v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ds:Lcom/corrodinggames/rts/game/units/custom/f603;

    iget-object v6, v6, Lcom/corrodinggames/rts/game/units/custom/f603;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v14, v5, v4}, Lcom/corrodinggames/rts/game/units/custom/f603;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dt:Lcom/corrodinggames/rts/game/units/custom/f603;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "animation_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "graphics"

    iget-object v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dt:Lcom/corrodinggames/rts/game/units/custom/f603;

    iget-object v6, v6, Lcom/corrodinggames/rts/game/units/custom/f603;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v14, v5, v4}, Lcom/corrodinggames/rts/game/units/custom/f603;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->du:Lcom/corrodinggames/rts/game/units/custom/f603;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "animation_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "graphics"

    iget-object v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->du:Lcom/corrodinggames/rts/game/units/custom/f603;

    iget-object v6, v6, Lcom/corrodinggames/rts/game/units/custom/f603;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v14, v5, v4}, Lcom/corrodinggames/rts/game/units/custom/f603;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    const-string v2, "animation_"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3879
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3881
    new-instance v6, Lcom/corrodinggames/rts/game/units/custom/f603;

    invoke-direct {v6, v5}, Lcom/corrodinggames/rts/game/units/custom/f603;-><init>(Ljava/lang/String;)V

    .line 3883
    const-string v5, ""

    invoke-virtual {v6, v3, v14, v2, v5}, Lcom/corrodinggames/rts/game/units/custom/f603;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dr:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2, v6}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 3790
    :cond_64
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 3894
    :cond_65
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->a:Lcom/corrodinggames/rts/game/units/custom/n611;

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ds:Lcom/corrodinggames/rts/game/units/custom/f603;

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;Lcom/corrodinggames/rts/game/units/custom/f603;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ds:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3895
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->c:Lcom/corrodinggames/rts/game/units/custom/n611;

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dt:Lcom/corrodinggames/rts/game/units/custom/f603;

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;Lcom/corrodinggames/rts/game/units/custom/f603;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dt:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3896
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->b:Lcom/corrodinggames/rts/game/units/custom/n611;

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->du:Lcom/corrodinggames/rts/game/units/custom/f603;

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;Lcom/corrodinggames/rts/game/units/custom/f603;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->du:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3899
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->e:Lcom/corrodinggames/rts/game/units/custom/n611;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dw:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3902
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->f:Lcom/corrodinggames/rts/game/units/custom/n611;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dx:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3905
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dw:Lcom/corrodinggames/rts/game/units/custom/f603;

    if-eqz v2, :cond_66

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dx:Lcom/corrodinggames/rts/game/units/custom/f603;

    if-eqz v2, :cond_66

    .line 3907
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot use underConstruction and underConstructionWithLinkedBuiltTime animations at the same time"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3910
    :cond_66
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->d:Lcom/corrodinggames/rts/game/units/custom/n611;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dv:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3913
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->g:Lcom/corrodinggames/rts/game/units/custom/n611;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dy:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3915
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dy:Lcom/corrodinggames/rts/game/units/custom/f603;

    if-eqz v2, :cond_67

    .line 3917
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bg:Z

    .line 3920
    :cond_67
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->h:Lcom/corrodinggames/rts/game/units/custom/n611;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dz:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3921
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/n611;->i:Lcom/corrodinggames/rts/game/units/custom/n611;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/n611;)Lcom/corrodinggames/rts/game/units/custom/f603;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dA:Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 3924
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "maxHp"

    invoke-virtual {v14, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->c:I

    .line 3926
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "maxShield"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->g:I

    .line 3928
    const-string v2, "core"

    const-string v4, "startShieldAtZero"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cM:Z

    .line 3931
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "shieldRegen"

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->h:F

    .line 3933
    const-string v2, "core"

    const-string v4, "shieldDisplayOnlyDeflection"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cU:Z

    .line 3935
    const-string v2, "core"

    const-string v4, "shieldDeflectionDisplayRate"

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cV:F

    .line 3938
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "armour"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->l:F

    .line 3939
    const-string v2, "core"

    const-string v4, "armourMinDamageToKeep"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cN:F

    .line 3941
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "energyMax"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->d:F

    .line 3943
    const-string v2, "core"

    const-string v4, "startEnergyAtZero"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cO:Z

    .line 3946
    const-string v2, "core"

    const-string v4, "energyRegen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cP:F

    .line 3948
    const-string v2, "core"

    const-string v4, "energyStartingPercentage"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cS:F

    .line 3950
    const-string v2, "core"

    const-string v4, "energyNeedsToRechargeToFull"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cR:Z

    .line 3953
    const-string v2, "core"

    const-string v4, "energyRegenWhenRecharging"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cP:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cQ:F

    .line 3956
    const-string v2, "core"

    const-string v4, "energyDisplayName"

    invoke-static {v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/bu555;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cT:Lcom/corrodinggames/rts/game/units/custom/bu555;

    .line 3962
    const-string v2, "core"

    const-string v4, "radius"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cW:I

    .line 3963
    const-string v2, "core"

    const-string v4, "displayRadius"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cW:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dd:I

    .line 3966
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cW:I

    int-to-float v2, v2

    .line 3968
    const/high16 v4, 0x40c00000    # 6.0f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_68

    .line 3970
    const/high16 v2, 0x40c00000    # 6.0f

    .line 3973
    :cond_68
    const-string v4, "core"

    const-string v5, "uiTargetRadius"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v14, v4, v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->de:F

    .line 3976
    const-string v2, "core"

    const-string v4, "shieldRenderRadius"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cW:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->df:I

    .line 3978
    const-string v2, "core"

    const-string v4, "buildingSelectionOffset"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dg:I

    .line 3982
    const-string v2, "core"

    const-string v4, "footprint"

    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cX:Landroid/graphics/Rect;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cX:Landroid/graphics/Rect;

    .line 3983
    const-string v2, "core"

    const-string v4, "constructionFootprint"

    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cY:Landroid/graphics/Rect;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cY:Landroid/graphics/Rect;

    .line 3986
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cZ:Landroid/graphics/Rect;

    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cX:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3987
    const-string v2, "core"

    const-string v4, "displayFootprint"

    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cZ:Landroid/graphics/Rect;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cZ:Landroid/graphics/Rect;

    .line 3991
    const-string v2, "core"

    const-string v4, "buildingToFootprintOffsetX"

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->da:F

    .line 3992
    const-string v2, "core"

    const-string v4, "buildingToFootprintOffsetY"

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->db:F

    .line 3996
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cW:I

    int-to-float v2, v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cW:I

    .line 3997
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dd:I

    int-to-float v2, v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dd:I

    .line 4000
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "fogOfWarSightRange"

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->n:I

    .line 4001
    const-string v2, "core"

    const-string v4, "fogOfWarSightRangeWhileNotBuilt"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dh:I

    .line 4005
    const-string v2, "core"

    const-string v4, "exit_x"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->di:F

    .line 4006
    const-string v2, "core"

    const-string v4, "exit_y"

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dj:F

    .line 4009
    const-string v2, "core"

    const-string v4, "exit_dirOffset"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dk:Ljava/lang/Float;

    .line 4010
    const-string v2, "core"

    const-string v4, "exit_heightOffset"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dl:F

    .line 4011
    const-string v2, "core"

    const-string v4, "exitHeightIgnoreParent"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dm:Z

    .line 4012
    const-string v2, "core"

    const-string v4, "exit_moveAwayAmount"

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dn:Ljava/lang/Float;

    .line 4015
    const-string v2, "core"

    const-string v4, "softCollisionOnAll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eB:I

    .line 4017
    const-string v2, "core"

    const-string v4, "disableAllUnitCollisions"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eC:Z

    .line 4019
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eC:Z

    if-eqz v2, :cond_69

    .line 4021
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cX:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4025
    :cond_69
    const-string v2, "core"

    const-string v4, "hideScorchMark"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eJ:Z

    .line 4028
    const-string v2, "graphics"

    const-string v4, "disableLowHpFire"

    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eD:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eK:Z

    .line 4029
    const-string v2, "graphics"

    const-string v4, "disableLowHpSmoke"

    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eD:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eL:Z

    .line 4031
    const-string v2, "core"

    const-string v4, "isBuilding"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    .line 4033
    const-string v2, "core"

    const-string v4, "ignoreInUnitCapCalculation"

    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aI:Z

    .line 4035
    const-string v2, "core"

    const-string v4, "placeOnlyOnResPool"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aJ:Z

    .line 4037
    const-string v2, "core"

    const-string v4, "isUnrepairableUnit"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aK:Z

    .line 4046
    const-string v2, "core"

    const-string v4, "extraBuildRangeWhenBuildingThis"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aL:F

    .line 4048
    const-string v2, "core"

    const-string v4, "isUnselectable"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aM:Z

    .line 4050
    const-string v2, "core"

    const-string v4, "isUnselectableAsTarget"

    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aM:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aN:Z

    .line 4052
    const-string v2, "core"

    const-string v4, "showActionsWithMixedSelectionIfOtherUnitsHaveTag"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fO:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 4056
    const-string v2, "core"

    const-string v4, "canNotBeDirectlyAttacked"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aO:Z

    .line 4059
    const-string v2, "core"

    const-string v4, "canNotBeDamaged"

    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aO:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aP:Z

    .line 4062
    const-string v2, "core"

    const-string v4, "showOnMinimap"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aQ:Z

    .line 4066
    const-string v2, "core"

    const-string v4, "showOnMinimapToEnemies"

    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget-boolean v5, v5, Lcom/corrodinggames/rts/game/units/custom/as512;->m:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aR:Z

    .line 4070
    const-string v2, "core"

    const-string v4, "canOnlyBeAttackedByUnitsWithTags"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aS:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 4072
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aO:Z

    if-eqz v2, :cond_6a

    .line 4074
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aS:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-eqz v2, :cond_6a

    .line 4076
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "canNotBeDirectlyAttacked and canOnlyBeAttackedByUnitsWithTags cannot be used at the same time"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4080
    :cond_6a
    const-string v2, "core"

    const-string v4, "canNotBeGivenOrdersByPlayer"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aT:Z

    .line 4082
    const-string v2, "core"

    const-string v4, "canRepairBuildings"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aU:Z

    .line 4083
    const-string v2, "core"

    const-string v4, "canRepairUnits"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aV:Z

    .line 4084
    const-string v2, "core"

    const-string v4, "autoRepair"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aW:Z

    .line 4086
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aW:Z

    if-eqz v2, :cond_6b

    .line 4088
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/b/b521;->a:Lcom/corrodinggames/rts/game/units/custom/b/a520;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/b/a520;)V

    .line 4092
    :cond_6b
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "nanoRange"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->o:I

    .line 4093
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v2, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->o:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6c

    .line 4095
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->o:I

    int-to-float v4, v4

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->o:I

    .line 4101
    :cond_6c
    const-string v2, "core"

    const-string v4, "nanoRangeForRepairIsMelee"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aY:Z

    .line 4102
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aY:Z

    if-eqz v2, :cond_6d

    .line 4104
    const/4 v2, 0x5

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aX:I

    .line 4107
    :cond_6d
    const-string v2, "core"

    const-string v4, "nanoRangeForRepair"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4108
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6e

    .line 4110
    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aX:I

    .line 4111
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aX:I

    int-to-float v2, v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aX:I

    .line 4116
    :cond_6e
    const-string v2, "core"

    const-string v4, "nanoRangeForReclaimIsMelee"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ba:Z

    .line 4117
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ba:Z

    if-eqz v2, :cond_6f

    .line 4119
    const/4 v2, 0x5

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aZ:I

    .line 4122
    :cond_6f
    const-string v2, "core"

    const-string v4, "nanoRangeForReclaim"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4123
    const/4 v4, -0x1

    if-eq v2, v4, :cond_70

    .line 4125
    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aZ:I

    .line 4126
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aZ:I

    int-to-float v2, v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aZ:I

    .line 4132
    :cond_70
    const-string v2, "core"

    const-string v4, "nanoRepairSpeed"

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bb:F

    .line 4135
    const-string v2, "core"

    const-string v4, "nanoReclaimSpeed"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bb:F

    const v6, 0x40a33333    # 5.1f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bc:F

    .line 4137
    const-string v2, "core"

    const-string v4, "resourceReclaimMultiplier"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bd:F

    .line 4140
    const-string v2, "core"

    const-string v4, "nanoUnbuildSpeed"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v2, v4

    const v4, 0x40a33333    # 5.1f

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->be:F

    .line 4142
    const-string v2, "core"

    const-string v4, "nanoBuildSpeed"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bf:F

    .line 4144
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "nanoFactorySpeed"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->r:F

    .line 4146
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "core"

    const-string v5, "selfRegenRate"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->p:F

    .line 4149
    const-string v2, "core"

    const-string v4, "selfBuildRate"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bh:F

    .line 4152
    const-string v2, "core"

    const-string v4, "dieOnConstruct"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bi:Z

    .line 4154
    const-string v2, "core"

    const-string v4, "dieOnZeroEnergy"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bk:Z

    .line 4156
    const/4 v2, 0x4

    .line 4157
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v4, v4, Lcom/corrodinggames/rts/game/units/custom/as512;->b:F

    const v5, 0x46ea6000    # 30000.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_71

    .line 4159
    const/16 v2, 0x8

    .line 4161
    :cond_71
    iget-boolean v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-eqz v4, :cond_72

    .line 4163
    const/4 v2, 0x7

    .line 4166
    :cond_72
    const-string v4, "core"

    const-string v5, "numBitsOnDeath"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v4, v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bq:I

    .line 4168
    const-string v2, "core"

    const-string v4, "nukeOnDeath"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bn:Z

    .line 4170
    const-string v2, "core"

    const-string v4, "nukeOnDeathRange"

    const/high16 v5, 0x437a0000    # 250.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bo:F

    .line 4172
    const-string v2, "core"

    const-string v4, "nukeOnDeathDamage"

    const v5, 0x45a8c000    # 5400.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bp:F

    .line 4174
    const-string v2, "core"

    const-string v4, "nukeOnDeathDisableWhenNoNuke"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->br:Z

    .line 4176
    const-string v2, "core"

    const-string v4, "fireOnDeath"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bm:I

    .line 4178
    const-string v2, "core"

    const-string v4, "explodeTypeOnDeath"

    const/4 v5, 0x0

    const-class v6, Lcom/corrodinggames/rts/game/units/bt441;

    invoke-virtual {v14, v2, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/bt441;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bt:Lcom/corrodinggames/rts/game/units/bt441;

    .line 4180
    const-string v2, "core"

    const-string v4, "explodeOnDeath"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bu:Z

    .line 4182
    const-string v2, "core"

    const-string v4, "disableDeathOnZeroHp"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bs:Z

    .line 4184
    const-string v2, "core"

    const-string v4, "explodeOnDeathGroundCollosion"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4185
    const-string v4, "core"

    const-string v5, "explodeOnDeathGroundCollision"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v4, v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4186
    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bv:Z

    .line 4189
    const-string v2, "core"

    const-string v4, "effectOnDeath"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->by:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 4192
    const-string v2, "core"

    const-string v4, "effectOnDeathIfUnbuilt"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bx:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 4197
    const-string v2, "core"

    const-string v4, "soundOnDeath"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/ce572;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/ce572;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bz:Lcom/corrodinggames/rts/game/units/custom/ce572;

    .line 4201
    const-string v2, "core"

    const-string v4, "effectOnDeathGroundCollosion"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4202
    const-string v4, "core"

    const-string v5, "effectOnDeathGroundCollision"

    invoke-virtual {v14, v4, v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4203
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/z623;)Lcom/corrodinggames/rts/game/units/custom/z623;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bw:Lcom/corrodinggames/rts/game/units/custom/z623;

    .line 4208
    const-string v2, "core"

    const-string v4, "unitsSpawnedOnDeath"

    invoke-static {v3, v14, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/ci576;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/ci576;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bC:Lcom/corrodinggames/rts/game/units/custom/ci576;

    .line 4211
    const-string v2, "core"

    const-string v4, "unitsSpawnedOnDeath_setToTeamOfLastAttacker"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bD:Z

    .line 4213
    const-string v2, "core"

    const-string v4, "canReclaimResources"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fk:Z

    .line 4215
    const-string v2, "core"

    const-string v4, "canReclaimResourcesOnlyWithTags"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fl:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 4217
    const-string v2, "core"

    const-string v4, "canReclaimResourcesNextSearchRange"

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fm:I

    .line 4221
    const-string v2, "core"

    const-string v4, "canReclaimUnitsOnlyWithTags"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fn:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 4222
    const-string v2, "core"

    const-string v4, "canRepairUnitsOnlyWithTags"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fo:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 4228
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fn:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-eqz v2, :cond_73

    .line 4230
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aV:Z

    if-nez v2, :cond_73

    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aU:Z

    if-nez v2, :cond_73

    .line 4232
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "canReclaimUnitsOnlyWithTags requires canRepairUnits:true or canRepairBuildings:true"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4236
    :cond_73
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fo:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-eqz v2, :cond_74

    .line 4238
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aV:Z

    if-nez v2, :cond_74

    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aU:Z

    if-nez v2, :cond_74

    .line 4240
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "canRepairUnitsOnlyWithTags requires canRepairUnits:true or canRepairBuildings:true"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4245
    :cond_74
    const-string v2, "core"

    const-string v4, "maxTransportingUnits"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eM:I

    .line 4246
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eM:I

    if-gez v2, :cond_75

    .line 4248
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "maxTransportingUnits cannot be < 0"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4251
    :cond_75
    const-string v2, "core"

    const-string v4, "transportUnitsUnloadDelayBetweenEachUnit"

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eN:F

    .line 4253
    const-string v2, "core"

    const-string v4, "transportUnitsRequireTag"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/g604;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eP:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 4256
    const-string v2, "core"

    const-string v4, "transportUnitsRequireMovementType"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4258
    if-eqz v2, :cond_76

    .line 4260
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_8 .. :try_end_8} :catch_3

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v5, :cond_76

    aget-object v6, v4, v2

    .line 4262
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 4264
    iget-object v7, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eQ:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    const-string v8, "transportUnitsRequireMovementType"

    invoke-static {v6, v8}, Lcom/corrodinggames/rts/game/units/cg456;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    .line 4260
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 4268
    :cond_76
    const-string v2, "core"

    const-string v4, "transportUnitsEachUnitAlwaysUsesSingleSlot"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eO:Z

    .line 4270
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eQ:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v2

    if-nez v2, :cond_7a

    const/4 v2, 0x1

    :goto_14
    const-string v4, "core"

    const-string v5, "transportUnitsBlockAirAndWaterUnits"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v4, v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eR:Z

    .line 4273
    const-string v2, "core"

    const-string v4, "transportUnitsBlockOtherTransports"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eS:Z

    .line 4275
    const-string v2, "core"

    const-string v4, "transportUnitsKeepBuiltUnits"

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->falseBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eU:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 4281
    const-string v2, "core"

    const-string v4, "transportUnitsKillOnDeath"

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->trueBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eV:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 4283
    const-string v2, "core"

    const-string v4, "transportUnitsKeepWaypoints"

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->falseBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eW:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 4286
    const-string v2, "core"

    const-string v4, "transportUnitsHealBy"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eY:F

    .line 4290
    const-string v2, "core"

    const-string v4, "transportUnitsCanUnloadUnits"

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fc:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 4292
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fc:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    if-eqz v2, :cond_7b

    .line 4295
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fc:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fd:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 4305
    :goto_15
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fc:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    sget-object v4, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->falseBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    if-eq v2, v4, :cond_7c

    const/4 v2, 0x1

    :goto_16
    const-string v4, "core"

    const-string v5, "transportUnitsAddUnloadOption"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v4, v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eT:Z

    .line 4309
    const-string v2, "core"

    const-string v4, "transportUnitsOnTeamChangeKeepCurrentTeam"

    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eX:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eX:Z

    .line 4312
    const-string v2, "core"

    const-string v4, "transportSlotsNeeded"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eZ:I

    .line 4315
    const/4 v2, -0x1

    move v4, v2

    :goto_17
    const/16 v2, 0x1d

    if-gt v4, v2, :cond_7e

    .line 4317
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "builtFrom_"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v2

    .line 4319
    const/4 v5, -0x1

    if-ne v4, v5, :cond_77

    .line 4321
    const-string v2, "builtFrom_"

    .line 4324
    :cond_77
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4326
    const-string v5, "core"

    const/4 v7, 0x0

    invoke-virtual {v14, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4327
    if-eqz v5, :cond_7d

    .line 4330
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4331
    array-length v8, v7
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_a .. :try_end_a} :catch_3

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v8, :cond_7d

    aget-object v9, v7, v5

    .line 4333
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 4335
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_79

    .line 4340
    new-instance v10, Lcom/corrodinggames/rts/game/units/custom/p613;

    invoke-direct {v10}, Lcom/corrodinggames/rts/game/units/custom/p613;-><init>()V

    .line 4341
    iput-object v9, v10, Lcom/corrodinggames/rts/game/units/custom/p613;->a:Ljava/lang/String;

    .line 4342
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "core"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, "pos"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v16, 0x4479c000    # 999.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v11, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iput v11, v10, Lcom/corrodinggames/rts/game/units/custom/p613;->b:F

    .line 4343
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "core"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, "forceNano"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v11, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iput-boolean v11, v10, Lcom/corrodinggames/rts/game/units/custom/p613;->c:Z

    .line 4344
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "["

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "core"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "]"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/corrodinggames/rts/game/units/custom/p613;->d:Ljava/lang/String;

    .line 4348
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "core"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, "isLocked"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v15, v11, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v11

    iput-object v11, v10, Lcom/corrodinggames/rts/game/units/custom/p613;->f:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 4349
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "core"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, "isLockedMessage"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v15, v11}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/bu555;

    move-result-object v11

    iput-object v11, v10, Lcom/corrodinggames/rts/game/units/custom/p613;->g:Lcom/corrodinggames/rts/game/units/custom/bu555;

    .line 4350
    iget-object v11, v10, Lcom/corrodinggames/rts/game/units/custom/p613;->f:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    sget-object v15, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->falseBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    if-ne v11, v15, :cond_78

    .line 4352
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/corrodinggames/rts/game/units/custom/p613;->f:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 4356
    :cond_78
    const-string v11, "NONE"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 4358
    iget-object v9, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gg:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4331
    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_18

    .line 4270
    :cond_7a
    const/4 v2, 0x0

    goto/16 :goto_14

    .line 4299
    :cond_7b
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/l609;->fa:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fc:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 4300
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/l609;->fb:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fd:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    goto/16 :goto_15

    .line 4305
    :cond_7c
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 4315
    :cond_7d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_17

    .line 4369
    :cond_7e
    const/4 v2, 0x0

    :goto_19
    const/16 v4, 0x32

    if-gt v2, v4, :cond_80

    .line 4371
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "canBuild_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "core"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v4, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4372
    if-eqz v4, :cond_7f

    .line 4374
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "canBuild_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4376
    const-string v5, "core"

    invoke-static {v3, v14, v5, v4}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 4380
    :cond_80
    const-string v2, "canBuild_"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4383
    const-string v5, ""

    invoke-static {v3, v14, v2, v5}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 4387
    :cond_81
    invoke-static {v3, v14}, Lcom/corrodinggames/rts/game/units/custom/bx558;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;)Lcom/corrodinggames/rts/game/units/custom/bx558;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ff:Lcom/corrodinggames/rts/game/units/custom/bx558;

    .line 4390
    const-string v2, "movement"

    const-string v4, "movementType"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4392
    const-string v4, "movementType"

    invoke-static {v2, v4}, Lcom/corrodinggames/rts/game/units/cg456;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fg:Lcom/corrodinggames/rts/game/units/cg456;

    .line 4394
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-nez v2, :cond_83

    .line 4396
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fg:Lcom/corrodinggames/rts/game/units/cg456;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fh:Lcom/corrodinggames/rts/game/units/cg456;

    .line 4403
    :goto_1b
    const-string v2, "ai"

    const-string v4, "useAsBuilder"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    .line 4406
    const-string v2, "ai"

    const-string v4, "useAsAttacker"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fs:Z

    .line 4409
    const-string v2, "core"

    const-string v4, "isBuilder"

    const/4 v6, 0x0

    invoke-virtual {v14, v2, v4, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    .line 4410
    if-nez v6, :cond_85

    .line 4412
    if-nez v5, :cond_84

    .line 4414
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v2, v5

    .line 4429
    :goto_1c
    if-nez v2, :cond_82

    .line 4431
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4435
    :cond_82
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fp:Z

    .line 4436
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fq:Z

    .line 4438
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fp:Z

    if-nez v2, :cond_86

    .line 4440
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fq:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_86

    .line 4442
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot tell AI to use a non-builder as builder [ai]useAsBuilder:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fq:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [core]isBuilder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fp:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4400
    :cond_83
    sget-object v2, Lcom/corrodinggames/rts/game/units/cg456;->a:Lcom/corrodinggames/rts/game/units/cg456;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fh:Lcom/corrodinggames/rts/game/units/cg456;

    goto :goto_1b

    :cond_84
    move-object v4, v5

    move-object v2, v5

    .line 4418
    goto :goto_1c

    .line 4423
    :cond_85
    if-nez v5, :cond_102

    move-object v4, v6

    move-object v2, v6

    .line 4425
    goto :goto_1c

    .line 4447
    :cond_86
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fk:Z

    if-eqz v2, :cond_87

    .line 4449
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fr:Z

    .line 4452
    :cond_87
    const-string v2, "ai"

    const-string v4, "useAsHarvester"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 4454
    if-eqz v2, :cond_88

    .line 4456
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fr:Z

    .line 4463
    :cond_88
    const-string v2, "ai"

    const-string v4, "useAsTransport"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 4464
    if-nez v2, :cond_89

    .line 4466
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eM:I

    if-lez v2, :cond_8d

    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fq:Z

    if-nez v2, :cond_8d

    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-nez v2, :cond_8d

    const/4 v2, 0x1

    :goto_1d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4468
    iget-boolean v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eT:Z

    if-nez v4, :cond_89

    .line 4470
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4483
    :cond_89
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ft:Z

    .line 4488
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-eqz v2, :cond_8e

    .line 4490
    sget-object v2, Lcom/corrodinggames/rts/game/units/d/f655;->q:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 4534
    :goto_1e
    const-string v2, "graphics"

    const-string v4, "icon_zoomed_out"

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v2, v4, v5}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Z)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    .line 4537
    if-eqz v2, :cond_8a

    .line 4539
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ac:Lcom/corrodinggames/rts/game/q353;

    invoke-virtual {v3, v2, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/game/q353;)[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 4542
    :cond_8a
    const-string v2, "graphics"

    const-string v4, "icon_zoomed_out_neverShow"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 4544
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 4549
    :cond_8b
    const-string v2, "graphics"

    const-string v4, "showHealthBar"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->t:Z

    .line 4550
    const-string v2, "graphics"

    const-string v4, "showHealthBarChanges"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->u:Z

    .line 4553
    const-string v2, "graphics"

    const-string v4, "showEnergyBar"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->v:Z

    .line 4554
    const-string v2, "graphics"

    const-string v4, "showShotDelayBar"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->w:Z

    .line 4556
    const-string v2, "graphics"

    const-string v4, "showTransportBar"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->x:Z

    .line 4558
    const-string v2, "graphics"

    const-string v4, "showShieldBar"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->y:Z

    .line 4561
    const-string v2, "graphics"

    const-string v4, "showQueueBar"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->z:Z

    .line 4563
    const-string v2, "graphics"

    const-string v4, "showSelectionIndicator"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->A:Z

    .line 4566
    const-string v2, "movement"

    const-string v4, "slowDeathFall"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fi:Z

    .line 4567
    const-string v2, "movement"

    const-string v4, "slowDeathFallSmoke"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fj:Z

    .line 4570
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "movement"

    const-string v5, "moveSpeed"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v4, v5

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->j:F

    .line 4571
    const-string v2, "movement"

    const-string v4, "moveAccelerationSpeed"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dN:F

    .line 4572
    const-string v2, "movement"

    const-string v4, "moveDecelerationSpeed"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dO:F

    .line 4575
    const-string v2, "movement"

    const-string v4, "ignoreMoveOrders"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 4577
    iget-boolean v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-eqz v4, :cond_8c

    .line 4579
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dP:Z

    .line 4582
    :cond_8c
    if-eqz v2, :cond_97

    .line 4584
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 4586
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dP:Z

    .line 4588
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v2, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->j:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_97

    .line 4590
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[movement]ignoreMoveOrders expects moveSpeed=0"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4466
    :cond_8d
    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 4492
    :cond_8e
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fg:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v4, Lcom/corrodinggames/rts/game/units/cg456;->d:Lcom/corrodinggames/rts/game/units/cg456;

    if-ne v2, v4, :cond_8f

    .line 4494
    sget-object v2, Lcom/corrodinggames/rts/game/units/b/b412;->n:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_1e

    .line 4496
    :cond_8f
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fg:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v4, Lcom/corrodinggames/rts/game/units/cg456;->e:Lcom/corrodinggames/rts/game/units/cg456;

    if-ne v2, v4, :cond_90

    .line 4498
    sget-object v2, Lcom/corrodinggames/rts/game/units/h/h762;->q:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_1e

    .line 4500
    :cond_90
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fg:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v4, Lcom/corrodinggames/rts/game/units/cg456;->f:Lcom/corrodinggames/rts/game/units/cg456;

    if-ne v2, v4, :cond_93

    .line 4502
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cm:Z

    if-eqz v2, :cond_91

    .line 4504
    sget-object v2, Lcom/corrodinggames/rts/game/units/e/l714;->dQ:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_1e

    .line 4506
    :cond_91
    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/units/custom/l609;->l()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 4508
    sget-object v2, Lcom/corrodinggames/rts/game/units/e/b704;->h:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_1e

    .line 4512
    :cond_92
    sget-object v2, Lcom/corrodinggames/rts/game/units/e/h710;->n:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_1e

    .line 4517
    :cond_93
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cm:Z

    if-eqz v2, :cond_94

    .line 4519
    sget-object v2, Lcom/corrodinggames/rts/game/units/e/l714;->dQ:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_1e

    .line 4521
    :cond_94
    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/units/custom/l609;->l()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 4523
    sget-object v2, Lcom/corrodinggames/rts/game/units/e/b704;->h:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_1e

    .line 4527
    :cond_95
    sget-object v2, Lcom/corrodinggames/rts/game/units/e/l714;->dP:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->as:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto/16 :goto_1e

    .line 4595
    :cond_96
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-eqz v2, :cond_97

    .line 4597
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[movement]ignoreMoveOrders=false not yet supported on buildings"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4606
    :cond_97
    const-string v2, "movement"

    const-string v4, "moveYAxisScaling"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ej:F

    .line 4608
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ej:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_98

    .line 4610
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[movement]moveYAxisScaling must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4613
    :cond_98
    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ej:F

    div-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ek:F

    .line 4616
    const-string v2, "movement"

    const-string v4, "reverseSpeedPercentage"

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->el:F

    .line 4619
    const-string v2, "movement"

    const-string v4, "landOnGround"

    const-string v5, "false"

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4620
    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 4622
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dQ:Z

    .line 4638
    :goto_1f
    const/4 v4, 0x0

    .line 4639
    const/4 v2, 0x0

    .line 4641
    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fg:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v6, Lcom/corrodinggames/rts/game/units/cg456;->d:Lcom/corrodinggames/rts/game/units/cg456;

    if-ne v5, v6, :cond_99

    .line 4643
    const/high16 v4, 0x420c0000    # 35.0f

    .line 4644
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 4649
    :cond_99
    const-string v5, "movement"

    const-string v6, "startingHeightOffset"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v14, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dS:F

    .line 4651
    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v6, "movement"

    const-string v7, "targetHeight"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v14, v6, v7, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v5, Lcom/corrodinggames/rts/game/units/custom/as512;->q:F

    .line 4652
    const-string v4, "movement"

    const-string v5, "targetHeightDrift"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v14, v4, v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dT:F

    .line 4655
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v2, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->q:F

    const/high16 v4, 0x42a00000    # 80.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_9a

    .line 4657
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->B:Z

    .line 4660
    :cond_9a
    const-string v2, "movement"

    const-string v4, "heightChangeRate"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dU:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dU:F

    .line 4661
    const-string v2, "movement"

    const-string v4, "fallingAcceleration"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dV:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dV:F

    .line 4663
    const-string v2, "movement"

    const-string v4, "fallingAccelerationDead"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dW:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dW:F

    .line 4665
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "movement"

    const-string v5, "maxTurnSpeed"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->k:F

    .line 4666
    const-string v2, "movement"

    const-string v4, "turnAcceleration"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eo:F

    .line 4669
    const-string v2, "movement"

    const-string v4, "moveSlidingMode"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dX:Z

    .line 4670
    const-string v2, "movement"

    const-string v4, "moveIgnoringBody"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dY:Z

    .line 4671
    const-string v2, "movement"

    const-string v4, "moveSlidingDir"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dZ:I

    .line 4673
    const-string v2, "movement"

    const-string v4, "joinsGroupFormations"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ei:Z

    .line 4676
    const-string v2, "attack"

    const-string v4, "turretSize"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ea:F

    .line 4677
    const-string v2, "attack"

    const-string v4, "turretTurnSpeed"

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eb:F

    .line 4679
    const-string v2, "attack"

    const-string v4, "turretRotateWithBody"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dL:Z

    .line 4682
    const-string v2, "attack"

    const-string v4, "attackMovement"

    const-string v5, "normal"

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4684
    sget v4, Lcom/corrodinggames/rts/game/units/b421;->a:I

    iput v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ec:I

    .line 4685
    const-string v4, "normal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 4687
    sget v4, Lcom/corrodinggames/rts/game/units/b421;->a:I

    iput v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ec:I

    .line 4689
    :cond_9b
    const-string v4, "strafing"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 4691
    sget v4, Lcom/corrodinggames/rts/game/units/b421;->b:I

    iput v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ec:I

    .line 4693
    :cond_9c
    const-string v4, "bomber"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 4695
    sget v2, Lcom/corrodinggames/rts/game/units/b421;->d:I

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ec:I

    .line 4699
    :cond_9d
    const-string v2, "attack"

    const-string v4, "disablePassiveTargeting"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ef:Z

    .line 4702
    const-string v2, "attack"

    const-string v4, "stopTargetingAfterFiring"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eg:Z

    .line 4704
    const-string v2, "attack"

    const-string v4, "turretMultiTargeting"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eh:Z

    .line 4706
    const-string v2, "attack"

    const-string v4, "attackMovementSpeed"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ed:F

    .line 4707
    const-string v2, "attack"

    const-string v4, "attackMovementSpread"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ee:F

    .line 4712
    const-string v2, "attack"

    const-string v4, "maxAttackRange"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    .line 4715
    if-eqz v2, :cond_a2

    .line 4717
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v2, v5

    iput v2, v4, Lcom/corrodinggames/rts/game/units/custom/as512;->i:F

    const/4 v2, 0x1

    move v10, v2

    .line 4727
    :goto_20
    const-string v2, "attack"

    const-string v4, "aimOffsetSpread"

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ez:F

    .line 4730
    const-string v2, "attack"

    const-string v4, "shootDelay"

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dM:F

    .line 4734
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "attack"

    const-string v5, "shootDelayMultiplier"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->e:F

    .line 4737
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const-string v4, "attack"

    const-string v5, "shootDamageMultiplier"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->f:F

    .line 4741
    const-string v2, "attack"

    const-string v4, "showRangeUIGuide"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dK:Ljava/lang/Boolean;

    .line 4743
    const-string v2, "attack"

    const-string v4, "isMelee"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eF:Z

    .line 4746
    const/4 v2, 0x0

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eG:F

    .line 4748
    const-string v2, "attack"

    const-string v4, "meleeEngangementDistance"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    .line 4750
    iget-boolean v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eF:Z

    if-eqz v4, :cond_a3

    .line 4752
    const/high16 v4, 0x437a0000    # 250.0f

    iput v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eG:F

    .line 4753
    if-eqz v2, :cond_9e

    .line 4755
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eG:F

    .line 4767
    :cond_9e
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ah501;->k:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v12, v13, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    .line 4777
    const-string v2, "projectile_"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4779
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4781
    invoke-virtual {v3, v5}, Lcom/corrodinggames/rts/game/units/custom/l609;->e(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/ca568;

    move-result-object v6

    if-eqz v6, :cond_a4

    .line 4783
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Two projectiles found with the same name:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4624
    :cond_9f
    const-string v4, "onlyIdle"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 4626
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dQ:Z

    .line 4627
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dR:Z

    goto/16 :goto_1f

    .line 4629
    :cond_a0
    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 4631
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dQ:Z

    goto/16 :goto_1f

    .line 4635
    :cond_a1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "landOnGround expected:true, false, onlyIdle, not:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4723
    :cond_a2
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    const/high16 v4, 0x42c80000    # 100.0f

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v4, v5

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->i:F

    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_20

    .line 4760
    :cond_a3
    if-eqz v2, :cond_9e

    .line 4762
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[attack]meleeEngangementDistance can only be used with isMelee:true"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4786
    :cond_a4
    new-instance v6, Lcom/corrodinggames/rts/game/units/custom/ca568;

    invoke-direct {v6}, Lcom/corrodinggames/rts/game/units/custom/ca568;-><init>()V

    .line 4787
    iput-object v5, v6, Lcom/corrodinggames/rts/game/units/custom/ca568;->bh:Ljava/lang/String;

    .line 4788
    iput-object v3, v6, Lcom/corrodinggames/rts/game/units/custom/ca568;->bj:Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 4790
    invoke-static {v6, v3, v14, v2}, Lcom/corrodinggames/rts/game/units/custom/ca568;->a(Lcom/corrodinggames/rts/game/units/custom/ca568;Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;)V

    goto :goto_21

    .line 4793
    :cond_a5
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4794
    if-gtz v2, :cond_a6

    .line 4796
    const/4 v2, 0x1

    .line 4799
    :cond_a6
    new-array v2, v2, [Lcom/corrodinggames/rts/game/units/custom/ca568;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fR:[Lcom/corrodinggames/rts/game/units/custom/ca568;

    .line 4801
    const/4 v2, 0x0

    move v4, v2

    :goto_22
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_a7

    .line 4803
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fT:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/ca568;

    .line 4804
    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/ca568;->bi:I

    .line 4805
    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fR:[Lcom/corrodinggames/rts/game/units/custom/ca568;

    aput-object v2, v5, v4

    .line 4801
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_22

    .line 4809
    :cond_a7
    const/4 v2, 0x0

    :goto_23
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fR:[Lcom/corrodinggames/rts/game/units/custom/ca568;

    array-length v4, v4

    if-ge v2, v4, :cond_a9

    .line 4811
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fR:[Lcom/corrodinggames/rts/game/units/custom/ca568;

    aget-object v4, v4, v2

    .line 4812
    if-eqz v4, :cond_a8

    .line 4814
    iget v5, v4, Lcom/corrodinggames/rts/game/units/custom/ca568;->w:F

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/corrodinggames/rts/game/units/custom/ca568;->w:F

    .line 4815
    iget v5, v4, Lcom/corrodinggames/rts/game/units/custom/ca568;->au:F

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/corrodinggames/rts/game/units/custom/ca568;->au:F

    .line 4816
    iget v5, v4, Lcom/corrodinggames/rts/game/units/custom/ca568;->aF:F

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/corrodinggames/rts/game/units/custom/ca568;->aF:F

    .line 4809
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 4820
    :cond_a9
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fR:[Lcom/corrodinggames/rts/game/units/custom/ca568;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-nez v2, :cond_aa

    .line 4822
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ca568;

    invoke-direct {v2}, Lcom/corrodinggames/rts/game/units/custom/ca568;-><init>()V

    .line 4823
    const/4 v4, 0x0

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/ca568;->bi:I

    .line 4824
    const-string v4, "1"

    iput-object v4, v2, Lcom/corrodinggames/rts/game/units/custom/ca568;->bh:Ljava/lang/String;

    .line 4825
    const/16 v4, 0xa

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/ca568;->b:I

    .line 4827
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fT:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4828
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fR:[Lcom/corrodinggames/rts/game/units/custom/ca568;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 4832
    :cond_aa
    iget-object v15, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fS:Ljava/util/ArrayList;

    .line 4837
    const-string v2, "turret_"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4839
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4841
    invoke-virtual {v3, v5}, Lcom/corrodinggames/rts/game/units/custom/l609;->d(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/cg574;

    move-result-object v6

    if-eqz v6, :cond_ab

    .line 4843
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Two turrets found with the same name:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4846
    :cond_ab
    new-instance v6, Lcom/corrodinggames/rts/game/units/custom/cg574;

    invoke-direct {v6}, Lcom/corrodinggames/rts/game/units/custom/cg574;-><init>()V

    .line 4847
    iput-object v5, v6, Lcom/corrodinggames/rts/game/units/custom/cg574;->a:Ljava/lang/String;

    .line 4848
    iput-object v2, v6, Lcom/corrodinggames/rts/game/units/custom/cg574;->b:Ljava/lang/String;

    .line 4850
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 4853
    :cond_ac
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/cg574;

    .line 4862
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->b:Ljava/lang/String;

    invoke-static {v2, v3, v14, v5}, Lcom/corrodinggames/rts/game/units/custom/cg574;->a(Lcom/corrodinggames/rts/game/units/custom/cg574;Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;)V

    goto :goto_25

    .line 4896
    :cond_ad
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_ae

    .line 4898
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/cg574;

    invoke-direct {v2}, Lcom/corrodinggames/rts/game/units/custom/cg574;-><init>()V

    .line 4899
    const/4 v4, 0x0

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->f:F

    .line 4900
    const/4 v4, 0x0

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->g:F

    .line 4901
    const-string v4, "1"

    iput-object v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->a:Ljava/lang/String;

    .line 4903
    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dM:F

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->m:F

    .line 4906
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4910
    :cond_ae
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_26
    if-ltz v4, :cond_b0

    .line 4912
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_af

    .line 4914
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/cg574;

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->e:I

    .line 4910
    :cond_af
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_26

    .line 4918
    :cond_b0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_27
    if-ltz v4, :cond_b4

    .line 4920
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b3

    .line 4922
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/cg574;

    .line 4924
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->y:Lcom/corrodinggames/rts/game/units/custom/cg574;

    if-eqz v5, :cond_b1

    .line 4926
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->y:Lcom/corrodinggames/rts/game/units/custom/cg574;

    iget v5, v5, Lcom/corrodinggames/rts/game/units/custom/cg574;->e:I

    iput v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->w:I

    .line 4929
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->y:Lcom/corrodinggames/rts/game/units/custom/cg574;

    iget-object v5, v5, Lcom/corrodinggames/rts/game/units/custom/cg574;->y:Lcom/corrodinggames/rts/game/units/custom/cg574;

    if-eqz v5, :cond_b1

    .line 4931
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Turret can not be attached to turret that is also attached to a turret"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4936
    :cond_b1
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->z:Lcom/corrodinggames/rts/game/units/custom/cg574;

    if-eqz v5, :cond_b2

    .line 4938
    iget-object v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->z:Lcom/corrodinggames/rts/game/units/custom/cg574;

    iget v5, v5, Lcom/corrodinggames/rts/game/units/custom/cg574;->e:I

    iput v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->x:I

    .line 4941
    :cond_b2
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->W:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b3

    .line 4943
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->V:F

    iput v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->W:F

    .line 4918
    :cond_b3
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_27

    .line 4949
    :cond_b4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x1f

    if-le v2, v4, :cond_b5

    .line 4951
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Turret max count per unit is: 31"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4955
    :cond_b5
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/corrodinggames/rts/game/units/custom/cg574;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/corrodinggames/rts/game/units/custom/cg574;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fQ:[Lcom/corrodinggames/rts/game/units/custom/cg574;

    .line 4958
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v2, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->i:F

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dJ:F

    .line 4961
    const/high16 v4, -0x40800000    # -1.0f

    .line 4963
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_28
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/cg574;

    .line 4969
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->X:F

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->X:F

    .line 4971
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->f:F

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->f:F

    .line 4972
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->g:F

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->g:F

    .line 4976
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->Y:F

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->Y:F

    .line 4979
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->Z:F

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aG:F

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->Z:F

    .line 4981
    const/4 v7, 0x0

    .line 4984
    iget-boolean v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->B:Z

    if-eqz v5, :cond_ff

    .line 4986
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ab:F

    const v6, 0x47c34f80    # 99999.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_b7

    .line 4988
    const/4 v8, 0x0

    move v5, v7

    move v6, v4

    .line 5027
    :goto_29
    iget-object v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ac:Ljava/lang/Boolean;

    if-eqz v4, :cond_100

    .line 5029
    iget-object v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ac:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 5033
    :goto_2a
    if-eqz v4, :cond_b6

    .line 5035
    new-instance v4, Lcom/corrodinggames/rts/game/units/custom/y622;

    invoke-direct {v4}, Lcom/corrodinggames/rts/game/units/custom/y622;-><init>()V

    .line 5036
    iget v2, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ab:F

    iput v2, v4, Lcom/corrodinggames/rts/game/units/custom/y622;->a:F

    .line 5038
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->o:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    :cond_b6
    move v4, v6

    .line 5043
    goto :goto_28

    .line 4992
    :cond_b7
    const/4 v9, 0x1

    .line 4994
    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dJ:F

    iget v6, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ab:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b8

    .line 4996
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ab:F

    iput v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dJ:F

    .line 4999
    :cond_b8
    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ab:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_fe

    .line 5001
    iget v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ab:F

    move v6, v4

    .line 5005
    :goto_2b
    iget v4, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ab:F

    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v5, v5, Lcom/corrodinggames/rts/game/units/custom/as512;->i:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_fd

    .line 5007
    const/4 v5, 0x0

    .line 5009
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->o:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/corrodinggames/rts/game/units/custom/y622;

    .line 5011
    iget v0, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->ab:F

    move/from16 v17, v0

    iget v4, v4, Lcom/corrodinggames/rts/game/units/custom/y622;->a:F

    sub-float v4, v17, v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    const/high16 v17, 0x40a00000    # 5.0f

    cmpg-float v4, v4, v17

    if-gez v4, :cond_101

    .line 5013
    const/4 v4, 0x1

    :goto_2d
    move v5, v4

    .line 5015
    goto :goto_2c

    .line 5017
    :cond_b9
    if-nez v5, :cond_fd

    .line 5019
    const/4 v5, 0x1

    goto :goto_29

    .line 5045
    :cond_ba
    if-eqz v9, :cond_bb

    .line 5047
    if-eqz v8, :cond_bb

    .line 5049
    if-nez v10, :cond_bc

    .line 5051
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->i:F

    .line 5066
    :cond_bb
    const-string v2, "attack"

    const-string v4, "setMainTurretAs"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5068
    if-eqz v2, :cond_bd

    .line 5070
    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->d(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/cg574;

    move-result-object v4

    iput-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dF:Lcom/corrodinggames/rts/game/units/custom/cg574;

    .line 5072
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dF:Lcom/corrodinggames/rts/game/units/custom/cg574;

    if-nez v4, :cond_be

    .line 5074
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "[attack] Could not find setMainTurretAs with name: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5056
    :cond_bc
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v2, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->i:F

    cmpg-float v2, v4, v2

    if-gez v2, :cond_bb

    .line 5058
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "limitingRange as been applied to all turrets but is less than maxAttackRange (hint: unset maxAttackRange or a limitingRange, or make values match)"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5079
    :cond_bd
    const-string v2, "1"

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->d(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/cg574;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dF:Lcom/corrodinggames/rts/game/units/custom/cg574;

    .line 5081
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dF:Lcom/corrodinggames/rts/game/units/custom/cg574;

    if-nez v2, :cond_be

    .line 5083
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fQ:[Lcom/corrodinggames/rts/game/units/custom/cg574;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dF:Lcom/corrodinggames/rts/game/units/custom/cg574;

    .line 5087
    :cond_be
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dF:Lcom/corrodinggames/rts/game/units/custom/cg574;

    iget v2, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->e:I

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dG:I

    .line 5090
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ah501;->l:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v12, v13, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    .line 5093
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v10

    .line 5095
    const-string v2, "core"

    const-string v4, "action_"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 5097
    const/4 v2, 0x0

    :goto_2e
    const/16 v4, 0x32

    if-gt v2, v4, :cond_bf

    .line 5099
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "core"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v14

    invoke-static/range {v3 .. v9}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 5097
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 5103
    :cond_bf
    const-string v2, "action_"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5105
    const/4 v4, 0x7

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 5107
    invoke-virtual {v3, v7}, Lcom/corrodinggames/rts/game/units/custom/l609;->f(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/a/d489;

    move-result-object v4

    if-eqz v4, :cond_c0

    .line 5109
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Two actions found with the same name:"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5112
    :cond_c0
    const-string v6, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v14

    invoke-static/range {v3 .. v9}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2f

    .line 5116
    :cond_c1
    const-string v2, "hiddenAction_"

    invoke-virtual {v14, v2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v2

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5118
    const/16 v4, 0xd

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 5120
    invoke-virtual {v3, v7}, Lcom/corrodinggames/rts/game/units/custom/l609;->f(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/a/d489;

    move-result-object v4

    if-eqz v4, :cond_c2

    .line 5122
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Two actions found with the same name:"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5125
    :cond_c2
    const-string v6, ""

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, v14

    invoke-static/range {v3 .. v9}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_30

    .line 5128
    :cond_c3
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ah501;->j:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v10, v11, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    .line 5131
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5132
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5136
    const/4 v2, 0x0

    move v11, v2

    :goto_31
    const/4 v2, 0x1

    if-gt v11, v2, :cond_c9

    .line 5138
    if-nez v11, :cond_c4

    const/4 v6, 0x1

    .line 5139
    :goto_32
    if-eqz v6, :cond_c5

    move-object v7, v8

    .line 5141
    :goto_33
    const/4 v2, 0x1

    move v10, v2

    :goto_34
    const/16 v2, 0x15

    if-ge v10, v2, :cond_c8

    .line 5144
    if-eqz v6, :cond_c6

    const-string v2, "leg_"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5146
    :goto_35
    invoke-virtual {v14, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 5148
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/bt554;

    invoke-direct {v2}, Lcom/corrodinggames/rts/game/units/custom/bt554;-><init>()V

    move-object v4, v14

    .line 5150
    invoke-static/range {v2 .. v7}, Lcom/corrodinggames/rts/game/units/custom/bt554;->a(Lcom/corrodinggames/rts/game/units/custom/bt554;Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 5152
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5141
    :goto_36
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_34

    .line 5138
    :cond_c4
    const/4 v6, 0x0

    goto :goto_32

    :cond_c5
    move-object v7, v9

    .line 5139
    goto :goto_33

    .line 5144
    :cond_c6
    const-string v2, "arm_"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    .line 5156
    :cond_c7
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 5136
    :cond_c8
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_31

    .line 5162
    :cond_c9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5163
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ca
    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/bt554;

    .line 5165
    if-eqz v2, :cond_ca

    .line 5167
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 5170
    :cond_cb
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_cc
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/bt554;

    .line 5172
    if-eqz v2, :cond_cc

    .line 5174
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 5178
    :cond_cd
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_39
    if-ltz v4, :cond_ce

    .line 5180
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/bt554;

    .line 5181
    iput v4, v2, Lcom/corrodinggames/rts/game/units/custom/bt554;->a:I

    .line 5178
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_39

    .line 5185
    :cond_ce
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/corrodinggames/rts/game/units/custom/bt554;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/corrodinggames/rts/game/units/custom/bt554;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ax:[Lcom/corrodinggames/rts/game/units/custom/bt554;

    .line 5188
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ax:[Lcom/corrodinggames/rts/game/units/custom/bt554;

    array-length v2, v2

    if-lez v2, :cond_cf

    .line 5190
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/b/h527;->a:Lcom/corrodinggames/rts/game/units/custom/b/a520;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/custom/b/a520;)V

    .line 5196
    :cond_cf
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->dr:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/f603;

    .line 5198
    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/f603;->a(Lcom/corrodinggames/rts/game/units/custom/l609;)V

    goto :goto_3a

    .line 5203
    :cond_d0
    invoke-static {v3}, Lcom/corrodinggames/rts/game/units/custom/ag500;->b(Lcom/corrodinggames/rts/game/units/custom/l609;)V

    .line 5205
    const-string v2, "core"

    const-string v4, "fireTurretXAtSelfOnDeath"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5207
    if-eqz v2, :cond_d2

    const-string v4, "NONE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d2

    .line 5209
    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->d(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/cg574;

    move-result-object v4

    .line 5211
    if-nez v4, :cond_d1

    .line 5213
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot find turret:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "core"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]fireTurretXAtSelfOnDeath"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5216
    :cond_d1
    iget v2, v4, Lcom/corrodinggames/rts/game/units/custom/cg574;->e:I

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bB:I

    .line 5226
    :cond_d2
    invoke-static {v3, v14}, Lcom/corrodinggames/rts/game/units/custom/b/c522;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Lcom/corrodinggames/rts/gameFramework/utility/ae1325;)V

    .line 5236
    const-string v2, "attack"

    const-string v4, "dieOnAttack"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bj:Z

    .line 5237
    const-string v2, "attack"

    const-string v4, "removeOnAttack"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->bl:Z

    .line 5240
    const-string v2, "attack"

    const-string v4, "canAttack"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ep:Z

    .line 5242
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ep:Z

    if-eqz v2, :cond_d9

    .line 5244
    const-string v2, "attack"

    const-string v4, "canAttackFlyingUnits"

    invoke-virtual {v14, v3, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eq:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 5245
    const-string v2, "attack"

    const-string v4, "canAttackLandUnits"

    invoke-virtual {v14, v3, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->er:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 5246
    const-string v2, "attack"

    const-string v4, "canAttackUnderwaterUnits"

    invoke-virtual {v14, v3, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->es:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 5259
    :goto_3b
    const-string v2, "attack"

    const-string v4, "canAttackNotTouchingWaterUnits"

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->et:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 5260
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->et:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->isStaticTrue(Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 5262
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->et:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 5265
    :cond_d3
    const-string v2, "attack"

    const-string v4, "canOnlyAttackUnitsWithTags"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ev:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 5266
    const-string v2, "attack"

    const-string v4, "canOnlyAttackUnitsWithoutTags"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ew:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 5268
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ev:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-nez v2, :cond_d4

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ew:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-eqz v2, :cond_d5

    .line 5270
    :cond_d4
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eu:Z

    .line 5273
    :cond_d5
    const/4 v4, 0x0

    .line 5275
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v2, 0x0

    move v5, v2

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/cg574;

    .line 5278
    iget-object v7, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->O:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-eqz v7, :cond_d6

    .line 5280
    iget-object v7, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->O:Lcom/corrodinggames/rts/game/units/custom/h605;

    iget-object v8, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ev:Lcom/corrodinggames/rts/game/units/custom/h605;

    invoke-virtual {v7, v8}, Lcom/corrodinggames/rts/game/units/custom/h605;->a(Lcom/corrodinggames/rts/game/units/custom/h605;)Z

    move-result v7

    if-eqz v7, :cond_d6

    .line 5282
    const/4 v7, 0x0

    iput-object v7, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->O:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 5286
    :cond_d6
    iget-object v7, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->P:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-eqz v7, :cond_d7

    .line 5288
    iget-object v7, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->P:Lcom/corrodinggames/rts/game/units/custom/h605;

    iget-object v8, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ew:Lcom/corrodinggames/rts/game/units/custom/h605;

    invoke-virtual {v7, v8}, Lcom/corrodinggames/rts/game/units/custom/h605;->a(Lcom/corrodinggames/rts/game/units/custom/h605;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 5290
    const/4 v7, 0x0

    iput-object v7, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->P:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 5294
    :cond_d7
    iget-boolean v7, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->B:Z

    if-eqz v7, :cond_fc

    .line 5296
    iget-object v7, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->O:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-nez v7, :cond_d8

    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/custom/cg574;->P:Lcom/corrodinggames/rts/game/units/custom/h605;

    if-eqz v2, :cond_da

    .line 5298
    :cond_d8
    const/4 v2, 0x1

    move v5, v2

    goto :goto_3c

    .line 5250
    :cond_d9
    const-string v2, "attack"

    const-string v4, "canAttackFlyingUnits"

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->falseBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eq:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 5251
    const-string v2, "attack"

    const-string v4, "canAttackLandUnits"

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->falseBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->er:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    .line 5252
    const-string v2, "attack"

    const-string v4, "canAttackUnderwaterUnits"

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;->falseBoolean:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean$StaticBoolean;

    invoke-virtual {v14, v3, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Lcom/corrodinggames/rts/game/units/custom/l609;Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;)Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->es:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    goto/16 :goto_3b

    .line 5302
    :cond_da
    const/4 v2, 0x1

    :goto_3d
    move v4, v2

    .line 5305
    goto :goto_3c

    .line 5306
    :cond_db
    if-eqz v5, :cond_dc

    if-nez v4, :cond_dc

    .line 5308
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ex:Z

    .line 5309
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eu:Z

    .line 5314
    :cond_dc
    const-string v2, "attack"

    const-string v4, "isFixedFiring"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ey:Z

    .line 5323
    const-string v2, "ai"

    const-string v4, "lowPriorityTargetForOtherUnits"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fM:Z

    .line 5324
    const-string v2, "ai"

    const-string v4, "notPassivelyTargetedByOtherUnits"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fN:Z

    .line 5333
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ep:Z

    if-eqz v2, :cond_dd

    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fN:Z

    if-eqz v2, :cond_dd

    .line 5335
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[ai]notPassivelyTargetedByOtherUnits is cannot currently supported on units that can attack"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5338
    :cond_dd
    const-string v2, "ai"

    const-string v4, "aiTags"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fv:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 5341
    const-string v2, "ai"

    const-string v4, "disableUse"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fw:Z

    .line 5343
    const-string v2, "ai"

    const-string v4, "buildPriority"

    const v5, 0x3d4ccccd    # 0.05f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fz:F

    .line 5345
    const-string v2, "ai"

    const-string v4, "recommendedInEachBaseNum"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fA:I

    .line 5346
    const-string v2, "ai"

    const-string v4, "recommendedInEachBasePriorityIfUnmet"

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fB:F

    .line 5350
    const-string v2, "ai"

    const-string v4, "maxEachBase"

    const/4 v5, 0x2

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fA:I

    invoke-static {v5, v6}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fy:I

    .line 5351
    const-string v2, "ai"

    const-string v4, "maxGlobal"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fx:I

    .line 5353
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fy:I

    iget v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fA:I

    if-ge v2, v4, :cond_de

    .line 5355
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[ai]recommendedInEachBaseNum is smaller than maxEachBase"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5359
    :cond_de
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-nez v2, :cond_e0

    .line 5361
    const-string v2, "ai"

    const-string v4, "recommendedInEachBaseNum"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 5363
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[ai]recommendedInEachBaseNum currently only applies to buildings"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5365
    :cond_df
    const-string v2, "ai"

    const-string v4, "recommendedInEachBasePriorityIfUnmet"

    invoke-virtual {v14, v2, v4}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 5367
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[ai]recommendedInEachBasePriorityIfUnmet currently only applies to buildings"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5374
    :cond_e0
    const-string v2, "ai"

    const-string v4, "whenUsingAsHarvester_recommendedInEachBase"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fE:I

    .line 5375
    const-string v2, "ai"

    const-string v4, "whenUsingAsHarvester_recommendedGlobal"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fF:I

    .line 5376
    const-string v2, "ai"

    const-string v4, "whenUsingAsHarvester_includeOtherHarvesterCounts"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fG:Z

    .line 5379
    const-string v2, "ai"

    const-string v4, "onlyUseAsHarvester_ifBaseHasUnitTagged"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/h605;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fH:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 5382
    const-string v2, "ai"

    const-string v4, "nonInBaseExtraPriority"

    const v5, 0x3d23d70a    # 0.04f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fC:F

    .line 5383
    const-string v2, "ai"

    const-string v4, "noneInBaseExtraPriority"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fC:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fC:F

    .line 5386
    const-string v2, "ai"

    const-string v4, "nonGlobalExtraPriority"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fD:F

    .line 5387
    const-string v2, "ai"

    const-string v4, "noneGlobalExtraPriority"

    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fD:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fD:F

    .line 5389
    const-string v2, "ai"

    const-string v4, "upgradedFrom"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fI:Ljava/lang/String;

    .line 5393
    const-string v2, "ai"

    const-string v4, "ai_upgradePriority"

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    .line 5394
    if-eqz v2, :cond_e1

    .line 5396
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e1

    .line 5400
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_e5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_e5

    .line 5402
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fK:F

    .line 5413
    :cond_e1
    iget-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ep:Z

    if-eqz v2, :cond_e6

    .line 5416
    const/4 v2, 0x0

    :goto_3e
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fQ:[Lcom/corrodinggames/rts/game/units/custom/cg574;

    array-length v4, v4

    if-ge v2, v4, :cond_e6

    .line 5418
    iget-object v4, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fQ:[Lcom/corrodinggames/rts/game/units/custom/cg574;

    aget-object v4, v4, v2

    .line 5419
    iget-boolean v5, v4, Lcom/corrodinggames/rts/game/units/custom/cg574;->B:Z

    if-eqz v5, :cond_e4

    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/custom/cg574;->ao:Lcom/corrodinggames/rts/game/units/custom/cg574;

    if-nez v5, :cond_e4

    .line 5423
    iget-boolean v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->w:Z

    if-eqz v5, :cond_e4

    .line 5426
    iget v5, v4, Lcom/corrodinggames/rts/game/units/custom/cg574;->m:F

    const/high16 v6, 0x430c0000    # 140.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_e3

    .line 5429
    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->em:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_e2

    iget-object v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fQ:[Lcom/corrodinggames/rts/game/units/custom/cg574;

    iget v6, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->em:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/corrodinggames/rts/game/units/custom/cg574;->m:F

    iget v6, v4, Lcom/corrodinggames/rts/game/units/custom/cg574;->m:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e3

    .line 5431
    :cond_e2
    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->em:I

    .line 5435
    :cond_e3
    iget v4, v4, Lcom/corrodinggames/rts/game/units/custom/cg574;->n:F

    const/high16 v5, 0x42a00000    # 80.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_e4

    .line 5437
    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->en:I

    .line 5416
    :cond_e4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 5406
    :cond_e5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ai]ai_upgradePriority: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fK:F

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be between 0-1 or -1 for default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5447
    :cond_e6
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_e7

    .line 5450
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fg:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v4, Lcom/corrodinggames/rts/game/units/cg456;->d:Lcom/corrodinggames/rts/game/units/cg456;

    if-ne v2, v4, :cond_e8

    .line 5452
    const/4 v2, 0x5

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    .line 5493
    :cond_e7
    :goto_3f
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fW:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v2

    if-lez v2, :cond_f1

    .line 5497
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fX:Z

    .line 5500
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 5501
    new-instance v5, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v5}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 5502
    new-instance v6, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v6}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 5504
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fW:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/r615;

    .line 5506
    iget-object v8, v2, Lcom/corrodinggames/rts/game/units/custom/r615;->c:Lcom/corrodinggames/rts/game/units/custom/s616;

    sget-object v9, Lcom/corrodinggames/rts/game/units/custom/s616;->a:Lcom/corrodinggames/rts/game/units/custom/s616;

    if-ne v8, v9, :cond_ed

    .line 5508
    invoke-virtual {v4, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 5454
    :cond_e8
    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/units/custom/l609;->j()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 5457
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->al:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-eqz v2, :cond_e9

    .line 5459
    const/4 v2, 0x3

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto :goto_3f

    .line 5463
    :cond_e9
    const/4 v2, 0x2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto :goto_3f

    .line 5469
    :cond_ea
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cL:Lcom/corrodinggames/rts/game/units/custom/as512;

    iget v2, v2, Lcom/corrodinggames/rts/game/units/custom/as512;->q:F

    const/high16 v4, -0x40000000    # -2.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_eb

    .line 5471
    const/4 v2, 0x1

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto :goto_3f

    .line 5476
    :cond_eb
    iget v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->eM:I

    if-lez v2, :cond_ec

    .line 5478
    const/4 v2, 0x3

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto :goto_3f

    .line 5482
    :cond_ec
    const/4 v2, 0x2

    iput v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->cI:I

    goto :goto_3f

    .line 5510
    :cond_ed
    iget-object v8, v2, Lcom/corrodinggames/rts/game/units/custom/r615;->c:Lcom/corrodinggames/rts/game/units/custom/s616;

    sget-object v9, Lcom/corrodinggames/rts/game/units/custom/s616;->b:Lcom/corrodinggames/rts/game/units/custom/s616;

    if-ne v8, v9, :cond_ee

    .line 5512
    invoke-virtual {v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 5514
    :cond_ee
    iget-object v8, v2, Lcom/corrodinggames/rts/game/units/custom/r615;->c:Lcom/corrodinggames/rts/game/units/custom/s616;

    sget-object v9, Lcom/corrodinggames/rts/game/units/custom/s616;->c:Lcom/corrodinggames/rts/game/units/custom/s616;

    if-ne v8, v9, :cond_ef

    .line 5516
    invoke-virtual {v6, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 5520
    :cond_ef
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown check rate:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/custom/r615;->c:Lcom/corrodinggames/rts/game/units/custom/s616;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5524
    :cond_f0
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/corrodinggames/rts/game/units/custom/r615;

    invoke-virtual {v4, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/corrodinggames/rts/game/units/custom/r615;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fY:[Lcom/corrodinggames/rts/game/units/custom/r615;

    .line 5525
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/corrodinggames/rts/game/units/custom/r615;

    invoke-virtual {v5, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/corrodinggames/rts/game/units/custom/r615;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->fZ:[Lcom/corrodinggames/rts/game/units/custom/r615;

    .line 5526
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/corrodinggames/rts/game/units/custom/r615;

    invoke-virtual {v6, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/corrodinggames/rts/game/units/custom/r615;

    iput-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->ga:[Lcom/corrodinggames/rts/game/units/custom/r615;

    .line 5534
    :cond_f1
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gp:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    if-eqz v2, :cond_f2

    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gp:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v2

    if-lez v2, :cond_f2

    .line 5536
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gp:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_41

    .line 5543
    :cond_f2
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gb:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->a:I

    if-lez v2, :cond_f4

    .line 5545
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gb:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/t617;

    .line 5547
    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/units/custom/t617;->a(Lcom/corrodinggames/rts/game/units/custom/l609;)V

    goto :goto_42

    .line 5549
    :cond_f3
    iget-object v2, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->gb:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->clear()V

    .line 5554
    :cond_f4
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ah501;->m:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v12, v13, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    .line 5557
    invoke-virtual {v14}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a()V

    .line 5559
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/gameFramework/utility/af1326;

    .line 5561
    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/af1326;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f7

    .line 5563
    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/af1326;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hiddenAction_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f6

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/af1326;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "canBuild_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 5565
    :cond_f6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/af1326;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/af1326;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has been repeated"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5569
    :cond_f7
    const-string v5, "Repeated key "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5571
    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->o(Ljava/lang/String;)V

    .line 5573
    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    if-lez v5, :cond_f5

    .line 5575
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Converting warning to error (meta.strictLevel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 5576
    new-instance v3, Lcom/corrodinggames/rts/game/units/custom/ch575;

    invoke-direct {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5581
    :cond_f8
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5583
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipping line, unexpected format: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5585
    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->o(Ljava/lang/String;)V

    .line 5587
    iget v5, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    if-lez v5, :cond_f9

    .line 5589
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Converting warning to error (meta.strictLevel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 5590
    new-instance v3, Lcom/corrodinggames/rts/game/units/custom/ch575;

    invoke-direct {v3, v2}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5595
    :cond_fa
    if-eqz p2, :cond_fb

    .line 5597
    move-object/from16 v0, p2

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->C:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->C:I

    .line 5600
    :cond_fb
    sget-object v4, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_b .. :try_end_b} :catch_3

    .line 5602
    :try_start_c
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5603
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 5606
    :try_start_d
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ah501;->n:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v12, v13, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    .line 5603
    :catchall_0
    move-exception v2

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v2
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_f .. :try_end_f} :catch_3

    :cond_fc
    move v2, v4

    goto/16 :goto_3d

    :cond_fd
    move v5, v7

    goto/16 :goto_29

    :cond_fe
    move v6, v4

    goto/16 :goto_2b

    :cond_ff
    move v5, v7

    move v6, v4

    goto/16 :goto_29

    :cond_100
    move v4, v5

    goto/16 :goto_2a

    :cond_101
    move v4, v5

    goto/16 :goto_2d

    :cond_102
    move-object v4, v6

    move-object v2, v5

    goto/16 :goto_1c
.end method
