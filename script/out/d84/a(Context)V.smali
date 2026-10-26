.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 366
    sget-object v0, Lcom/corrodinggames/rts/appFramework/d84;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/appFramework/d84;->b:Landroid/content/Context;

    .line 370
    :cond_0
    return-void
.end method
