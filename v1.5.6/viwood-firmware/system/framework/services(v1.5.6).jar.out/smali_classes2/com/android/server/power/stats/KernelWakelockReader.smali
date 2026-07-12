.class public Lcom/android/server/power/stats/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field public static final PROC_WAKELOCKS_FORMAT:[I

.field public static final WAKEUP_SOURCES_FORMAT:[I

.field public static sKernelWakelockUpdateVersion:I


# instance fields
.field public mKernelWakelockBuffer:[B

.field public final mProcWakelocksData:[J

.field public final mProcWakelocksName:[Ljava/lang/String;

.field public mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/power/stats/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    .line 55
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/power/stats/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x2009
        0x9
        0x2009
    .end array-data

    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x2109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksData:[J

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    const v0, 0x8000

    .line 71
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    return-void
.end method


# virtual methods
.method public final getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    const/4 v1, 0x0

    const-string v2, "KernelWakelockReader"

    if-nez v0, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/KernelWakelockReader;->waitForSuspendControlService()Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    const-string p1, "Required service suspend_control not available"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 195
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    invoke-interface {v0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object v0

    .line 196
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    .line 198
    const-string p1, "Failed to obtain wakelock stats from ISuspendControlService"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public parseProcWakelocks([BIZLcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v9, p4

    const/4 v10, 0x0

    move v2, v10

    :goto_0
    const/16 v11, 0xa

    if-ge v2, v0, :cond_0

    .line 247
    aget-byte v3, p1, v2

    if-eq v3, v11, :cond_0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x1

    add-int/2addr v2, v12

    .line 250
    monitor-enter p0

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_b

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_1

    .line 253
    :try_start_0
    aget-byte v2, p1, v4

    if-eq v2, v11, :cond_1

    if-eqz v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-le v4, v2, :cond_2

    goto/16 :goto_9

    .line 261
    :cond_2
    iget-object v6, v1, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 262
    iget-object v7, v1, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksData:[J

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_4

    .line 267
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    const/16 v5, 0x3f

    aput-byte v5, p1, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    .line 270
    sget-object v2, Lcom/android/server/power/stats/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    :goto_4
    move-object v5, v2

    goto :goto_5

    .line 271
    :cond_5
    sget-object v2, Lcom/android/server/power/stats/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    goto :goto_4

    :goto_5
    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 269
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v5

    .line 274
    aget-object v6, v6, v10

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 275
    aget-wide v13, v7, v12

    long-to-int v8, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    const-wide/16 v15, 0x3e8

    if-eqz p3, :cond_6

    .line 279
    aget-wide v17, v7, v14

    mul-long v17, v17, v15

    .line 280
    aget-wide v13, v7, v13

    mul-long/2addr v13, v15

    :goto_6
    move-wide/from16 v19, v17

    move-wide/from16 v17, v13

    goto :goto_7

    .line 283
    :cond_6
    aget-wide v17, v7, v14

    const-wide/16 v19, 0x1f4

    add-long v17, v17, v19

    div-long v17, v17, v15

    .line 284
    aget-wide v13, v7, v13

    add-long v13, v13, v19

    div-long/2addr v13, v15

    goto :goto_6

    :goto_7
    if-eqz v5, :cond_9

    .line 287
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 288
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 289
    new-instance v15, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    sget v21, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    move/from16 v16, v8

    invoke-direct/range {v15 .. v21}, Lcom/android/server/power/stats/KernelWakelockStats$Entry;-><init>(IJJI)V

    invoke-virtual {v9, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    move v3, v8

    move-wide/from16 v13, v17

    move-wide/from16 v7, v19

    .line 292
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 293
    iget v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    sget v15, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v6, v15, :cond_8

    .line 294
    iget v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 295
    iget-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    add-long/2addr v10, v13

    iput-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 296
    iput-wide v7, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    goto :goto_8

    .line 298
    :cond_8
    iput v3, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 299
    iput-wide v13, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 300
    iput-wide v7, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    .line 301
    iput v15, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_9
    if-nez v5, :cond_a

    .line 306
    :try_start_1
    const-string v5, "KernelWakelockReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse proc line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    sub-int v10, v4, v3

    invoke-direct {v8, v2, v3, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 309
    :catch_0
    :try_start_2
    const-string v3, "KernelWakelockReader"

    const-string v5, "Failed to parse proc line!"

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_8
    add-int/lit8 v3, v4, 0x1

    move v2, v4

    const/4 v10, 0x0

    const/16 v11, 0xa

    goto/16 :goto_1

    .line 315
    :cond_b
    :goto_9
    monitor-exit p0

    return-object v9

    .line 316
    :goto_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public readKernelWakelockStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 10

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/wakeup"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 83
    const-class v0, Lcom/android/server/power/stats/KernelWakelockReader;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object v2

    if-nez v2, :cond_0

    .line 87
    const-string p0, "KernelWakelockReader"

    const-string p1, "Failed to get wakelock stats from SystemSuspend"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 91
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 98
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 102
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/wakelocks"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v6, v2

    move v7, v6

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto/16 :goto_6

    .line 106
    :catch_1
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/d/wakeup_sources"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    move v7, v2

    .line 116
    :goto_1
    :try_start_3
    iget-object v8, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v9, v8

    sub-int/2addr v9, v7

    invoke-virtual {v5, v8, v7, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_2

    add-int/2addr v7, v8

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x64

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    .line 131
    const-string v3, "KernelWakelockReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading wakelock stats took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lez v7, :cond_6

    .line 135
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v0, v0

    if-lt v7, v0, :cond_4

    .line 136
    const-string v0, "KernelWakelockReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kernel wake locks exceeded mKernelWakelockBuffer size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    if-ge v2, v7, :cond_6

    .line 141
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_5

    move v7, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 149
    :cond_6
    :goto_3
    const-class v1, Lcom/android/server/power/stats/KernelWakelockReader;

    monitor-enter v1

    .line 150
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object v0

    if-nez v0, :cond_7

    .line 153
    const-string v0, "KernelWakelockReader"

    const-string v2, "Failed to get Native wakelock stats from SystemSuspend"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    .line 156
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    invoke-virtual {p0, v0, v7, v6, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 158
    :goto_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 109
    :catch_2
    :try_start_5
    const-string p0, "KernelWakelockReader"

    const-string/jumbo p1, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    .line 123
    :goto_6
    :try_start_6
    const-string p1, "KernelWakelockReader"

    const-string v2, "failed to read kernel wakelocks"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 126
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_7
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 127
    throw p0
.end method

.method public removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 2

    .line 338
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 339
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    iget v0, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    sget v1, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v0, v1, :cond_0

    .line 341
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 0

    .line 326
    sget p0, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 327
    iput p0, p1, Lcom/android/server/power/stats/KernelWakelockStats;->kernelWakelockVersion:I

    return-object p1
.end method

.method public updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 213
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 214
    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    if-nez v5, :cond_1

    .line 215
    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    new-instance v10, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    iget-wide v11, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v11, v11

    iget-wide v12, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v12, v8

    .line 217
    iget-boolean v14, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    if-eqz v14, :cond_0

    iget-wide v6, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    mul-long/2addr v6, v8

    :cond_0
    move-wide v14, v6

    sget v16, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct/range {v10 .. v16}, Lcom/android/server/power/stats/KernelWakelockStats$Entry;-><init>(IJJI)V

    .line 215
    invoke-virtual {v1, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    :cond_1
    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 221
    iget-wide v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v10, v10

    iput v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 223
    iget-wide v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v10, v8

    iput-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 224
    iget-boolean v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    if-eqz v10, :cond_2

    iget-wide v6, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    mul-long/2addr v6, v8

    :cond_2
    iput-wide v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    .line 225
    sget v4, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v4, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final waitForSuspendControlService()Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    .line 169
    const-string/jumbo v2, "suspend_control_internal"

    if-ge v0, v1, :cond_1

    .line 171
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    new-instance p0, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {p0, v2}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
