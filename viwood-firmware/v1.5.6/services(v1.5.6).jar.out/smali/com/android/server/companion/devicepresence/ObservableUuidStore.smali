.class public Lcom/android/server/companion/devicepresence/ObservableUuidStore;
.super Ljava/lang/Object;
.source "ObservableUuidStore.java"


# instance fields
.field public final mCachedPerUser:Landroid/util/SparseArray;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static synthetic $r8$lambda$19pmv1qe7glm4vF-NbNUjxdJIDQ(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 0

    .line 273
    const-string/jumbo p1, "observing_uuids_presence.xml"

    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DVc2thXL5gZgZ_PVQ1-LOjleU7s(Ljava/lang/String;Landroid/os/ParcelUuid;Lcom/android/server/companion/devicepresence/ObservableUuid;)Z
    .locals 1

    .line 101
    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$JKNU0nOf42AlvLeZKjEhitNkVo4(Lcom/android/server/companion/devicepresence/ObservableUuidStore;ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->lambda$removeObservableUuid$1(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NGtLz9-dcgx8IrEYfAwGcR2eiTg(Lcom/android/server/companion/devicepresence/ObservableUuidStore;ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->lambda$writeObservableUuid$3(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NdC96mPJG9b5JcWBTiBEd0kWk_Q(Lcom/android/server/companion/devicepresence/ObservableUuidStore;I)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->lambda$readObservableUuidsFromCache$5(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ry-m7_0LwMjl0rHjfebkLTv8fHY(Lcom/android/server/companion/devicepresence/ObservableUuidStore;Ljava/util/List;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->lambda$writeObservableUuidToStore$4(Ljava/util/List;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W2JVjeckgUqBHF3J4bnKnhW96gI(Lcom/android/server/companion/devicepresence/ObservableUuid;Lcom/android/server/companion/devicepresence/ObservableUuid;)Z
    .locals 2

    .line 119
    invoke-virtual {p1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 86
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 3

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    move-result-object p0

    .line 285
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 286
    invoke-virtual {p1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 290
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getObservableUuidsForUser(I)Ljava/util/List;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 2

    .line 272
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public isUuidBeingObserved(Landroid/os/ParcelUuid;ILjava/lang/String;)Z
    .locals 0

    .line 308
    invoke-virtual {p0, p2, p3}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 311
    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$readObservableUuidsFromCache$5(I)Ljava/util/List;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidFromStore(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$removeObservableUuid$1(ILjava/util/List;)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->writeObservableUuidToStore(ILjava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$writeObservableUuid$3(ILjava/util/List;)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->writeObservableUuidToStore(ILjava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$writeObservableUuidToStore$4(Ljava/util/List;Ljava/io/FileOutputStream;)V
    .locals 2

    .line 138
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 139
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 141
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 142
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->writeObservableUuidToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Collection;)V

    .line 143
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public readObservableUuidFromStore(I)Ljava/util/List;
    .locals 4

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 205
    const-string v1, "CDM_ObservableUuidStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading ObservableUuid for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from file="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-enter v0

    .line 211
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 212
    const-string p0, "CDM_ObservableUuidStore"

    const-string p1, "File does not exist -> Abort"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 215
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 217
    const-string/jumbo v2, "uuids"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    .line 220
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p0

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_2

    .line 215
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 221
    :goto_2
    :try_start_7
    const-string p1, "CDM_ObservableUuidStore"

    const-string v1, "Error while reading requests file"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    .line 224
    :goto_3
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final readObservableUuidFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 3

    .line 230
    const-string/jumbo v0, "uuids"

    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 238
    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 241
    :cond_1
    const-string/jumbo v2, "uuid"

    invoke-static {p1, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readUuidFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/companion/devicepresence/ObservableUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "The XML doesn\'t have start tag: uuids"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readObservableUuidsFromCache(I)Ljava/util/List;
    .locals 6

    .line 176
    const-string v0, "CDM_ObservableUuidStore"

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;I)V

    .line 179
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 181
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 189
    :catch_0
    const-string v2, "Reading ObservableUuid from disk timed out."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :catch_1
    const-string v2, "Error occurred while reading ObservableUuid from disk."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :catch_2
    const-string v2, "Thread reading ObservableUuid from disk is interrupted."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_0
    if-nez v1, :cond_1

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v1
.end method

.method public final readUuidFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/companion/devicepresence/ObservableUuid;
    .locals 4

    .line 251
    const-string/jumbo p0, "uuid"

    invoke-static {p1, p0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string/jumbo v0, "user_id"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 256
    invoke-static {p1, p0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    .line 257
    const-string/jumbo v1, "package_name"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    const-string/jumbo v2, "time_approved"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 260
    new-instance v2, Lcom/android/server/companion/devicepresence/ObservableUuid;

    invoke-direct {v2, v0, p0, v1, p1}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v2

    .line 252
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "XML doesn\'t have start tag: uuid"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeObservableUuid(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 3

    .line 93
    const-string v0, "CDM_ObservableUuidStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing uuid=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] from store..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 103
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, v1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;ILjava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public writeObservableUuid(ILcom/android/server/companion/devicepresence/ObservableUuid;)V
    .locals 3

    .line 113
    const-string v0, "CDM_ObservableUuidStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing uuid=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] to store..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuid;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 121
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;ILjava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 123
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final writeObservableUuidToStore(ILjava/util/List;)V
    .locals 4

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 131
    const-string v1, "CDM_ObservableUuidStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing ObservableUuid for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to file="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    monitor-enter v0

    .line 137
    :try_start_0
    new-instance p1, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;Ljava/util/List;)V

    invoke-static {v0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeObservableUuidToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Collection;)V
    .locals 3

    const/4 v0, 0x0

    .line 150
    const-string/jumbo v1, "uuids"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 153
    invoke-virtual {p0, p1, v2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->writeUuidToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/companion/devicepresence/ObservableUuid;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeUuidToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/companion/devicepresence/ObservableUuid;)V
    .locals 4

    const/4 p0, 0x0

    .line 161
    const-string/jumbo v0, "uuid"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUserId()I

    move-result v1

    const-string/jumbo v2, "user_id"

    invoke-static {p1, v2, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 164
    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    const-string/jumbo v1, "package_name"

    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 166
    const-string/jumbo v1, "time_approved"

    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getTimeApprovedMs()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 168
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
