.class public Lcom/android/server/slice/SlicePermissionManager;
.super Ljava/lang/Object;
.source "SlicePermissionManager.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;


# instance fields
.field public final ATT_VERSION:Ljava/lang/String;

.field public final mCachedClients:Landroid/util/ArrayMap;

.field public final mCachedProviders:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mDirty:Landroid/util/ArraySet;

.field public final mHandler:Landroid/os/Handler;

.field public final mSliceDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$0PrcidSmrHQOvNa3ac3eiLsWIwU(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCachedClients(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCachedProviders(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirty(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleRemove(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->handleRemove(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system/slice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->ATT_VERSION:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 91
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mContext:Landroid/content/Context;

    .line 92
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$H;

    invoke-direct {p1, p0, p2}, Lcom/android/server/slice/SlicePermissionManager$H;-><init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p3, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public addDirtyImmediate(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .locals 1

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 365
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 144
    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/slice/SliceProviderPermissions;->getAuthorities()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 145
    invoke-virtual {p1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getPkgs()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 146
    invoke-static {v1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->-$$Nest$fgetmPkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SliceClientPermissions;

    .line 257
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v1, :cond_2

    .line 259
    :try_start_1
    invoke-static {p1}, Lcom/android/server/slice/SliceClientPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :try_start_2
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :try_start_3
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    :try_start_4
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_0

    .line 267
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 263
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 259
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0

    .line 272
    :goto_2
    const-string v1, "SlicePermissionManager"

    const-string v2, "Can\'t read client"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 270
    :goto_3
    const-string v1, "SlicePermissionManager"

    const-string v2, "Can\'t read client"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :catch_2
    :goto_4
    new-instance v0, Lcom/android/server/slice/SliceClientPermissions;

    invoke-direct {v0, p1, p0}, Lcom/android/server/slice/SliceClientPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 276
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 277
    :try_start_a
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    monitor-exit v2

    return-object v0

    :catchall_3
    move-exception p0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :cond_2
    return-object v1

    :catchall_4
    move-exception p0

    .line 257
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0
.end method

.method public final getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 327
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    .locals 2

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p1

    .line 316
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;-><init>(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager-IA;)V

    .line 317
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fputinput(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Ljava/io/InputStream;)V

    .line 318
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fputparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 319
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetinput(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Ljava/io/InputStream;

    move-result-object p1

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v1}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SliceProviderPermissions;

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v1, :cond_2

    .line 289
    :try_start_1
    invoke-static {p1}, Lcom/android/server/slice/SliceProviderPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :try_start_2
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :try_start_3
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    :try_start_4
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_0

    .line 297
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 293
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 289
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0

    .line 302
    :goto_2
    const-string v1, "SlicePermissionManager"

    const-string v2, "Can\'t read provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 300
    :goto_3
    const-string v1, "SlicePermissionManager"

    const-string v2, "Can\'t read provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    :catch_2
    :goto_4
    new-instance v0, Lcom/android/server/slice/SliceProviderPermissions;

    invoke-direct {v0, p1, p0}, Lcom/android/server/slice/SliceProviderPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 306
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 307
    :try_start_a
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    monitor-exit v2

    return-object v0

    :catchall_3
    move-exception p0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :cond_2
    return-object v1

    :catchall_4
    move-exception p0

    .line 287
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0
.end method

.method public grantFullAccess(Ljava/lang/String;I)V
    .locals 1

    .line 101
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p0

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceClientPermissions;->setHasFullAccess(Z)V

    return-void
.end method

.method public grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 109
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {p1, p3, p4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p2

    .line 112
    invoke-virtual {p2, p5, p1}, Lcom/android/server/slice/SliceClientPermissions;->grantUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object p0

    .line 115
    invoke-static {p5}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceProviderPermissions;->getOrCreateAuthority(Ljava/lang/String;)Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->addPkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    return-void
.end method

.method public handlePersist()V
    .locals 6

    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 334
    invoke-interface {v1}, Lcom/android/server/slice/DirtyTracker$Persistable;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 345
    sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v5}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 347
    invoke-interface {v1, v4}, Lcom/android/server/slice/DirtyTracker$Persistable;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 349
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 350
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 352
    :try_start_3
    const-string v4, "SlicePermissionManager"

    const-string v5, "Failed to save access file, restoring backup"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 339
    const-string v1, "SlicePermissionManager"

    const-string v2, "Failed to save access file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    monitor-exit p0

    goto :goto_1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 357
    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final handleRemove(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .locals 3

    .line 369
    invoke-static {p1}, Lcom/android/server/slice/SliceClientPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 370
    invoke-static {p1}, Lcom/android/server/slice/SliceProviderPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :try_start_1
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 374
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 375
    :try_start_2
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 377
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 377
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p1

    .line 374
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    .line 378
    :goto_0
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public hasFullAccess(Ljava/lang/String;I)Z
    .locals 1

    .line 153
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/slice/SliceClientPermissions;->hasFullAccess()Z

    move-result p0

    return p0
.end method

.method public hasPermission(Ljava/lang/String;ILandroid/net/Uri;)Z
    .locals 1

    .line 158
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p0

    .line 160
    invoke-static {p3, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    .line 161
    invoke-virtual {p0}, Lcom/android/server/slice/SliceClientPermissions;->hasFullAccess()Z

    move-result p2

    if-nez p2, :cond_1

    .line 162
    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/slice/SliceClientPermissions;->hasPermission(Landroid/net/Uri;I)Z

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

.method public onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 169
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .line 210
    monitor-enter p0

    .line 211
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "slice-access-list"

    .line 212
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 213
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 214
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 216
    :cond_1
    const-string/jumbo v0, "version"

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 219
    monitor-exit p0

    return-void

    .line 221
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 223
    const-string v0, "client"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v3, 0x493e0

    if-eqz v0, :cond_3

    .line 224
    invoke-static {p1, p0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v0

    .line 226
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceClientPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 230
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    .line 231
    invoke-virtual {v0}, Lcom/android/server/slice/SliceClientPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 230
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 228
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 233
    :cond_3
    const-string/jumbo v0, "provider"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    invoke-static {p1, p0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v0

    .line 236
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    :try_start_5
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceProviderPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 239
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 240
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    .line 241
    invoke-virtual {v0}, Lcom/android/server/slice/SliceProviderPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 240
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 238
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    .line 244
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 247
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 250
    :cond_6
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public removePkg(Ljava/lang/String;I)V
    .locals 5

    .line 129
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/android/server/slice/SliceProviderPermissions;->getAuthorities()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 133
    invoke-virtual {v1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getPkgs()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/slice/SliceClientPermissions;->removeAuthority(Ljava/lang/String;I)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/android/server/slice/SliceClientPermissions;->clear()V

    .line 139
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public revokeSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 122
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {p1, p3, p4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p0

    .line 125
    invoke-virtual {p0, p5, p1}, Lcom/android/server/slice/SliceClientPermissions;->revokeUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    return-void
.end method

.method public writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 11

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    const-string/jumbo v0, "slice-access-list"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/slice/SlicePermissionManager$$ExternalSyntheticLambda0;-><init>()V

    .line 179
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 183
    :cond_0
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    .line 184
    invoke-virtual {p0, v6}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_2
    :try_start_1
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    .line 187
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-ne v8, v2, :cond_2

    .line 188
    const-string v8, "client"

    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 189
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v8

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 191
    :cond_1
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v8

    goto :goto_3

    .line 195
    :cond_2
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    :cond_3
    move-object v8, v1

    :goto_3
    if-eqz v8, :cond_4

    .line 198
    invoke-interface {v8, p1}, Lcom/android/server/slice/DirtyTracker$Persistable;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_4

    .line 200
    :cond_4
    const-string v8, "SlicePermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid or empty slice permissions file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    if-eqz v7, :cond_5

    .line 202
    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_5
    if-eqz v7, :cond_6

    .line 184
    :try_start_3
    invoke-virtual {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw p1

    .line 205
    :cond_7
    const-string/jumbo v0, "slice-access-list"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    monitor-exit p0

    return-void

    :goto_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
