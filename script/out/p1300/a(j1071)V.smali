.method public final a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V
    .locals 14

    const/4 v2, 0x0

    .line 117
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->j:Z

    .line 3182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 119
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    .line 4182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 120
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    .line 5182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 121
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->v:I

    .line 6182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 122
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    .line 7182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 123
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->x:I

    .line 7188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 126
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    .line 8188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 127
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->A:F

    .line 9188
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 128
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->B:F

    .line 10176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 130
    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    .line 10182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 134
    if-lez v7, :cond_3

    .line 11182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    move v6, v2

    .line 137
    :goto_0
    if-ge v6, v8, :cond_3

    .line 11229
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 12176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    .line 147
    const/4 v0, 0x2

    if-lt v7, v0, :cond_8

    .line 12182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 13182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v4, v0

    move v5, v1

    .line 153
    :goto_1
    const/4 v0, 0x3

    if-lt v7, v0, :cond_7

    .line 14176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    move v3, v0

    .line 158
    :goto_2
    const/4 v0, 0x4

    if-lt v7, v0, :cond_6

    .line 14182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v1, v0

    .line 15065
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 15066
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 15068
    iget-object v13, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->c:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 164
    :goto_4
    if-nez v0, :cond_2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MissionEngine:readIn: Could not find saved trigger:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for de/activation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 137
    :goto_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 15073
    :cond_1
    const/4 v0, 0x0

    goto :goto_4

    .line 170
    :cond_2
    iput-boolean v10, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    .line 171
    iput v5, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->k:I

    .line 172
    iput v4, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->l:I

    .line 173
    iput-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->m:Z

    .line 174
    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->n:I

    goto :goto_5

    .line 179
    :cond_3
    const/4 v0, 0x5

    if-lt v7, v0, :cond_4

    .line 15182
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 181
    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    .line 184
    :cond_4
    const/4 v0, 0x6

    if-lt v7, v0, :cond_5

    .line 16176
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/j/j1071;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 186
    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    .line 195
    :goto_6
    return-void

    .line 190
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    goto :goto_6

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    move v4, v2

    move v5, v2

    goto :goto_1
.end method
