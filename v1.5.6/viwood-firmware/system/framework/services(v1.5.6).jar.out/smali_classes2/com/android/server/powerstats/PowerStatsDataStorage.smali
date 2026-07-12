.class public Lcom/android/server/powerstats/PowerStatsDataStorage;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerStatsDataStorage"


# instance fields
.field public final mDataStorageDir:Ljava/io/File;

.field public final mDataStorageFilename:Ljava/lang/String;

.field public final mFileRotator:Lcom/android/internal/util/FileRotator;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 169
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    .line 170
    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 172
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    sget-object p1, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDataStorageDir does not exist: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    return-void

    .line 178
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 179
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 199
    aget-object v1, p1, p3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 207
    :cond_2
    new-instance v0, Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const-wide/32 v3, 0xdbba00

    const-wide/32 v5, 0xa4cb800

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    return-void
.end method


# virtual methods
.method public deleteLogs()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 259
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 261
    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 263
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 269
    throw v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 276
    iget-object v0, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    :try_start_0
    iget-object v0, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 279
    iget-object v4, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 280
    iget-object v0, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    move v0, v5

    move v9, v0

    const-wide v10, 0x7fffffffffffffffL

    .line 285
    :goto_0
    array-length v12, v6

    if-ge v5, v12, :cond_2

    .line 287
    aget-object v12, v6, v5

    .line 288
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 289
    aget-object v14, v6, v5

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v14, v0, 0x1

    const-wide v15, 0x7fffffffffffffffL

    int-to-long v7, v9

    .line 291
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v17

    add-long v7, v7, v17

    long-to-int v7, v7

    .line 292
    invoke-virtual {v13, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v8, 0x2d

    .line 293
    invoke-virtual {v13, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    invoke-virtual {v13, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v8, v10

    if-gez v0, :cond_0

    move-wide v10, v8

    :cond_0
    :goto_1
    move v9, v7

    move v0, v14

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 301
    :try_start_2
    sget-object v8, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to extract start time from file : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-wide v15, 0x7fffffffffffffffL

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-wide v15, 0x7fffffffffffffffL

    cmp-long v3, v10, v15

    if-eqz v3, :cond_3

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Earliest data time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 310
    :cond_3
    const-string v3, "Failed to parse earliest data time!!!"

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# files : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total data size (B) : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    iget-object v0, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_4
    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    throw v0
.end method

.method public read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    new-instance v2, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;

    invoke-direct {v2, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;-><init>(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V

    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 249
    throw p1
.end method

.method public write([B)V
    .locals 4

    if-eqz p1, :cond_0

    .line 223
    array-length v0, p1

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 226
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    new-instance v2, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>([BLcom/android/server/powerstats/PowerStatsDataStorage-IA;)V

    .line 228
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;

    invoke-static {v2}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->-$$Nest$mtoByteArray(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;-><init>([B)V

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 230
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    :try_start_1
    sget-object v0, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write to on-device storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    throw p1

    :cond_0
    :goto_1
    return-void
.end method
