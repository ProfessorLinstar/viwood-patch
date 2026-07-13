.class public Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# static fields
.field public static final BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1061
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    .line 1062
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 8

    const/16 v0, 0x27e1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1146
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tagId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    .line 1074
    :pswitch_1
    const-string v0, "backstage_power"

    const-string/jumbo v5, "min_consumed_power_threshold"

    .line 1075
    invoke-static {v0, v5, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    .line 1077
    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 1079
    invoke-virtual {v5, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1080
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1081
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1082
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1083
    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 1085
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryUsageStats;

    goto :goto_0

    .line 1096
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 1097
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J

    move-result-wide v0

    .line 1099
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v5, v5, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5

    .line 1100
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v6, v6, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v6

    .line 1101
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 1104
    invoke-virtual {v5, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1105
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1106
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1107
    invoke-virtual {v2, v0, v1, v6, v7}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 1109
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryUsageStats;

    .line 1110
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V

    move-object p0, v0

    .line 1148
    :goto_0
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsProto()[B

    move-result-object v0

    .line 1150
    :try_start_1
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1152
    const-string v1, "BatteryStatsService"

    const-string v2, "Failure close BatteryUsageStats"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    :goto_1
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4

    :catchall_0
    move-exception p0

    .line 1101
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1119
    :cond_0
    const-string p1, "backstage_power"

    const-string/jumbo v0, "min_consumed_power_threshold"

    .line 1120
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    float-to-double v0, p1

    .line 1124
    new-instance p1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 1125
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1126
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1127
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1128
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1130
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$smisBatteryUsageStatsAccumulationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    sget-wide v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J

    .line 1132
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 1135
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryUsageStats;

    .line 1136
    new-instance p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    invoke-direct {v0}, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;-><init>(Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;)V

    .line 1137
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->logStats(Landroid/os/BatteryUsageStats;Ljava/util/List;)I

    move-result p1

    .line 1139
    :try_start_3
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return p1

    :catch_1
    move-exception p0

    .line 1141
    const-string p2, "BatteryStatsService"

    const-string v0, "Failure close BatteryUsageStats"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x277f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
