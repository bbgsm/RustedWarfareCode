.method createViewForLevel(Ljava/lang/String;)Landroid/view/View;
    .locals 13

    const/4 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 761
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v3

    .line 767
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 768
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 771
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 774
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 775
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 778
    const/16 v0, 0x32

    invoke-static {v0, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 782
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 788
    const/high16 v0, 0x432a0000    # 170.0f

    invoke-virtual {v3, v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(F)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 791
    new-instance v6, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/corrodinggames/rts/R$style;->LevelButton:I

    invoke-direct {v6, v0, v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->currentMapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-static {v0}, Lcom/corrodinggames/rts/appFramework/d84;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_6

    .line 807
    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 812
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :goto_0
    if-eqz v1, :cond_5

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 827
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 830
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 832
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 834
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v8, 0x1f4

    if-gt v0, v8, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v8, 0x1f4

    if-le v0, v8, :cond_5

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Map thumbnail is too large. Size:("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") (max:500 pixels)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 838
    sget-object v0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->toolargethumb:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v0, :cond_1

    .line 840
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v1, Lcom/corrodinggames/rts/R$drawable;->error_toolargethumb:I

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->toolargethumb:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 843
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v7, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->toolargethumb:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v7}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->b()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 850
    :goto_1
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->custom:Z

    if-eqz v1, :cond_3

    .line 852
    sget-object v0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->missingMapThumb:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v0, :cond_2

    .line 854
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v1, Lcom/corrodinggames/rts/R$drawable;->error_missingmap:I

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v0

    sput-object v0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->missingMapThumb:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 857
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v7, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->missingMapThumb:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v7}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->b()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 860
    :cond_3
    if-eqz v0, :cond_4

    .line 862
    new-instance v1, Lcom/corrodinggames/rts/appFramework/DynamicImageView;

    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/corrodinggames/rts/appFramework/DynamicImageView;-><init>(Landroid/content/Context;)V

    .line 864
    sget v7, Lcom/corrodinggames/rts/R$id1367;->reservedNamedId2:I

    invoke-virtual {v1, v7}, Lcom/corrodinggames/rts/appFramework/DynamicImageView;->setId(I)V

    .line 866
    const/high16 v7, 0x43160000    # 150.0f

    invoke-virtual {v3, v7}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/corrodinggames/rts/appFramework/DynamicImageView;->setMaxFixedHeight(I)V

    .line 868
    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/appFramework/DynamicImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 870
    invoke-virtual {v1, v10, v12, v10, v12}, Lcom/corrodinggames/rts/appFramework/DynamicImageView;->setPadding(IIII)V

    .line 873
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 875
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/appFramework/DynamicImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 877
    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/appFramework/DynamicImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    :cond_4
    sget v0, Lcom/corrodinggames/rts/R$id1367;->reservedNamedId1:I

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setId(I)V

    .line 893
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 894
    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-virtual {v6, v10, v0, v10, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 895
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 898
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 900
    const/16 v0, 0x7f

    invoke-static {v0, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v6, v11, v11, v11, v0}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 903
    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 906
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 907
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 910
    invoke-virtual {p0, v5, p1}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->setupViewForLevel(Landroid/view/View;Ljava/lang/String;)V

    .line 913
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 915
    return-object v4

    .line 817
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    move-object v1, v2

    goto/16 :goto_0
.end method
