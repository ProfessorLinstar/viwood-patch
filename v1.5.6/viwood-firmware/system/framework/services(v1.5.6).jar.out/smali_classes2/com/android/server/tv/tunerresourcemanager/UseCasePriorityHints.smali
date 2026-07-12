.class public Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
.super Ljava/lang/Object;
.source "UseCasePriorityHints.java"


# static fields
.field public static final DEBUG:Z

.field public static final NS:Ljava/lang/String;


# instance fields
.field public mDefaultBackground:I

.field public mDefaultForeground:I

.field public mPriorityHints:Landroid/util/SparseArray;

.field public mVendorDefinedUseCase:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-string v0, "UseCasePriorityHints"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    const/16 v0, 0x96

    .line 62
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    const/16 v0, 0x32

    .line 63
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return-void
.end method

.method public static formatTypeToNum(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p0, p1

    goto :goto_1

    :sswitch_0
    const-string v0, "USE_CASE_RECORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "USE_CASE_SCAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "USE_CASE_LIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "USE_CASE_PLAYBACK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "USE_CASE_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/16 p0, 0x1f4

    return p0

    :pswitch_1
    const/16 p0, 0xc8

    return p0

    :pswitch_2
    const/16 p0, 0x190

    return p0

    :pswitch_3
    const/16 p0, 0x12c

    return p0

    :pswitch_4
    const/16 p0, 0x64

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x34bcc93b -> :sswitch_4
        0x16873572 -> :sswitch_3
        0x48d65bc3 -> :sswitch_2
        0x48d97154 -> :sswitch_1
        0x76aab968 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isPredefinedUseCase(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x190

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addNewUseCasePriority(III)V
    .locals 0

    .line 201
    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 202
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public getBackgroundPriority(I)I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0

    .line 76
    :cond_0
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return p0
.end method

.method public getForegroundPriority(I)I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    .line 69
    :cond_0
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    return p0
.end method

.method public isDefinedUseCase(I)Z
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->isPredefinedUseCase(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public parse()V
    .locals 4

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "UseCasePriorityHints"

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parseInternal(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 97
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse vendor file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 95
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading vendor file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    .line 100
    :cond_0
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v0, "no vendor priority configuration available. Using default priority"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0xb4

    const/16 v1, 0x64

    .line 103
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v0, 0x1c2

    const/16 v1, 0xc8

    .line 104
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v0, 0x1e0

    const/16 v1, 0x12c

    .line 105
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v0, 0x1ea

    const/16 v1, 0x190

    .line 106
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v0, 0x258

    const/16 v1, 0x1f4

    .line 107
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    return-void
.end method

.method public parseInternal(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 118
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readUseCase(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 121
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const/4 p1, 0x0

    move v0, p1

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 127
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 128
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{defaultFg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", defaultBg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UseCasePriorityHints"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{useCase="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fg="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bg="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final readAttributeToInt(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I
    .locals 0

    const/4 p0, 0x0

    .line 197
    invoke-interface {p2, p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final readUseCase(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 7

    .line 141
    sget-object v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    const-string v1, "config"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 143
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string/jumbo v3, "useCaseDefault"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "bgPriority"

    const-string v5, "fgPriority"

    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v3

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 150
    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v3

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    .line 151
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 152
    sget-object v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    const-string/jumbo v3, "useCasePreDefined"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    const-string/jumbo v3, "type"

    invoke-static {v3, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->formatTypeToNum(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 156
    const-string v0, "UseCasePriorityHints"

    const-string v1, "Wrong predefined use case name given in the vendor config."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v5

    .line 161
    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v4

    .line 159
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 162
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 163
    sget-object v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    const-string/jumbo v3, "useCaseVendor"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    const-string v3, "id"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v3

    .line 167
    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v5

    .line 168
    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v4

    .line 166
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 169
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 171
    sget-object v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->skip(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final skip(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 3

    .line 179
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_2

    .line 184
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 180
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
