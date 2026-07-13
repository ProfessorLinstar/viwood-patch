.class public Lcom/android/server/pm/ShortcutBitmapSaver;
.super Ljava/lang/Object;
.source "ShortcutBitmapSaver.java"


# instance fields
.field public final SAVE_WAIT_TIMEOUT_MS:J

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mPendingItems:Ljava/util/Deque;

.field public final mRunnable:Ljava/lang/Runnable;

.field public final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public static synthetic $r8$lambda$0cDwbUuQexB0Dry-KJy6ApKQ1Ic(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 120
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$wKssjE-q5ILUoVR6U1K1OFvMExk(Lcom/android/server/pm/ShortcutBitmapSaver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 9

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 64
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->SAVE_WAIT_TIMEOUT_MS:J

    .line 80
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 109
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    .line 225
    new-instance v0, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutBitmapSaver;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    .line 113
    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    .line 318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending saves: Num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Executor="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 322
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 326
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    const-string v1, "Timed out waiting on saving bitmaps."

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$new$1()V
    .locals 1

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->processPendingItems()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final processPendingItems()Z
    .locals 8

    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 259
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 260
    monitor-exit v2

    return v3

    :catchall_0
    move-exception v3

    goto/16 :goto_1

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 263
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    iget-object v2, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 268
    :try_start_3
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 304
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 305
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 309
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return v5

    .line 278
    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    .line 279
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    .line 278
    invoke-virtual {v4, v6, v2}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    move-result-object v4

    .line 280
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 283
    :try_start_5
    iget-object v3, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 285
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 304
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 305
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 309
    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return v5

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_2
    move-exception v3

    .line 285
    :try_start_7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 286
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 292
    :goto_0
    :try_start_8
    const-string v4, "ShortcutService"

    const-string v6, "Unable to write bitmap to file"

    invoke-static {v4, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_4

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 304
    :cond_4
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 305
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 309
    :cond_5
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return v5

    :catchall_3
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    .line 263
    :goto_1
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_2
    if-eqz v2, :cond_7

    .line 304
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 305
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 309
    :cond_6
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 311
    :cond_7
    throw v1
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    const/4 p0, 0x0

    .line 154
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    const/4 p0, 0x0

    .line 155
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    const p0, 0x8a0c

    .line 158
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void
.end method

.method public saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 5

    .line 165
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 170
    const-string p0, "ShortcutService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing icon: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 180
    :try_start_0
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 181
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 180
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 183
    invoke-static {v1, p2}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/high16 v4, 0x10000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 186
    :try_start_2
    invoke-virtual {p2, p3, p4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 187
    const-string p3, "ShortcutService"

    const-string p4, "Unable to compress bitmap"

    invoke-static {p3, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 189
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 190
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 191
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eq p2, v1, :cond_2

    .line 195
    :try_start_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    .line 202
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/16 p2, 0x808

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 208
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p2

    const/4 p4, 0x5

    if-ne p2, p4, :cond_3

    const/16 p2, 0x200

    .line 209
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 213
    :cond_3
    new-instance p2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[BLcom/android/server/pm/ShortcutBitmapSaver-IA;)V

    .line 214
    iget-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter p1

    .line 215
    :try_start_5
    iget-object p3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {p3, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 216
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 222
    iget-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception p0

    .line 216
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    goto :goto_4

    .line 185
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_4
    if-eq p2, v1, :cond_4

    .line 195
    :try_start_9
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    :cond_4
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 199
    :goto_5
    :try_start_a
    const-string p1, "ShortcutService"

    const-string p2, "Unable to write bitmap to file"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 202
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_6
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 203
    throw p0
.end method

.method public waitForAllSavesLocked()Z
    .locals 4

    .line 118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 120
    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v1

    .line 129
    :catch_0
    const-string p0, "ShortcutService"

    const-string v0, "interrupted"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
