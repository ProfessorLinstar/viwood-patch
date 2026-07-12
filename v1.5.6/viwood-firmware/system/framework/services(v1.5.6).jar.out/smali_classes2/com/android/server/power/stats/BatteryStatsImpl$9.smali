.class public Lcom/android/server/power/stats/BatteryStatsImpl$9;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic val$initialTimeMs:J

.field public final synthetic val$parcel:Landroid/os/Parcel;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Parcel;J)V
    .locals 0

    .line 14978
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$initialTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 14980
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 14981
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 14984
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 14985
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 14986
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 14987
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 14988
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmFrameworkStatsLogger(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    move-result-object v4

    const-string v5, "batterystats-checkin"

    iget-wide v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$initialTimeMs:J

    .line 14990
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long/2addr v6, v1

    .line 14988
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14997
    :try_start_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 14993
    :try_start_3
    const-string v2, "BatteryStats"

    const-string v4, "Error writing checkin battery statistics"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14995
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14997
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    goto :goto_0

    .line 14999
    :goto_1
    monitor-exit v0

    return-void

    .line 14997
    :goto_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 14998
    throw v1

    .line 14999
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
