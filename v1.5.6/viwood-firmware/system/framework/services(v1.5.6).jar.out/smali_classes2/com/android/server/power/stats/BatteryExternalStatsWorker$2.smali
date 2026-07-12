.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 461
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
