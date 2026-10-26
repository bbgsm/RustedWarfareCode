.method private static g(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 302
    :cond_0
    return-void
.end method

.method private static h(Landroid/app/Activity;)V
    .locals 1

    .line 358
    sget-object v0, Lcom/corrodinggames/rts/appFramework/d84;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/appFramework/d84;->b:Landroid/content/Context;

    .line 362
    :cond_0
    return-void
.end method
