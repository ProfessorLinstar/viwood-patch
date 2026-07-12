.class public Lcom/android/server/power/stats/BatteryHistoryDirectory;
.super Ljava/lang/Object;
.source "BatteryHistoryDirectory.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;


# static fields
.field public static final DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

.field public static final FILE_FORMAT_COMPRESSED_PARCEL:[B

.field public static final FILE_FORMAT_PARCEL:[B


# instance fields
.field public final mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

.field public final mDirectory:Ljava/io/File;

.field public mFileCompressionEnabled:Z

.field public final mHistoryFiles:Ljava/util/List;

.field public mInitialized:Z

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMaxHistorySize:I

.field public mWaitForDirectoryLock:Z


# direct methods
.method public static synthetic $r8$lambda$4_IaI9G7_lCfmgCS4OX1O0RYuI8(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$ensureInitialized$2(Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GNciJzgYSSxlT7k25HNe9uFcdo8(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$writeFragment$0(Landroid/util/AtomicFile;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJcDn7BYV6qYFdm9J-T1ZR61QyE(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$writeFragment$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$t-NcGBV2AhPe8Gl0d2zXWSPrsEM(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$ensureInitialized$3(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 59
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    .line 92
    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-direct {v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x52t
        0x43t
        0x4ct
    .end array-data

    :array_1
    .array-data 1
        0x47t
        0x5at
        0x49t
        0x50t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    .line 121
    sget-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;-><init>(Ljava/io/File;ILcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    .line 126
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    .line 127
    iput p2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-nez p2, :cond_0

    .line 129
    const-string p1, "BatteryHistoryDirectory"

    const-string/jumbo p2, "maxHistorySize should not be zero"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)I
    .locals 1

    .line 540
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 542
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readInt(Ljava/io/InputStream;)I
    .locals 2

    .line 533
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 534
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 535
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 536
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static writeInt(Ljava/io/OutputStream;I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x18

    .line 526
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    .line 527
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    .line 528
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 529
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 2

    .line 431
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 433
    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 437
    :try_start_0
    iget-object p1, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 439
    :catch_0
    :try_start_1
    const-string p1, "BatteryHistoryDirectory"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create history file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 444
    throw p1
.end method

.method public final deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 310
    check-cast p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p0, p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void
.end method

.method public final ensureInitialized()V
    .locals 8

    .line 324
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x80000

    .line 328
    const-string v2, "BatteryStatsHistory.load"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 329
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 330
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HistoryDir does not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryHistoryDirectory"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 335
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 336
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    new-instance v7, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 351
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 352
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2
    const/4 v5, 0x1

    .line 355
    iput-boolean v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    .line 356
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 358
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v4}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 370
    :cond_3
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 2

    .line 403
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 404
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 412
    throw v0
.end method

.method public getFileNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 391
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 393
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 398
    throw v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 382
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    return-object p0

    .line 378
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Reading battery history without a lock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 418
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 426
    throw v0
.end method

.method public getMaxHistorySize()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    return p0
.end method

.method public getSize()I
    .locals 4

    .line 464
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 466
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v0, 0x0

    move v1, v0

    .line 469
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 475
    throw v0
.end method

.method public hasCompletedFragments()Z
    .locals 2

    .line 451
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 453
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 458
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 459
    throw v0
.end method

.method public isLocked()Z
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$ensureInitialized$2(Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    .line 337
    const-string v0, ".bh"

    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 339
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 343
    :cond_0
    :try_start_0
    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 344
    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 346
    :catch_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final synthetic lambda$ensureInitialized$3(Ljava/util/List;)V
    .locals 5

    .line 359
    const-string v0, "BatteryStatsHistory.load"

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v1, 0x0

    const-wide/32 v2, 0x80000

    .line 361
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 362
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 366
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    .line 365
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 366
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 367
    throw p1
.end method

.method public final synthetic lambda$writeFragment$0(Landroid/util/AtomicFile;[B)V
    .locals 0

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeHistoryFragmentCompressed(Landroid/util/AtomicFile;[B)V

    return-void
.end method

.method public final synthetic lambda$writeFragment$1()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->trim()V

    return-void
.end method

.method public lock()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public makeDirectoryLockUnconditional()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    return-void
.end method

.method public readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B
    .locals 13

    .line 244
    const-string v0, "BatteryHistoryDirectory"

    move-object v1, p1

    check-cast v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    .line 245
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    return-object v3

    .line 249
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 250
    const-string v2, "BatteryStatsHistory.read"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 251
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x4

    .line 252
    :try_start_1
    new-array v7, v6, [B

    const/4 v8, 0x0

    .line 253
    invoke-virtual {v2, v7, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, -0x1

    const-string v10, "Invalid battery history file format "

    if-ne v6, v9, :cond_2

    .line 254
    :try_start_2
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    if-nez v6, :cond_1

    .line 255
    new-array v6, v8, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    goto/16 :goto_6

    :catchall_1
    move-exception v6

    goto/16 :goto_4

    .line 258
    :cond_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 304
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    .line 264
    :cond_2
    :try_start_6
    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    .line 266
    :cond_3
    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v8

    .line 274
    :goto_0
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readInt(Ljava/io/InputStream;)I

    move-result v7

    if-ltz v7, :cond_8

    const v11, 0x989680

    if-le v7, v11, :cond_4

    goto :goto_3

    .line 281
    :cond_4
    new-array v10, v7, [B

    if-eqz v6, :cond_5

    .line 283
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-interface {v6, v10, v2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;->uncompress([BLjava/io/InputStream;)V

    goto :goto_2

    :cond_5
    :goto_1
    if-ge v8, v7, :cond_7

    sub-int v6, v7, v8

    .line 287
    invoke-virtual {v2, v10, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v9, :cond_6

    add-int/2addr v8, v6

    goto :goto_1

    .line 289
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid battery history file format"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 299
    :cond_7
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 304
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v10

    .line 276
    :cond_8
    :goto_3
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 299
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 304
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    .line 269
    :cond_9
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 299
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 304
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_4
    if-eqz v2, :cond_a

    .line 251
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v2

    :try_start_d
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    throw v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 300
    :goto_6
    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 304
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 305
    throw p0
.end method

.method public reset()V
    .locals 2

    .line 480
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 482
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 488
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 493
    throw v0
.end method

.method public setFileCompressionEnabled(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    return-void
.end method

.method public setMaxHistorySize(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    .line 140
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->trim()V

    return-void
.end method

.method public final trim()V
    .locals 7

    .line 497
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 499
    const-string v0, "BatteryStatsHistory.trim"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    .line 505
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 506
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 510
    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-le v4, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    .line 511
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 512
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    .line 513
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 514
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v5

    goto :goto_1

    .line 518
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 521
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 518
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 519
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 521
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 522
    throw p0
.end method

.method public tryLock()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p0, 0x1

    return p0

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p0

    return p0
.end method

.method public unlock()V
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V
    .locals 2

    .line 177
    check-cast p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    const/4 v0, 0x0

    .line 180
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 181
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 183
    array-length v1, p2

    invoke-static {v0, v1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeInt(Ljava/io/OutputStream;I)V

    .line 184
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 186
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    if-eqz p3, :cond_1

    .line 193
    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    if-eqz p3, :cond_0

    .line 194
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 197
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 200
    :goto_1
    const-string p2, "BatteryHistoryDirectory"

    const-string p3, "Error writing battery history fragment"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    return-void
.end method

.method public final writeHistoryFragmentCompressed(Landroid/util/AtomicFile;[B)V
    .locals 6

    .line 206
    array-length v0, p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    const-string v0, "BatteryStatsHistory.compressHistoryFile"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v0, 0x0

    .line 215
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 216
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 217
    sget-object v3, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 218
    array-length v3, p2

    invoke-static {v0, v3}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeInt(Ljava/io/OutputStream;I)V

    .line 220
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-interface {v3, v0, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;->compress(Ljava/io/OutputStream;[B)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 238
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 234
    :try_start_1
    const-string v3, "BatteryHistoryDirectory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error compressing battery history chunk "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 238
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :goto_0
    return-void

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 238
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    throw p1
.end method
