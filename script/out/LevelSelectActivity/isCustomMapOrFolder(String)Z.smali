.method public static isCustomMapOrFolder(Ljava/lang/String;)Z
    .locals 1

    .line 336
    if-eqz p0, :cond_0

    const-string v0, "/SD/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
