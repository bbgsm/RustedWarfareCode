.method public static d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 238
    invoke-static {p0}, Lcom/corrodinggames/rts/appFramework/d84;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/corrodinggames/rts/appFramework/d84;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
