.method public final a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V
    .locals 4

    .line 117
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->a:Z

    .line 9182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 118
    iput v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->b:I

    .line 10182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 119
    iput v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->c:I

    .line 122
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/a/aa297;->h()V

    .line 11182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 126
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/corrodinggames/rts/gameFramework/j/j1071;->c()Lcom/corrodinggames/rts/game/units/bp437;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_0

    .line 131
    invoke-static {v2}, Lcom/corrodinggames/rts/game/a/a296;->e(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    const-string v2, "TransporterGroup:readIn: Unit is not transporterUnit"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/a/aa297;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    goto :goto_1

    .line 12170
    :cond_2
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 144
    if-lez v1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->R:Lcom/corrodinggames/rts/game/a/a296;

    .line 12182
    iget-object v2, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 146
    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/game/a/a296;->j(I)Lcom/corrodinggames/rts/game/a/ab298;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/a/u318;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->m:Lcom/corrodinggames/rts/game/a/u318;

    .line 149
    :cond_3
    const/4 v0, 0x2

    if-lt v1, v0, :cond_4

    .line 13176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 151
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->q:Z

    .line 154
    :cond_4
    const/4 v0, 0x3

    if-lt v1, v0, :cond_5

    .line 156
    invoke-virtual {p1}, Lcom/corrodinggames/rts/gameFramework/j/j1071;->c()Lcom/corrodinggames/rts/game/units/bp437;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->n:Lcom/corrodinggames/rts/game/units/bp437;

    .line 159
    :cond_5
    const/4 v0, 0x4

    if-lt v1, v0, :cond_6

    .line 13188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 161
    iput v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->o:F

    .line 14176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 162
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->p:Z

    .line 165
    :cond_6
    const/4 v0, 0x5

    if-lt v1, v0, :cond_7

    .line 14188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 167
    iput v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->r:F

    .line 15188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 168
    iput v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->s:F

    .line 171
    :cond_7
    invoke-super {p0, p1}, Lcom/corrodinggames/rts/game/a/u318;->a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V

    .line 172
    return-void
.end method
