.class public abstract Lcom/android/server/SystemClockTime;
.super Ljava/lang/Object;
.source "SystemClockTime.java"


# static fields
.field public static final sNativeData:J

.field public static sTimeConfidence:I

.field public static final sTimeDebugLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    sput-object v0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 81
    sput v2, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    .line 83
    invoke-static {}, Lcom/android/server/SystemClockTime;->init()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/SystemClockTime;->sNativeData:J

    return-void
.end method

.method public static addDebugLogEntry(Ljava/lang/String;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 169
    sget-object v0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static getCurrentTimeMillis()J
    .locals 2

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeConfidence()I
    .locals 2

    .line 151
    const-class v0, Lcom/android/server/SystemClockTime;

    monitor-enter v0

    .line 152
    :try_start_0
    sget v1, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native init()J
.end method

.method public static initializeIfRequired()V
    .locals 6

    .line 95
    const-string/jumbo v0, "ro.build.date.utc"

    const-wide/16 v1, -0x1

    .line 96
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 97
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sget-wide v4, Landroid/os/Build;->TIME:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    .line 95
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    .line 98
    invoke-static {}, Lcom/android/server/SystemClockTime;->getCurrentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current time only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", advancing to build time "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, "SystemClockTime"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 103
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/SystemClockTime;->setTimeAndConfidence(JILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setConfidence(ILjava/lang/String;)V
    .locals 1

    .line 134
    const-class v0, Lcom/android/server/SystemClockTime;

    monitor-enter v0

    .line 135
    :try_start_0
    sput p0, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    .line 136
    sget-object p0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static native setTime(JJ)I
.end method

.method public static setTimeAndConfidence(JILjava/lang/String;)V
    .locals 3

    .line 118
    const-class v0, Lcom/android/server/SystemClockTime;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-wide v1, Lcom/android/server/SystemClockTime;->sNativeData:J

    invoke-static {v1, v2, p0, p1}, Lcom/android/server/SystemClockTime;->setTime(JJ)I

    .line 120
    sput p2, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    .line 121
    sget-object p0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
