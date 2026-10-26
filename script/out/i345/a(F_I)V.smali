.method public final strictfp a(FI)V
    .locals 10

    .line 2171
    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->ai:Ljava/lang/Object;

    monitor-enter v2

    .line 50820
    :try_start_0
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 50822
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->ah()V

    .line 50829
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aI:Z

    if-eqz v0, :cond_1

    .line 50832
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->aP:Z

    if-nez v0, :cond_1

    .line 50834
    invoke-static {}, Lcom/corrodinggames/rts/game/i345;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50836
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    const-wide/32 v4, 0xc800000

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 50838
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getNativeHeapAllocatedSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51732
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 50839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->aP:Z

    .line 51734
    :cond_1
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->dZ:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->ea:Z

    if-nez v0, :cond_3

    .line 51738
    const/4 v0, 0x1

    sput-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->ea:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51740
    const-string v0, "Warning game has less than 5mb of free space remaining. A larger battle might cause a crash. "

    .line 51743
    :try_start_1
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->g()I

    move-result v1

    .line 51744
    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 51746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning game has less than 5mb of free space remaining. A larger battle might cause a crash. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "This is often caused by large mods, you currently have: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mods loaded. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51750
    :cond_2
    const-string v1, "Warning: Low memory detected"

    invoke-virtual {p0, v1, v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51755
    :cond_3
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->dX:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/corrodinggames/rts/gameFramework/k1104;->dY:Lcom/corrodinggames/rts/gameFramework/ae798;

    if-eqz v0, :cond_7

    .line 51757
    const-string v0, "Showing out of memory message"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 51759
    const/4 v0, 0x1

    sput-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->dX:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51762
    const-string v0, "trying to load data"

    .line 51764
    :try_start_2
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/k1104;->dY:Lcom/corrodinggames/rts/gameFramework/ae798;

    sget-object v3, Lcom/corrodinggames/rts/gameFramework/ae798;->a:Lcom/corrodinggames/rts/gameFramework/ae798;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v3, :cond_9

    .line 51766
    const-string v0, "trying to load game textures"

    .line 51793
    :cond_4
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The game ran out of memory "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51796
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->g()I

    move-result v1

    .line 51797
    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    .line 51799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "This is often caused by large mods, you currently have: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mods. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51802
    :cond_5
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->Z()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51804
    sget-boolean v1, Lcom/corrodinggames/rts/game/i345;->b:Z

    if-nez v1, :cond_6

    .line 51806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "You are also using the 32 bit version, switching to the 64 bit version might help. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51821
    :cond_6
    const-string v1, "Warning: Out Of Memory"

    invoke-virtual {p0, v1, v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50854
    :cond_7
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ed:Lcom/corrodinggames/rts/gameFramework/z1366;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/z1366;->a()V

    .line 50855
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ee:Lcom/corrodinggames/rts/gameFramework/z1366;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/z1366;->b()V

    .line 50858
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->a:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 50862
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->k()V

    .line 50867
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ao:Lcom/corrodinggames/rts/appFramework/ab5;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    .line 50869
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v0}, Lcom/corrodinggames/rts/appFramework/ab5;->getSurfaceExists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50875
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->b:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 50877
    :goto_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 50879
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 50880
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 2174
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 50824
    :cond_8
    :try_start_4
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    rem-int/lit16 v0, v0, 0x2710

    if-nez v0, :cond_0

    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    if-eqz v0, :cond_0

    .line 50826
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->ah()V

    goto/16 :goto_0

    .line 51768
    :cond_9
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/k1104;->dY:Lcom/corrodinggames/rts/gameFramework/ae798;

    sget-object v3, Lcom/corrodinggames/rts/gameFramework/ae798;->b:Lcom/corrodinggames/rts/gameFramework/ae798;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v1, v3, :cond_a

    .line 51770
    const-string v0, "trying to create a texture"

    goto/16 :goto_1

    .line 51772
    :cond_a
    :try_start_5
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/k1104;->dY:Lcom/corrodinggames/rts/gameFramework/ae798;

    sget-object v3, Lcom/corrodinggames/rts/gameFramework/ae798;->c:Lcom/corrodinggames/rts/gameFramework/ae798;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v1, v3, :cond_b

    .line 51774
    const-string v0, "trying to colour new texture"

    goto/16 :goto_1

    .line 51776
    :cond_b
    :try_start_6
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/k1104;->dY:Lcom/corrodinggames/rts/gameFramework/ae798;

    sget-object v3, Lcom/corrodinggames/rts/gameFramework/ae798;->d:Lcom/corrodinggames/rts/gameFramework/ae798;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v1, v3, :cond_c

    .line 51778
    const-string v0, "trying to create texture buffer for on-screen fog fading"

    goto/16 :goto_1

    .line 51780
    :cond_c
    :try_start_7
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/k1104;->dY:Lcom/corrodinggames/rts/gameFramework/ae798;

    sget-object v3, Lcom/corrodinggames/rts/gameFramework/ae798;->e:Lcom/corrodinggames/rts/gameFramework/ae798;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne v1, v3, :cond_d

    .line 51782
    const-string v0, "trying to create game fonts"

    goto/16 :goto_1

    .line 51784
    :cond_d
    :try_start_8
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/k1104;->dY:Lcom/corrodinggames/rts/gameFramework/ae798;

    sget-object v3, Lcom/corrodinggames/rts/gameFramework/ae798;->f:Lcom/corrodinggames/rts/gameFramework/ae798;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ne v1, v3, :cond_e

    .line 51786
    const-string v0, "trying to load game sounds"

    goto/16 :goto_1

    .line 51788
    :cond_e
    :try_start_9
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/k1104;->dY:Lcom/corrodinggames/rts/gameFramework/ae798;

    sget-object v3, Lcom/corrodinggames/rts/gameFramework/ae798;->g:Lcom/corrodinggames/rts/gameFramework/ae798;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-ne v1, v3, :cond_4

    .line 51790
    const-string v0, "trying to load UI textures"

    goto/16 :goto_1

    .line 50884
    :cond_f
    :try_start_a
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bD:Z

    if-nez v0, :cond_13

    .line 50886
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ap:Z

    if-nez v0, :cond_10

    .line 50891
    const-string v0, "RustedWarfare"

    const-string v1, "game running without a loaded level!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51830
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v0}, Lcom/corrodinggames/rts/appFramework/ab5;->getInGameActivity()Lcom/corrodinggames/rts/appFramework/InGameActivity;

    move-result-object v0

    .line 51831
    if-eqz v0, :cond_12

    .line 51833
    invoke-virtual {v0}, Lcom/corrodinggames/rts/appFramework/InGameActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_11

    .line 51835
    invoke-virtual {v0}, Lcom/corrodinggames/rts/appFramework/InGameActivity;->finish()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 50896
    :goto_3
    const-wide/16 v0, 0xa

    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2174
    :cond_10
    :goto_4
    :try_start_c
    monitor-exit v2

    return-void

    .line 51839
    :cond_11
    const-string v0, "stopAndClose: inGameActivity is isFinishing"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 51847
    :cond_12
    const-string v0, "stopAndClose: Error getInGameActivity==null"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 50900
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 50908
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bn:Z

    .line 50910
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->E:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_16

    .line 50912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->E:Z

    .line 50915
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_56

    const/4 v0, 0x1

    .line 50920
    :goto_5
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v3, 0x0

    iput v3, v1, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    .line 50922
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->eg:Z

    if-eqz v1, :cond_14

    .line 50924
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v3, 0x0

    iput v3, v1, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    .line 50927
    :cond_14
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->save()Z

    .line 50929
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->eg:Z

    if-eqz v1, :cond_16

    .line 50931
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->eh:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->c()I

    move-result v1

    if-lez v1, :cond_16

    .line 50933
    :cond_15
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->ei:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 50935
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Started game in safe mode due to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Safe mode"

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->ei:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Mods have been disabled."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/corrodinggames/rts/game/i345;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50950
    :cond_16
    :goto_6
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bE:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bD:Z

    if-eqz v0, :cond_17

    .line 50952
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    if-eqz v0, :cond_17

    .line 50954
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    .line 50955
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->save()Z

    .line 50959
    :cond_17
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bX:Lcom/corrodinggames/rts/gameFramework/aj803;

    .line 51854
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 51856
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/aj803;->a()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 51861
    iget v3, v0, Lcom/corrodinggames/rts/gameFramework/aj803;->d:I

    const/16 v4, -0x270f

    if-ne v3, v4, :cond_18

    .line 51863
    iget v3, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    iput v3, v0, Lcom/corrodinggames/rts/gameFramework/aj803;->c:I

    .line 51864
    iget v3, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    iput v3, v0, Lcom/corrodinggames/rts/gameFramework/aj803;->d:I

    .line 51867
    :cond_18
    iget v3, v0, Lcom/corrodinggames/rts/gameFramework/aj803;->d:I

    const v4, 0x493e0

    add-int/2addr v3, v4

    iget v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    if-ge v3, v4, :cond_19

    .line 51869
    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/aj803;->d:I

    .line 51872
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    .line 51887
    const-string v3, "autosave"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/corrodinggames/rts/gameFramework/aj803;->b(Ljava/lang/String;Z)V

    .line 51877
    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(J)F

    move-result v0

    float-to-double v0, v0

    .line 51879
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Autosaved ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51891
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 50962
    :cond_19
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cS:F

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cV:F

    mul-float/2addr v0, v1

    .line 50968
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1a

    .line 50971
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cX:F

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v1, v3

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    .line 50972
    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cY:F

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    .line 50974
    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    .line 50975
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->am()V

    .line 50977
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cW:Z

    if-eqz v0, :cond_1a

    .line 50979
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cX:F

    iget v6, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v0, v6

    iget v6, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    .line 50980
    iget v7, p0, Lcom/corrodinggames/rts/game/i345;->cY:F

    iget v8, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v7, v8

    iget v8, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    .line 50982
    iget v9, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    add-float/2addr v0, v6

    add-float/2addr v1, v3

    sub-float/2addr v0, v1

    sub-float v0, v9, v0

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    add-float v3, v7, v8

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(FF)V

    .line 50984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cW:Z

    .line 50989
    :cond_1a
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    .line 50995
    :cond_1b
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v3, v0, p1

    .line 50998
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_55

    .line 51000
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    invoke-static {v0, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->f(FF)F

    move-result v0

    .line 51002
    :goto_7
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1c

    .line 51004
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    neg-float v1, v3

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->e(FF)F

    move-result v0

    .line 51007
    :cond_1c
    const v1, 0x3e19999a    # 0.15f

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    .line 51011
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_54

    .line 51013
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    invoke-static {v0, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->f(FF)F

    move-result v0

    .line 51015
    :goto_8
    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1d

    .line 51017
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    neg-float v4, v3

    invoke-static {v0, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->e(FF)F

    move-result v0

    .line 51020
    :cond_1d
    const v4, 0x3e19999a    # 0.15f

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 51024
    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_2b

    .line 51026
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    .line 51027
    const/4 v4, 0x0

    iput v4, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    .line 51034
    :goto_9
    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_2c

    .line 51036
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    .line 51037
    const/4 v3, 0x0

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    .line 51044
    :goto_a
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    .line 51045
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    .line 51047
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(FF)V

    .line 51048
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->H()V

    .line 51054
    :cond_1e
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cO:Z

    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->cP:Z

    if-eq v0, v1, :cond_1f

    .line 51056
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->am()V

    .line 51059
    :cond_1f
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_53

    const/high16 v0, 0x40400000    # 3.0f

    .line 51060
    :goto_b
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_20

    const/4 v0, 0x0

    .line 51062
    :cond_20
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->br:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_57

    .line 51064
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->br:F

    .line 51069
    :goto_c
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bx:I

    int-to-float v0, v0

    const v3, 0x41855555

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->bx:I

    .line 51893
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ap:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bE:Z

    if-nez v0, :cond_26

    .line 51897
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v0, :cond_21

    .line 51955
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    invoke-static {v0}, Lcom/corrodinggames/rts/game/i345;->a(Lcom/corrodinggames/rts/game/p352;)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v0

    .line 51956
    if-eqz v0, :cond_2d

    .line 51899
    :goto_d
    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51901
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    if-ne v0, v3, :cond_21

    .line 51903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51907
    :cond_21
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v0, :cond_22

    .line 51909
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51914
    :cond_22
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->ag:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_23

    .line 51916
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    iget v0, v0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    iget v3, v3, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->ag:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/corrodinggames/rts/game/i345;->a(FFFF)Z

    .line 51919
    :cond_23
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_25

    .line 51921
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    iget v0, v0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    iget v3, v3, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->ag:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/corrodinggames/rts/game/i345;->a(FFFF)Z

    move-result v0

    .line 51923
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cF:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cG:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    iget v5, v5, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget-object v6, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    iget v6, v6, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v3, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v3

    .line 51926
    const/high16 v4, 0x45c80000    # 6400.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_24

    const/4 v0, 0x1

    .line 51931
    :cond_24
    if-eqz v0, :cond_25

    .line 51933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ah:Z

    .line 51937
    :cond_25
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ah:Z

    if-eqz v0, :cond_26

    .line 51939
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->ag:F

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->ag:F

    .line 51941
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->ag:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_26

    .line 51943
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->ag:F

    .line 51944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ah:Z

    .line 51081
    :cond_26
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->p:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->p:I

    .line 51082
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->q:I

    .line 51103
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->q:I

    const/16 v3, 0x28

    if-lt v0, v3, :cond_28

    .line 51105
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->p:I

    if-nez v0, :cond_27

    const/4 v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->p:I

    .line 51107
    :cond_27
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->q:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->p:I

    div-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->r:I

    .line 51109
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->p:I

    int-to-float v0, v0

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->q:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->s:F

    .line 51111
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->p:I

    .line 51112
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->q:I

    .line 51115
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->showFps:Z

    if-eqz v0, :cond_28

    .line 51117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->r:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "fps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->t:Ljava/lang/String;

    .line 51148
    :cond_28
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->U()V

    const/4 v0, 0x0

    .line 51157
    :goto_e
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->dJ:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2e

    .line 51159
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->dJ:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 51157
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 50937
    :cond_29
    if-eqz v0, :cond_2a

    .line 50939
    const-string v0, "Safe mode"

    const-string v1, "Started game in safe mode due to failed loading attempts. Mods have been disabled."

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 50943
    :cond_2a
    const-string v0, "Safe mode"

    const-string v1, "Started game in safe mode due to multiple loads without starting a game or exiting. Mods have been disabled."

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 51031
    :cond_2b
    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/corrodinggames/rts/game/i345;->co:F

    goto/16 :goto_9

    .line 51041
    :cond_2c
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cp:F

    goto/16 :goto_a

    .line 51962
    :cond_2d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/corrodinggames/rts/game/i345;->a(Lcom/corrodinggames/rts/game/p352;)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v0

    goto/16 :goto_d

    .line 51174
    :cond_2e
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->de:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    invoke-static {v0, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->de:F

    .line 51175
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->df:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    invoke-static {v0, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->df:F

    .line 51177
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->de:F

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(FF)F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->de:F

    .line 51178
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->df:F

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(FF)F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->df:F

    .line 51180
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/f/i988;->a(F)V

    .line 51183
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->H()V

    .line 51186
    invoke-static {}, Lcom/corrodinggames/rts/game/b/b326;->c()V

    .line 51193
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-eqz v0, :cond_41

    .line 51197
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/bp890;->w:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_52

    .line 51199
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/bp890;->w:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 51205
    :goto_f
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v3, v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->a(F)V

    .line 51207
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/corrodinggames/rts/game/i345;->b(Z)Z

    move-result v3

    if-nez v3, :cond_39

    .line 51209
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aa:Z

    if-nez v3, :cond_39

    .line 51211
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    .line 51212
    :goto_10
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51963
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51212
    cmpl-float v0, v0, v3

    if-lez v0, :cond_2f

    .line 51214
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->m()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 51216
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aa:Z

    .line 51232
    :cond_2f
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->D:Z

    if-nez v0, :cond_39

    .line 51246
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ah:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->af:Z

    if-eqz v0, :cond_32

    .line 51248
    :cond_30
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ah:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->af:Z

    if-eqz v0, :cond_31

    .line 51250
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->Z:I

    iget-object v4, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->S:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    if-ge v0, v3, :cond_31

    .line 51252
    const-string v0, "nearly within frame range"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->d(Ljava/lang/String;)V

    .line 51254
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ah:Z

    .line 51258
    :cond_31
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->Z:I

    add-int/lit8 v3, v3, -0x6

    if-le v0, v3, :cond_32

    .line 51260
    const-string v0, "we have back within frame range"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->d(Ljava/lang/String;)V

    .line 51261
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ah:Z

    .line 51262
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->af:Z

    .line 51269
    :cond_32
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->af:Z

    if-nez v0, :cond_33

    .line 51271
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->Z:I

    iget-object v4, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->S:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xa

    if-ge v0, v3, :cond_33

    .line 51273
    const-string v0, "we are slightly out of frame range, speeding up"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->d(Ljava/lang/String;)V

    .line 51274
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->af:Z

    .line 51278
    :cond_33
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ah:Z

    if-nez v0, :cond_34

    .line 51280
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->Z:I

    iget-object v4, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->S:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1e

    if-ge v0, v3, :cond_34

    .line 51282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "we are out of frame range, fast forwarding ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->Z:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->d(Ljava/lang/String;)V

    .line 51283
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ah:Z

    .line 51287
    :cond_34
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ah:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->af:Z

    if-eqz v0, :cond_35

    .line 51289
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ag:F

    add-float/2addr v3, v1

    iput v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ag:F

    .line 51291
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ag:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51967
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51291
    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_35

    .line 51293
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    const/4 v3, 0x0

    iput v3, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ag:F

    .line 51295
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51968
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51295
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->b(Z)V

    .line 51296
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aa:Z

    if-nez v0, :cond_35

    .line 51298
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51969
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51298
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(F)V

    .line 51304
    :cond_35
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->ah:Z

    if-eqz v0, :cond_36

    .line 51306
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51970
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51306
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->b(Z)V

    .line 51307
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aa:Z

    if-nez v0, :cond_36

    .line 51309
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51971
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51309
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(F)V

    .line 51314
    :cond_36
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->Z:I

    add-int/lit8 v3, v3, -0x5a

    if-ge v0, v3, :cond_37

    .line 51317
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51972
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51317
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->b(Z)V

    .line 51318
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aa:Z

    if-nez v0, :cond_37

    .line 51320
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51973
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51320
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(F)V

    .line 51325
    :cond_37
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->Z:I

    add-int/lit8 v3, v3, -0x78

    if-ge v0, v3, :cond_38

    .line 51328
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51974
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51328
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->b(Z)V

    .line 51329
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aa:Z

    if-nez v0, :cond_38

    .line 51331
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51975
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51331
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(F)V

    .line 51336
    :cond_38
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->Z:I

    add-int/lit16 v3, v3, -0x258

    if-ge v0, v3, :cond_39

    .line 51339
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51976
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51339
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->b(Z)V

    .line 51340
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aa:Z

    if-nez v0, :cond_39

    .line 51342
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51977
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51342
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(F)V

    .line 51416
    :cond_39
    :goto_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v0

    if-eqz v0, :cond_3a

    .line 51422
    const-wide/16 v4, 0x2

    :try_start_d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 51429
    :cond_3a
    :goto_12
    :try_start_e
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    .line 51982
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->f()V

    .line 51431
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bJ:Lcom/corrodinggames/rts/gameFramework/a/e788;

    .line 51984
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/a/e788;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51433
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bK:Lcom/corrodinggames/rts/gameFramework/ax817;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/ax817;->a(F)V

    .line 51435
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bQ:Lcom/corrodinggames/rts/gameFramework/an807;

    .line 51986
    iget v3, v0, Lcom/corrodinggames/rts/gameFramework/an807;->ao:I

    if-eqz v3, :cond_3b

    .line 51988
    const/4 v3, 0x0

    iput v3, v0, Lcom/corrodinggames/rts/gameFramework/an807;->ao:I

    .line 51990
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number of controllers changed, now:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/an807;->ao:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52020
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 51437
    :cond_3b
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/o/a1309;->a()Lcom/corrodinggames/rts/gameFramework/o/a1309;

    .line 51442
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->b:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 51446
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->c:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 51449
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ds:Z

    if-nez v0, :cond_3c

    .line 51457
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v0}, Lcom/corrodinggames/rts/appFramework/ab5;->usingBasicDraw()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 51460
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getNewCanvasLock(Z)Lcom/corrodinggames/rts/gameFramework/m/l1266;

    move-result-object v0

    .line 51463
    invoke-direct {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(Lcom/corrodinggames/rts/gameFramework/m/l1266;F)V

    .line 51627
    :cond_3c
    :goto_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ds:Z

    .line 52024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 51631
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->c:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 51635
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->dr:Z

    if-eqz v0, :cond_3e

    .line 51637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->dr:Z

    .line 51642
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->di:Ljava/lang/String;

    invoke-static {v0}, Lcom/corrodinggames/rts/game/i345;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 51645
    if-eqz v0, :cond_50

    .line 51647
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->di:Ljava/lang/String;

    invoke-static {v0}, Lcom/corrodinggames/rts/game/i345;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51650
    :goto_14
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-eqz v1, :cond_3d

    .line 51660
    new-instance v0, Lcom/corrodinggames/rts/game/k347;

    invoke-direct {v0, p0}, Lcom/corrodinggames/rts/game/k347;-><init>(Lcom/corrodinggames/rts/game/i345;)V

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/k347;->start()V

    const/4 v0, 0x0

    .line 51665
    :cond_3d
    if-eqz v0, :cond_4e

    .line 51667
    const-string v1, "gotoNextLevel: Loading next level: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52026
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 51668
    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->di:Ljava/lang/String;

    .line 51670
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->h:Lcom/corrodinggames/rts/gameFramework/f/o994;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/f/o994;->a()V

    .line 51672
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v3, Lcom/corrodinggames/rts/gameFramework/ac796;->b:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/corrodinggames/rts/game/i345;->a(ZZI)V

    .line 51706
    :cond_3e
    :goto_15
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ap:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bB:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->h:Z

    if-nez v0, :cond_3f

    .line 51708
    const-string v0, "starting method trace"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 51709
    const-string v0, "lukeTrace"

    const v1, 0x68e7780

    invoke-static {v0, v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 51710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->h:Z

    .line 51716
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bC:Z

    .line 51719
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ef:Lcom/corrodinggames/rts/gameFramework/z1366;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/z1366;->a()V

    .line 51722
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->a:Lcom/corrodinggames/rts/gameFramework/cg911;

    goto/16 :goto_4

    .line 51220
    :cond_40
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51964
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51220
    sub-float/2addr v0, v3

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    .line 51222
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51965
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51222
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->b(Z)V

    .line 51224
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aa:Z

    if-nez v0, :cond_2f

    .line 51229
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51966
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51229
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(F)V

    goto/16 :goto_10

    .line 51355
    :cond_41
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    .line 51978
    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/bp890;->t:Z

    .line 51355
    if-eqz v0, :cond_45

    .line 51360
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/bp890;->w:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_51

    .line 51362
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/bp890;->w:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 51366
    :goto_16
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->bq:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_42

    .line 51368
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->bq:F

    mul-float/2addr v0, v3

    .line 51373
    :cond_42
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/corrodinggames/rts/game/i345;->b(Z)Z

    move-result v3

    if-nez v3, :cond_43

    .line 51375
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    .line 51378
    :goto_17
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51979
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51378
    cmpl-float v0, v0, v3

    if-lez v0, :cond_43

    .line 51381
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51980
    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51381
    sub-float/2addr v0, v3

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    .line 51383
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->m()Z

    move-result v0

    if-nez v0, :cond_43

    .line 51389
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 51981
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 51389
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(F)V

    goto :goto_17

    .line 51395
    :cond_43
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_44

    .line 51397
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    .line 51400
    :cond_44
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_39

    .line 51402
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->F:F

    goto/16 :goto_11

    .line 51409
    :cond_45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(Z)Z

    move-result v0

    if-nez v0, :cond_39

    .line 51411
    invoke-direct {p0, v1}, Lcom/corrodinggames/rts/game/i345;->b(F)V

    goto/16 :goto_11

    .line 51468
    :cond_46
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    .line 51470
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v0, v1, p2}, Lcom/corrodinggames/rts/appFramework/ab5;->drawStarting(FI)V

    .line 51472
    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getDirectSurfaceRendering()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 51474
    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getGameThreadSync()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 51476
    :try_start_f
    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getDirectSurfaceRendering()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 51483
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->w:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 51485
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Lcom/corrodinggames/rts/appFramework/ab5;->getNewCanvasLock(Z)Lcom/corrodinggames/rts/gameFramework/m/l1266;

    move-result-object v5

    .line 51487
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->w:Lcom/corrodinggames/rts/gameFramework/cg911;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 51492
    :try_start_10
    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 51497
    if-eqz v5, :cond_48

    .line 51499
    invoke-interface {v5}, Lcom/corrodinggames/rts/gameFramework/m/l1266;->c()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 51501
    const-string v0, "gameengine draw: bufferedCanvas drawn on"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 51503
    :cond_47
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Lcom/corrodinggames/rts/gameFramework/m/l1266;->a(Z)V

    .line 51507
    :cond_48
    if-nez v5, :cond_49

    .line 51509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "GameEngine gameViewCanvas is null after lockCanvas - "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V

    .line 51553
    :cond_49
    invoke-direct {p0, v5, v1}, Lcom/corrodinggames/rts/game/i345;->a(Lcom/corrodinggames/rts/gameFramework/m/l1266;F)V

    .line 51579
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/l1266;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 51588
    :cond_4a
    if-eqz v5, :cond_4b

    .line 51593
    const/4 v0, 0x1

    :try_start_11
    invoke-interface {v3, v5, v0}, Lcom/corrodinggames/rts/appFramework/ab5;->unlockAndReturnCanvas(Lcom/corrodinggames/rts/gameFramework/m/l1266;Z)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 51619
    :cond_4b
    :goto_18
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 51623
    :cond_4c
    :try_start_13
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v0, v1, p2}, Lcom/corrodinggames/rts/appFramework/ab5;->drawCompleted(FI)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_13

    .line 51588
    :catchall_1
    move-exception v0

    if-eqz v5, :cond_4d

    .line 51593
    const/4 v1, 0x1

    :try_start_14
    invoke-interface {v3, v5, v1}, Lcom/corrodinggames/rts/appFramework/ab5;->unlockAndReturnCanvas(Lcom/corrodinggames/rts/gameFramework/m/l1266;Z)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 51616
    :cond_4d
    :goto_19
    :try_start_15
    throw v0

    .line 51619
    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v0

    .line 51677
    :cond_4e
    const-string v0, "gotoNextLevel: No next level, finishing"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 51679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bD:Z

    .line 51681
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v0}, Lcom/corrodinggames/rts/appFramework/ab5;->getInGameActivity()Lcom/corrodinggames/rts/appFramework/InGameActivity;

    move-result-object v0

    .line 51683
    if-eqz v0, :cond_4f

    .line 51685
    invoke-virtual {v0}, Lcom/corrodinggames/rts/appFramework/InGameActivity;->finish()V

    .line 51687
    invoke-virtual {v0}, Lcom/corrodinggames/rts/appFramework/InGameActivity;->showPCMainMenu()V

    goto/16 :goto_15

    .line 51692
    :cond_4f
    const-string v0, "gotoNextLevel: Error getInGameActivity==null"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_15

    .line 51598
    :catch_1
    move-exception v1

    :try_start_17
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 51599
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "GameEngine catch currentGameView - "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V

    .line 51600
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "GameEngine catch currentGameView.gameThreadSync - "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getGameThreadSync()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V

    .line 51602
    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->forceSurfaceUnlockWorkaround()V

    goto :goto_19

    .line 51609
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 51610
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "GameEngine catch currentGameView - "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V

    .line 51611
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "GameEngine catch currentGameView.gameThreadSync - "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getGameThreadSync()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 51598
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 51599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "GameEngine catch currentGameView - "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V

    .line 51600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "GameEngine catch currentGameView.gameThreadSync - "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getGameThreadSync()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V

    .line 51602
    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->forceSurfaceUnlockWorkaround()V

    goto/16 :goto_18

    .line 51609
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 51610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "GameEngine catch currentGameView - "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V

    .line 51611
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "GameEngine catch currentGameView.gameThreadSync - "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/corrodinggames/rts/appFramework/ab5;->getGameThreadSync()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->e(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto/16 :goto_18

    :cond_50
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_51
    move v0, v1

    goto/16 :goto_16

    :cond_52
    move v0, v1

    goto/16 :goto_f

    :cond_53
    move v0, p1

    goto/16 :goto_b

    :cond_54
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_55
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_56
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 51692
    :catch_5
    move-exception v0

    goto/16 :goto_12

    :cond_57
    move v1, v0

    goto/16 :goto_c
.end method
