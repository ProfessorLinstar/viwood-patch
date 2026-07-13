.class public Lcom/android/server/graphics/fonts/FontManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "FontManagerShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/graphics/fonts/FontManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    return-void
.end method

.method public static parseFontFamilyUpdateXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6

    .line 458
    :try_start_0
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 465
    :cond_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 466
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x2717

    if-ne v1, v2, :cond_3

    .line 468
    const-string v1, "fontFamilyUpdateRequest"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 469
    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected <fontFamilyUpdateRequest> but got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    if-ne v1, v3, :cond_0

    .line 474
    const-string v1, "family"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 475
    new-instance v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 476
    invoke-static {p0}, Landroid/graphics/fonts/FontUpdateRequest$Family;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/graphics/fonts/FontUpdateRequest$Family;)V

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    :cond_4
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected <family> but got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p0

    .line 485
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v1, 0x0

    const-string v2, "Failed to parse xml"

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final clear(Landroid/os/ShellCommand;)I
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->clearUpdates()V

    .line 491
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Success"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final dump(Landroid/os/ShellCommand;)I
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "FontManagerShellCommand"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 317
    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 318
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    invoke-direct {v0, v1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 320
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v1

    if-nez p1, :cond_1

    .line 322
    invoke-virtual {p0, v0, v1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    move-result-object v1

    .line 326
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/fonts/FontFamily;

    if-nez v1, :cond_2

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font Family \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFallback(Landroid/util/IndentingPrintWriter;[Landroid/graphics/fonts/FontFamily;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public dumpAll(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    return-void
.end method

.method public final dumpFallback(Landroid/util/IndentingPrintWriter;[Landroid/graphics/fonts/FontFamily;)V
    .locals 3

    .line 244
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 245
    invoke-virtual {p0, p1, v2}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFamily(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/FontFamily;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dumpFamily(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/FontFamily;)V
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Family:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getLangTags()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, " langTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getLangTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getVariant()I

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    const-string v1, " variant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getVariant()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 265
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    :cond_1
    const-string v1, "Elegant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 259
    :cond_2
    const-string v1, "Compact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 271
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 272
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 274
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFont(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/Font;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 277
    throw p0

    :cond_4
    return-void
.end method

.method public final dumpFont(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/Font;)V
    .locals 2

    .line 282
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object p0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, ", path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    .line 286
    const-string p0, "[Not a file]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result p0

    if-eqz p0, :cond_1

    .line 288
    const-string p0, ", index = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 292
    array-length p2, p0

    if-eqz p2, :cond_2

    .line 293
    const-string p2, ", axes = \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-static {p0}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V
    .locals 9

    .line 164
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v0

    .line 167
    const-string v1, "Named Family List"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 169
    invoke-virtual {p2}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 170
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 171
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$NamedFamilyList;

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Named Family ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 174
    invoke-virtual {v4}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v4

    move v5, v2

    .line 175
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 176
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$FontFamily;

    .line 178
    const-string v7, "Family"

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v6}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    .line 180
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v2

    .line 181
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 182
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/FontConfig$Font;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 191
    const-string v1, "Dump Fallback Families"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v2

    move v3, v1

    .line 194
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 198
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_6

    .line 200
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fallback Family ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v3, 0x1

    .line 201
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, "]: lang=\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v3, "\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v3

    if-eqz v3, :cond_6

    .line 206
    const-string v3, ", variant="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_5

    const/4 v7, 0x2

    if-eq v3, v7, :cond_4

    .line 215
    const-string v3, "Unknown"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 212
    :cond_4
    const-string v3, "Elegant"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 209
    :cond_5
    const-string v3, "Compact"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_6
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v3

    .line 222
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v4, v2

    .line 223
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 224
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$Font;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 226
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v6

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 228
    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 231
    const-string p0, "Dump Family Aliases"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 233
    invoke-virtual {p2}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object p0

    .line 234
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_9

    .line 235
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/FontConfig$Alias;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p2}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 236
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 239
    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V
    .locals 1

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string/jumbo v0, "style = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v0, ", path = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, ", index = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const-string v0, ", axes = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    const-string v0, ", fallback = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Font is updated from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3
    return-void
.end method

.method public final execCommand(Landroid/os/ShellCommand;Ljava/lang/String;)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 518
    invoke-virtual {p1, p0}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 522
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "update-family"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "restart"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "clear"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "dump"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "update"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "install-debug-cert"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 538
    invoke-virtual {p1, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 536
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->installCert(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 534
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->status(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 532
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->restart(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 530
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->clear(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 528
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->updateFamily(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 526
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->update(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 524
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dump(Landroid/os/ShellCommand;)I

    move-result p0
    :try_end_0
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 541
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->writeCommandResult(Landroid/os/ShellCommand;Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;)V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c3ca730 -> :sswitch_6
        -0x3532300e -> :sswitch_5
        -0x31ffc737 -> :sswitch_4
        0x2f39f4 -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x43adc8e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final installCert(Landroid/os/ShellCommand;)I
    .locals 4

    .line 337
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x2718

    if-eqz v0, :cond_1

    .line 350
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/graphics/fonts/FontManagerService;->addDebugCertificate(Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->restart()V

    .line 359
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Success"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 352
    :cond_0
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cert file ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 346
    :cond_1
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Cert file path argument is required."

    invoke-direct {p0, v1, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 341
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can add debug certificate"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 338
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only debuggable device can add debug certificate"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 2

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Only shell or root user can execute font command."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 87
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->execCommand(Landroid/os/ShellCommand;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 93
    const-string v0, "Font service (font) commands"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v0, "help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 97
    const-string v0, "dump [family name]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v0, "    Dump all font files in the specified family name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v0, "    Dump current system font configuration if no family name was specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 101
    const-string/jumbo v0, "update [font file path] [signature file path]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v0, "    Update installed font files with new font file."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 104
    const-string/jumbo v0, "update-family [family definition XML path]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v0, "    Update font families with the new definitions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 107
    const-string v0, "install-debug-cert [cert file path]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v0, "    Install debug certificate file. This command can be used only on"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v0, "    debuggable device with root user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 111
    const-string v0, "clear"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v0, "    Remove all installed font files and reset to the initial state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 114
    const-string/jumbo v0, "restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v0, "    Restart FontManagerService emulating device reboot."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v0, "    WARNING: this is not a safe operation. Other processes may misbehave if"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v0, "    they are using fonts updated by FontManagerService."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v0, "    This command exists merely for testing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 120
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v0, "    Prints status of current system font configuration."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final restart(Landroid/os/ShellCommand;)I
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->restart()V

    .line 497
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Success"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final status(Landroid/os/ShellCommand;)I
    .locals 4

    .line 502
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 503
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 504
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p1

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/text/FontConfig;->getConfigVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Landroid/text/FontConfig;->getLastModifiedTimeMillis()J

    move-result-wide v1

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last Modified Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 511
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getFontFileMap()Ljava/util/Map;

    move-result-object p0

    .line 512
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of updated font files: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final update(Landroid/os/ShellCommand;)I
    .locals 8

    .line 364
    const-string/jumbo v0, "r"

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x2713

    if-eqz v1, :cond_7

    .line 370
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    .line 377
    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :try_start_1
    invoke-virtual {p1, v3, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const/16 v3, -0x2714

    .line 392
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 393
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    const/16 v6, 0x2000

    if-gt v5, v6, :cond_1

    .line 399
    new-array v6, v5, [B

    .line 400
    invoke-virtual {v4, v6, v2, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v7, v5, :cond_0

    .line 405
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 410
    :try_start_5
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    new-instance v3, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-direct {v3, v1, v6}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/os/ParcelFileDescriptor;[B)V

    .line 411
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, -0x1

    .line 410
    invoke-virtual {p0, v4, v3}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 412
    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    .line 401
    :cond_0
    :try_start_8
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v5, "Invalid read length"

    invoke-direct {p0, v3, v5}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_2
    move-exception p0

    goto :goto_0

    .line 395
    :cond_1
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v5, "Signature file is too large"

    const/16 v6, -0x2715

    invoke-direct {p0, v6, v5}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 392
    :goto_0
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_a
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 406
    :goto_2
    :try_start_b
    new-instance v4, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v5, "Failed to read signature file."

    invoke-direct {v4, v3, v5, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 386
    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v3, "Failed to open signature file"

    const/16 v4, -0x2712

    invoke-direct {p0, v4, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 380
    :cond_3
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v3, "Failed to open font file"

    const/16 v4, -0x2711

    invoke-direct {p0, v4, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_3
    if-eqz v0, :cond_4

    .line 377
    :try_start_c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_5
    if-eqz v1, :cond_5

    :try_start_e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    throw p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 415
    :goto_7
    const-string v0, "FontManagerShellCommand"

    const-string v1, "Error while closing files"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    :goto_8
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Success"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 372
    :cond_6
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Signature file argument is required."

    invoke-direct {p0, v2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 366
    :cond_7
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Font file path argument is required."

    invoke-direct {p0, v2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final updateFamily(Landroid/os/ShellCommand;)I
    .locals 3

    .line 423
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 431
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, v0, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->parseFontFamilyUpdateXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V

    .line 439
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Success"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 431
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 434
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v0, -0x2716

    const-string v1, "Failed to open XML file."

    invoke-direct {p1, v0, v1, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 425
    :cond_1
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 p1, -0x2713

    const-string v0, "XML file path argument is required."

    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final writeCommandResult(Landroid/os/ShellCommand;Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;)V
    .locals 1

    .line 302
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 303
    invoke-virtual {p2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 304
    invoke-virtual {p2}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Command failed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FontManagerShellCommand"

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
