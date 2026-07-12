.class public Lcom/android/server/net/watchlist/FileHashCache;
.super Ljava/lang/Object;
.source "FileHashCache.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileHashCache"

.field public static sLoggedWtf:Z = false

.field static sPersistFileName:Ljava/lang/String; = "/data/system/file_hash_cache"

.field public static sSaveDeferredDelayMillis:J


# instance fields
.field public final mEntries:Ljava/util/Map;

.field public mHandler:Landroid/os/Handler;

.field public final mLoadTask:Ljava/lang/Runnable;

.field public final mSaveTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$7iqHSDy1kezFFyodG_K8GRxW5WY(Lcom/android/server/net/watchlist/FileHashCache;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/FileHashCache;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XmzG5s8BLMJYmEt7B99IAGifpm8(Lcom/android/server/net/watchlist/FileHashCache;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/FileHashCache;->lambda$load$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hsCGipkBAfL3pR1io9UD6GCAG9w(Lcom/android/server/net/watchlist/FileHashCache;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/FileHashCache;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/FileHashCache;->sSaveDeferredDelayMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/FileHashCache;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mLoadTask:Ljava/lang/Runnable;

    .line 86
    new-instance v1, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/net/watchlist/FileHashCache;)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/FileHashCache;->mSaveTask:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 161
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static logWtfOnce(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 170
    sget-boolean v0, Lcom/android/server/net/watchlist/FileHashCache;->sLoggedWtf:Z

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/android/server/net/watchlist/FileHashCache;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    .line 172
    sput-boolean p0, Lcom/android/server/net/watchlist/FileHashCache;->sLoggedWtf:Z

    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/android/server/net/watchlist/FileHashCache;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getSha256Hash(Ljava/io/File;)[B
    .locals 5

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/FileHashCache;->getSha256HashFromCache(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 148
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    new-instance v2, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    iget-wide v3, v3, Landroid/system/StructStat;->st_ctime:J

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/net/watchlist/FileHashCache$Entry;-><init>(J[B)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/FileHashCache;->scheduleSave()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 154
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getSha256HashFromCache(Ljava/io/File;)[B
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    sget-object p0, Lcom/android/server/net/watchlist/FileHashCache;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Request from invalid thread"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    if-nez v0, :cond_1

    return-object v1

    .line 117
    :cond_1
    :try_start_0
    iget-wide v2, v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    iget-wide v4, v4, Landroid/system/StructStat;->st_ctime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 126
    iget-object p0, v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 131
    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final synthetic lambda$load$2(Ljava/lang/String;)V
    .locals 5

    .line 194
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 197
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 198
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    new-instance v4, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    invoke-direct {v4, v2, v3, v0}, Lcom/android/server/net/watchlist/FileHashCache$Entry;-><init>(J[B)V

    invoke-interface {p0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/server/net/watchlist/FileHashCache;->logWtfOnce(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic lambda$new$0()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/FileHashCache;->load()V

    return-void
.end method

.method public final synthetic lambda$new$1()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/FileHashCache;->save()V

    return-void
.end method

.method public final load()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 182
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/net/watchlist/FileHashCache;->sPersistFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 190
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/watchlist/FileHashCache;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-static {v2}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 212
    :goto_0
    :try_start_2
    sget-object v0, Lcom/android/server/net/watchlist/FileHashCache;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read storage file"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    throw p0
.end method

.method public final save()V
    .locals 6

    .line 224
    const-string v0, ","

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    const/4 v1, 0x0

    .line 227
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lcom/android/server/net/watchlist/FileHashCache;->sPersistFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    iget-wide v4, v4, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    iget-object v1, v1, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    .line 240
    :cond_0
    invoke-static {v2}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 238
    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/net/watchlist/FileHashCache;->TAG:Ljava/lang/String;

    const-string v2, "Failed to save."

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    throw p0
.end method

.method public final scheduleSave()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/watchlist/FileHashCache;->mSaveTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mSaveTask:Ljava/lang/Runnable;

    sget-wide v1, Lcom/android/server/net/watchlist/FileHashCache;->sSaveDeferredDelayMillis:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
