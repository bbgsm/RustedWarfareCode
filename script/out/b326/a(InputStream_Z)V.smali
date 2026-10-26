.method public final strictfp a(Ljava/io/InputStream;Z)V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2012
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2016
    sget-object v0, Lcom/corrodinggames/rts/game/b/b326;->l:Lcom/corrodinggames/rts/game/b/j334;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/j334;->b()V

    .line 2020
    sget-object v0, Lcom/corrodinggames/rts/game/b/b326;->m:Lcom/corrodinggames/rts/game/b/j334;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/j334;->b()V

    .line 2031
    :try_start_0
    const-string v0, "---- Loading map data ----"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2033
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 2034
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 2035
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 2036
    new-instance v4, Lcom/corrodinggames/rts/game/b/d328;

    invoke-direct {v4, p0}, Lcom/corrodinggames/rts/game/b/d328;-><init>(Lcom/corrodinggames/rts/game/b/b326;)V

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 2043
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 2044
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 2046
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2047
    const-string v4, "orthogonal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2048
    new-instance v1, Lcom/corrodinggames/rts/game/b/h332;

    const-string v2, "Only orthogonal maps are supported, found: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2363
    :catch_0
    move-exception v0

    .line 2366
    new-instance v1, Lcom/corrodinggames/rts/game/b/h332;

    const-string v2, "Failed to parse map"

    invoke-direct {v1, v2, v0}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2056
    :cond_0
    :try_start_1
    const-string v0, "width"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2057
    const-string v4, "height"

    invoke-interface {v7, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2063
    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    .line 2064
    iput v4, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Map size: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2069
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/b/b326;->as:F

    .line 2073
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    if-eqz v0, :cond_3

    .line 2075
    const-string v0, "Setting up team fog.."

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    move v4, v3

    .line 2077
    :goto_0
    sget v0, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v4, v0, :cond_5

    .line 2079
    invoke-static {v4}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v6

    .line 2080
    if-eqz v6, :cond_2

    .line 2083
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    iput v0, v6, Lcom/corrodinggames/rts/game/p352;->O:I

    .line 2084
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    iput v0, v6, Lcom/corrodinggames/rts/game/p352;->P:I

    .line 2086
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    iget v5, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, v6, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    move v5, v3

    .line 2089
    :goto_1
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    if-ge v5, v0, :cond_2

    move v0, v3

    .line 2091
    :goto_2
    iget v8, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    if-ge v0, v8, :cond_1

    .line 2093
    iget-object v8, v6, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    aget-object v8, v8, v5

    const/16 v9, 0xa

    aput-byte v9, v8, v0

    .line 2091
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2089
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 2077
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 2103
    :cond_3
    const-string v0, "No team fog on this map.."

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    move v0, v3

    .line 2105
    :goto_3
    sget v4, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v0, v4, :cond_5

    .line 2107
    invoke-static {v0}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v4

    .line 2108
    if-eqz v4, :cond_4

    .line 2110
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    .line 2105
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2122
    :cond_5
    const-string v0, "properties"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 2123
    if-eqz v0, :cond_6

    .line 2124
    const-string v4, "property"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 2125
    if-eqz v5, :cond_6

    .line 2126
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    move v4, v3

    .line 2127
    :goto_4
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 2128
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 2130
    const-string v8, "name"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2131
    const-string v9, "value"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2132
    invoke-virtual {v6, v8, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2127
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 2141
    :cond_6
    const-string v0, "tileset"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    move v4, v3

    move-object v5, v1

    .line 2142
    :goto_5
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 2143
    invoke-interface {v8, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 2145
    new-instance v6, Lcom/corrodinggames/rts/game/b/l336;

    invoke-direct {v6, p0, v0}, Lcom/corrodinggames/rts/game/b/l336;-><init>(Lcom/corrodinggames/rts/game/b/b326;Lorg/w3c/dom/Element;)V

    .line 2146
    iput-short v4, v6, Lcom/corrodinggames/rts/game/b/l336;->n:S

    .line 2148
    if-eqz v5, :cond_7

    .line 2149
    iget v0, v6, Lcom/corrodinggames/rts/game/b/l336;->l:I

    .line 40636
    add-int/lit8 v0, v0, -0x1

    iput v0, v5, Lcom/corrodinggames/rts/game/b/l336;->m:I

    .line 2153
    :cond_7
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2142
    add-int/lit8 v0, v4, 0x1

    int-to-short v0, v0

    move v4, v0

    move-object v5, v6

    goto :goto_5

    .line 2158
    :cond_8
    const-string v0, "layer"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v4, v3

    .line 2159
    :goto_6
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 2160
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 2162
    const-string v6, "name"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2163
    const-string v8, "set"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2167
    const-string v8, "set-disabled"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2172
    new-instance v6, Lcom/corrodinggames/rts/game/b/g331;

    invoke-direct {v6, p0, v0}, Lcom/corrodinggames/rts/game/b/g331;-><init>(Lcom/corrodinggames/rts/game/b/b326;Lorg/w3c/dom/Element;)V

    .line 2173
    iput v4, v6, Lcom/corrodinggames/rts/game/b/g331;->j:I

    .line 2175
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    .line 2179
    :cond_a
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/g331;

    .line 2181
    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/b/g331;->r:Z

    if-eqz v5, :cond_c

    .line 2183
    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->u:Lcom/corrodinggames/rts/game/b/g331;

    .line 2187
    :cond_c
    iget-object v5, v0, Lcom/corrodinggames/rts/game/b/g331;->k:Ljava/lang/String;

    const-string v6, "grounddetails"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2189
    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->v:Lcom/corrodinggames/rts/game/b/g331;

    .line 2192
    :cond_d
    iget-object v5, v0, Lcom/corrodinggames/rts/game/b/g331;->k:Ljava/lang/String;

    const-string v6, "grounddetails2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2194
    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->w:Lcom/corrodinggames/rts/game/b/g331;

    .line 2197
    :cond_e
    iget-object v5, v0, Lcom/corrodinggames/rts/game/b/g331;->k:Ljava/lang/String;

    const-string v6, "Items"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v0, Lcom/corrodinggames/rts/game/b/g331;->k:Ljava/lang/String;

    const-string v6, "Objects"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2199
    :cond_f
    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->y:Lcom/corrodinggames/rts/game/b/g331;

    .line 2202
    :cond_10
    iget-object v5, v0, Lcom/corrodinggames/rts/game/b/g331;->k:Ljava/lang/String;

    const-string v6, "PathingOverride"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2204
    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->x:Lcom/corrodinggames/rts/game/b/g331;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    .line 2368
    :catch_1
    move-exception v0

    .line 2371
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to parse map"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2208
    :cond_11
    :try_start_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->u:Lcom/corrodinggames/rts/game/b/g331;

    if-nez v0, :cond_12

    .line 2210
    new-instance v0, Lcom/corrodinggames/rts/game/b/h332;

    const-string v1, "\'Ground\' layer was not found in map, this layer is required"

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2373
    :catch_2
    move-exception v0

    .line 2376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- SAXException: Failed to parse map - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2380
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "available:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 2384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "after reset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2393
    :goto_8
    new-instance v1, Lcom/corrodinggames/rts/game/b/h332;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse map - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2213
    :cond_12
    :try_start_4
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->C:[Lcom/corrodinggames/rts/game/b/i333;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->C:[Lcom/corrodinggames/rts/game/b/i333;

    array-length v0, v0

    if-nez v0, :cond_14

    .line 2215
    :cond_13
    new-instance v0, Lcom/corrodinggames/rts/game/b/h332;

    const-string v1, "Invalid map, no tiles have been set"

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2218
    :cond_14
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->u()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->v()Z

    move-result v0

    if-nez v0, :cond_17

    move v4, v3

    .line 2221
    :goto_9
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    if-ge v4, v0, :cond_17

    move v0, v3

    .line 2223
    :goto_a
    iget v5, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    if-ge v0, v5, :cond_16

    .line 2226
    iget-object v5, p0, Lcom/corrodinggames/rts/game/b/b326;->u:Lcom/corrodinggames/rts/game/b/g331;

    invoke-virtual {v5, v4, v0}, Lcom/corrodinggames/rts/game/b/g331;->a(II)Lcom/corrodinggames/rts/game/b/i333;

    move-result-object v5

    if-nez v5, :cond_15

    .line 2228
    new-instance v1, Lcom/corrodinggames/rts/game/b/h332;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An empty tile on the Ground layer at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " all tiles must be filled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2223
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2221
    :cond_16
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    .line 2237
    :cond_17
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->y:Lcom/corrodinggames/rts/game/b/g331;

    if-nez v0, :cond_18

    .line 2239
    new-instance v0, Lcom/corrodinggames/rts/game/b/h332;

    const-string v1, "\'Items\' layer was not found in map, this layer is required"

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2248
    :cond_18
    const-string v0, "objectgroup"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v4, v3

    .line 2250
    :goto_b
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_19

    .line 2251
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 2252
    new-instance v6, Lcom/corrodinggames/rts/game/b/k335;

    invoke-direct {v6, v0, p0}, Lcom/corrodinggames/rts/game/b/k335;-><init>(Lorg/w3c/dom/Element;Lcom/corrodinggames/rts/game/b/b326;)V

    .line 2253
    iput v4, v6, Lcom/corrodinggames/rts/game/b/k335;->a:I

    .line 2255
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_b

    .line 2260
    :cond_19
    invoke-static {}, Lcom/corrodinggames/rts/game/b/l336;->a()V

    .line 2261
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/l336;

    .line 2263
    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/b/l336;->q:Z

    if-eqz v5, :cond_1a

    .line 2265
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/l336;->c()V

    goto :goto_c

    .line 2268
    :cond_1b
    invoke-static {}, Lcom/corrodinggames/rts/game/b/l336;->b()V

    move v4, v3

    .line 2273
    :goto_d
    if-gt v4, v2, :cond_23

    .line 2275
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/g331;

    .line 2277
    iget-object v5, p0, Lcom/corrodinggames/rts/game/b/b326;->u:Lcom/corrodinggames/rts/game/b/g331;

    if-ne v0, v5, :cond_1d

    move v6, v2

    .line 2278
    :goto_e
    if-nez v4, :cond_1e

    move v5, v2

    .line 2280
    :goto_f
    if-ne v6, v5, :cond_1c

    .line 2285
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/b/g331;->w:Z

    .line 2287
    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/b/g331;->s:Z

    if-eqz v5, :cond_1c

    move v6, v3

    .line 2289
    :goto_10
    iget v5, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    if-ge v6, v5, :cond_1c

    move v5, v3

    .line 2291
    :goto_11
    iget v8, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    if-ge v5, v8, :cond_21

    .line 2293
    invoke-virtual {v0, v6, v5}, Lcom/corrodinggames/rts/game/b/g331;->a(II)Lcom/corrodinggames/rts/game/b/i333;

    move-result-object v8

    .line 2294
    if-eqz v8, :cond_20

    iget v9, v8, Lcom/corrodinggames/rts/game/b/i333;->c:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_20

    .line 2296
    sget-object v9, Lcom/corrodinggames/rts/game/b/b326;->l:Lcom/corrodinggames/rts/game/b/j334;

    iget-object v10, v8, Lcom/corrodinggames/rts/game/b/i333;->a:Lcom/corrodinggames/rts/game/b/l336;

    iget v11, v8, Lcom/corrodinggames/rts/game/b/i333;->b:I

    invoke-virtual {v9, v10, v11}, Lcom/corrodinggames/rts/game/b/j334;->a(Lcom/corrodinggames/rts/game/b/l336;I)I

    move-result v9

    iput v9, v8, Lcom/corrodinggames/rts/game/b/i333;->c:I

    .line 2298
    iget v9, v8, Lcom/corrodinggames/rts/game/b/i333;->c:I

    if-ltz v9, :cond_1f

    .line 2300
    sget-object v9, Lcom/corrodinggames/rts/game/b/b326;->m:Lcom/corrodinggames/rts/game/b/j334;

    iget-object v10, v8, Lcom/corrodinggames/rts/game/b/i333;->a:Lcom/corrodinggames/rts/game/b/l336;

    iget v11, v8, Lcom/corrodinggames/rts/game/b/i333;->b:I

    invoke-virtual {v9, v10, v11}, Lcom/corrodinggames/rts/game/b/j334;->a(Lcom/corrodinggames/rts/game/b/l336;I)I

    move-result v9

    .line 2301
    iget v10, v8, Lcom/corrodinggames/rts/game/b/i333;->c:I

    if-eq v9, v10, :cond_1f

    .line 2303
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Meta index mismatch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/corrodinggames/rts/game/b/i333;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move v6, v3

    .line 2277
    goto :goto_e

    :cond_1e
    move v5, v3

    .line 2278
    goto :goto_f

    .line 2307
    :cond_1f
    iget v8, v8, Lcom/corrodinggames/rts/game/b/i333;->c:I

    if-gez v8, :cond_20

    .line 2309
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/corrodinggames/rts/game/b/g331;->w:Z

    .line 2291
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2289
    :cond_21
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_10

    .line 2273
    :cond_22
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_d

    .line 2319
    :cond_23
    sget-object v0, Lcom/corrodinggames/rts/game/b/b326;->l:Lcom/corrodinggames/rts/game/b/j334;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/j334;->c()V

    .line 2320
    sget-object v0, Lcom/corrodinggames/rts/game/b/b326;->m:Lcom/corrodinggames/rts/game/b/j334;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/j334;->c()V

    .line 2358
    const-string v0, "triggers"

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/b/b326;->e(Ljava/lang/String;)Lcom/corrodinggames/rts/game/b/k335;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2400
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    if-eqz v0, :cond_2e

    .line 2402
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    const-string v4, "map_info"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/b/k335;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/b/a325;

    move-result-object v0

    .line 2414
    :goto_12
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v6

    .line 2417
    iput-object v1, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    .line 2422
    if-eqz v0, :cond_28

    .line 2424
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2426
    const-string v4, "fog"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2428
    const-string v0, "mission"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2429
    const-string v0, "survival"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2430
    const-string v0, "challenge"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2431
    const-string v0, "skirmish"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_24
    move-object v0, v5

    .line 2446
    :goto_13
    if-nez v0, :cond_29

    .line 2448
    const-string v0, "Defaulting to skirmish map type"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 2449
    const-string v0, "skirmish"

    .line 2457
    :goto_14
    new-instance v1, Lcom/corrodinggames/rts/gameFramework/n/p1300;

    invoke-direct {v1}, Lcom/corrodinggames/rts/gameFramework/n/p1300;-><init>()V

    iput-object v1, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    .line 2458
    iget-object v1, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    invoke-virtual {v1, p2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Z)V

    .line 2461
    if-eqz v4, :cond_2b

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 2463
    const-string v0, "none"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2467
    const-string v0, "los"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    move v1, v2

    .line 2508
    :goto_15
    if-nez v1, :cond_25

    .line 2512
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    .line 2526
    :cond_25
    if-eqz v1, :cond_26

    .line 2528
    if-eqz v0, :cond_26

    .line 2530
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/b/b326;->G:Z

    .line 2537
    :cond_26
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/b/b326;->X:Z

    .line 2542
    return-void

    .line 2386
    :catch_3
    move-exception v1

    .line 2388
    const-string v2, "-- error writing debug info --"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 2437
    :cond_27
    const-string v0, "Unknown map type:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    move-object v0, v1

    .line 2439
    goto :goto_13

    .line 2442
    :cond_28
    const-string v0, "Map type not found on mapInfo"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    move-object v4, v1

    move-object v0, v1

    goto :goto_13

    .line 2453
    :cond_29
    const-string v1, "Map type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    goto :goto_14

    .line 2471
    :cond_2a
    const-string v0, "map"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2477
    const-string v0, "Unknown map fog type: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    move v0, v3

    move v1, v2

    goto :goto_15

    .line 2488
    :cond_2b
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->Z()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->E()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 2492
    if-eqz v0, :cond_2c

    .line 2494
    const-string v1, "skirmish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v2

    move v1, v2

    .line 2496
    goto :goto_15

    :cond_2c
    move v0, v3

    move v1, v2

    goto :goto_15

    :cond_2d
    move v0, v3

    move v1, v3

    goto :goto_15

    :cond_2e
    move-object v0, v1

    goto/16 :goto_12
.end method
