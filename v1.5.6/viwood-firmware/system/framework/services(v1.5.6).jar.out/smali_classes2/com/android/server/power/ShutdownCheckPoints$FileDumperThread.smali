.class public final Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;
.super Ljava/lang/Thread;
.source "ShutdownCheckPoints.java"


# instance fields
.field public final mBaseDir:Ljava/io/File;

.field public final mBaseFile:Ljava/io/File;

.field public final mFileCountLimit:I

.field public final mInstance:Lcom/android/server/power/ShutdownCheckPoints;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V
    .locals 0

    .line 356
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    .line 358
    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 359
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    .line 360
    iput p3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    return-void
.end method


# virtual methods
.method public final listCheckPointsFiles()[Ljava/io/File;
    .locals 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;-><init>(Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    .line 399
    invoke-static {}, Lcom/android/server/power/ShutdownCheckPoints;->-$$Nest$sfgetEMPTY_FILE_ARRAY()[Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 401
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method public run()V
    .locals 5

    .line 365
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 367
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 368
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->listCheckPointsFiles()[Ljava/io/File;

    move-result-object v0

    .line 372
    array-length v3, v0

    iget v4, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 374
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 378
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 377
    const-string v2, "%s-%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->writeCheckpoints(Ljava/io/File;)V

    return-void
.end method

.method public final writeCheckpoints(Ljava/io/File;)V
    .locals 5

    .line 406
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 409
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 411
    iget-object v3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v3, v2}, Lcom/android/server/power/ShutdownCheckPoints;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 412
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 413
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    .line 415
    :goto_0
    const-string v3, "ShutdownCheckPoints"

    const-string v4, "Failed to write shutdown checkpoints"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 420
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p1, p0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    return-void
.end method
