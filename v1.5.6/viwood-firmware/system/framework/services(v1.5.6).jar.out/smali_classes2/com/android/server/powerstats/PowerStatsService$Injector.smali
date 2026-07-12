.class Lcom/android/server/powerstats/PowerStatsService$Injector;
.super Ljava/lang/Object;
.source "PowerStatsService.java"


# instance fields
.field public mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFinePowerMonitorsPermission(Landroid/content/Context;I)Z
    .locals 1

    .line 211
    const-string p0, "android.permission.ACCESS_FINE_POWER_MONITORS"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public createBatteryTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/BatteryTrigger;
    .locals 1

    .line 190
    new-instance p0, Lcom/android/server/powerstats/BatteryTrigger;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/powerstats/BatteryTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V

    return-object p0
.end method

.method public createDataStoragePath()Ljava/io/File;
    .locals 2

    .line 136
    new-instance p0, Ljava/io/File;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "powerstats"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public createIntervalRandomNoiseGenerator()Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;
    .locals 2

    .line 207
    new-instance p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-direct {p0, v0, v1}, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;-><init>(D)V

    return-object p0
.end method

.method public createMeterCacheFilename()Ljava/lang/String;
    .locals 0

    .line 153
    const-string/jumbo p0, "meterCache"

    return-object p0
.end method

.method public createMeterFilename()Ljava/lang/String;
    .locals 0

    .line 141
    const-string p0, "log.powerstats.meter.0"

    return-object p0
.end method

.method public createModelCacheFilename()Ljava/lang/String;
    .locals 0

    .line 157
    const-string/jumbo p0, "modelCache"

    return-object p0
.end method

.method public createModelFilename()Ljava/lang/String;
    .locals 0

    .line 145
    const-string p0, "log.powerstats.model.0"

    return-object p0
.end method

.method public createPowerStatsLogger(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)Lcom/android/server/powerstats/PowerStatsLogger;
    .locals 0

    .line 182
    new-instance p0, Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-direct/range {p0 .. p10}, Lcom/android/server/powerstats/PowerStatsLogger;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V

    return-object p0
.end method

.method public createResidencyCacheFilename()Ljava/lang/String;
    .locals 0

    .line 161
    const-string/jumbo p0, "residencyCache"

    return-object p0
.end method

.method public createResidencyFilename()Ljava/lang/String;
    .locals 0

    .line 149
    const-string p0, "log.powerstats.residency.0"

    return-object p0
.end method

.method public createStatsPullerImpl(Landroid/content/Context;Landroid/power/PowerStatsInternal;)Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;
    .locals 0

    .line 199
    new-instance p0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;-><init>(Landroid/content/Context;Landroid/power/PowerStatsInternal;)V

    return-object p0
.end method

.method public createTimerTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/TimerTrigger;
    .locals 1

    .line 194
    new-instance p0, Lcom/android/server/powerstats/TimerTrigger;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/powerstats/TimerTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V

    return-object p0
.end method

.method public getClock()Lcom/android/internal/os/Clock;
    .locals 0

    .line 132
    sget-object p0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    return-object p0
.end method

.method public getDeviceConfig()Landroid/provider/DeviceConfigInterface;
    .locals 0

    .line 203
    sget-object p0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method public getPowerStatsHALWrapperImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 1

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->getPowerStatsHalImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    monitor-exit p0

    return-object v0

    .line 174
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
