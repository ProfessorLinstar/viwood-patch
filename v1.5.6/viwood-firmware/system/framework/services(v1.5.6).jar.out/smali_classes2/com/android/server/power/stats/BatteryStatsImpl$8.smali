.class public Lcom/android/server/power/stats/BatteryStatsImpl$8;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic val$initialTimeMs:J

.field public final synthetic val$memStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;J)V
    .locals 0

    .line 11631
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->val$memStream:Ljava/io/ByteArrayOutputStream;

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->val$initialTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 11634
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 11635
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 11638
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 11639
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->val$memStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 11640
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 11641
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 11642
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmFrameworkStatsLogger(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    move-result-object v4

    const-string v5, "batterystats-daily"

    iget-wide v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->val$initialTimeMs:J

    .line 11643
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long/2addr v6, v1

    .line 11642
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11645
    :try_start_2
    const-string v2, "BatteryStats"

    const-string v4, "Error writing battery daily items"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11647
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$8;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 11649
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
