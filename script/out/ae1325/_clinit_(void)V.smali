.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "\\p{C}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->i:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "\\s*\\[([^]]*)\\]\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->j:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "\\s*([^=:]*)(?:=|:)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->k:Ljava/util/regex/Pattern;

    return-void
.end method
