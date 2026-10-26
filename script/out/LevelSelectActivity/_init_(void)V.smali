.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/corrodinggames/rts/appFramework/a3;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->uiHandler:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/corrodinggames/rts/appFramework/cb59;

    invoke-direct {v0, p0}, Lcom/corrodinggames/rts/appFramework/cb59;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;)V

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levelAdapter:Lcom/corrodinggames/rts/appFramework/cb59;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->wasHidden:Z

    .line 1582
    new-instance v0, Lcom/corrodinggames/rts/appFramework/by55;

    invoke-direct {v0, p0}, Lcom/corrodinggames/rts/appFramework/by55;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;)V

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->fileAddedCallback:Ljava/lang/Runnable;

    .line 1813
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->refreshLevelsHandler:Landroid/os/Handler;

    .line 1814
    new-instance v0, Lcom/corrodinggames/rts/appFramework/bq47;

    invoke-direct {v0, p0}, Lcom/corrodinggames/rts/appFramework/bq47;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;)V

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->refreshLevelsRunnable:Ljava/lang/Runnable;

    return-void
.end method
