.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a:Ljava/util/LinkedHashMap;

    .line 64
    const-string v0, "ini"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->c:Z

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d:Ljava/util/LinkedHashSet;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->e:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->f:Ljava/util/ArrayList;

    .line 350
    iput-object p1, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->b:Ljava/lang/String;

    .line 351
    iput-object p1, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->h:Ljava/lang/String;

    .line 2362
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2363
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/io/BufferedReader;)V

    .line 353
    return-void
.end method
