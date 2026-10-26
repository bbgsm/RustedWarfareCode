.method private static strictfp i()V
    .locals 1

    .line 167
    sget-boolean v0, Lcom/corrodinggames/rts/game/b/b326;->f:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/corrodinggames/rts/game/b/b326;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method
