.method public static a()Landroid/content/Context;
    .locals 2

    .line 346
    sget-object v0, Lcom/corrodinggames/rts/appFramework/d84;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ApplicationContext==null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    sget-object v0, Lcom/corrodinggames/rts/appFramework/d84;->b:Landroid/content/Context;

    return-object v0
.end method
