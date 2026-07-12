.class public Lcom/android/server/powerstats/PowerStatsService;
.super Lcom/android/server/SystemService;
.source "PowerStatsService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerStatsService"


# instance fields
.field public mBatteryTrigger:Lcom/android/server/powerstats/BatteryTrigger;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public mContext:Landroid/content/Context;

.field public mDataStoragePath:Ljava/io/File;

.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field public final mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

.field public mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

.field public mEnergyMeters:[Landroid/hardware/power/stats/Channel;

.field public mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

.field public mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

.field public mLooper:Landroid/os/Looper;

.field public mPowerMonitorApiEnabled:Z

.field public mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

.field public volatile mPowerMonitors:[Landroid/os/PowerMonitor;

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

.field public mPullAtomCallback:Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

.field public final mService:Landroid/os/IBinder;

.field public mTimerTrigger:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/powerstats/PowerStatsService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfig(Lcom/android/server/powerstats/PowerStatsService;)Landroid/provider/DeviceConfigInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEnergyConsumedAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumedAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStateResidencyAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->getStateResidencyAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadEnergyMeterAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->readEnergyMeterAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 413
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V
    .locals 2

    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;-><init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService-IA;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    .line 119
    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 122
    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    .line 216
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$1;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 419
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    .line 420
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 421
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mClock:Lcom/android/internal/os/Clock;

    .line 422
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->getDeviceConfig()Landroid/provider/DeviceConfigInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 390
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    monitor-exit p0

    return-object v0

    .line 391
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I
    .locals 5

    .line 854
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v3, p1, v1

    .line 855
    iget-object v3, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v3}, Landroid/os/PowerMonitor;->getType()I

    move-result v3

    if-ne v3, p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 864
    :cond_2
    new-array p0, v2, [I

    .line 866
    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v0, v1, :cond_4

    aget-object v3, p1, v0

    .line 867
    iget-object v4, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v4}, Landroid/os/PowerMonitor;->getType()I

    move-result v4

    if-ne v4, p2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 868
    iget v3, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    aput v3, p0, v2

    move v2, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public final ensurePowerMonitors()V
    .locals 13

    .line 595
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    if-eqz v0, :cond_0

    return-void

    .line 599
    :cond_0
    monitor-enter p0

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    if-eqz v0, :cond_1

    .line 601
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    if-nez v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createIntervalRandomNoiseGenerator()Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    .line 608
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 609
    new-array v0, v1, [Landroid/os/PowerMonitor;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 610
    new-array v0, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 611
    new-array v0, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 612
    monitor-exit p0

    return-void

    .line 615
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 620
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 622
    array-length v5, v3

    move v6, v1

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v8, v3, v6

    .line 623
    new-instance v9, Landroid/os/PowerMonitor;

    add-int/lit8 v10, v7, 0x1

    .line 625
    invoke-virtual {p0, v8}, Lcom/android/server/powerstats/PowerStatsService;->getChannelName(Landroid/hardware/power/stats/Channel;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v9, v7, v12, v11}, Landroid/os/PowerMonitor;-><init>(IILjava/lang/String;)V

    .line 626
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iget v8, v8, Landroid/hardware/power/stats/Channel;->id:I

    invoke-direct {v7, v9, v8, v4}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;ILcom/android/server/powerstats/PowerStatsService-IA;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v7, v10

    goto :goto_0

    :cond_4
    move v7, v1

    .line 630
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 632
    array-length v5, v3

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v8, v3, v6

    .line 633
    new-instance v9, Landroid/os/PowerMonitor;

    add-int/lit8 v10, v7, 0x1

    .line 635
    invoke-virtual {p0, v8, v3}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerName(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v7, v1, v11}, Landroid/os/PowerMonitor;-><init>(IILjava/lang/String;)V

    .line 636
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iget v8, v8, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-direct {v7, v9, v8, v4}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;ILcom/android/server/powerstats/PowerStatsService-IA;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v7, v10

    goto :goto_1

    .line 640
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/PowerMonitor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PowerMonitor;

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 641
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 642
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 643
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getChannelName(Landroid/hardware/power/stats/Channel;)Ljava/lang/String;
    .locals 1

    .line 648
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    .line 649
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object p1, p1, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteMeterDataOnBoot()Z
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteMeterDataOnBoot()Z

    move-result p0

    return p0
.end method

.method public getDeleteModelDataOnBoot()Z
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteModelDataOnBoot()Z

    move-result p0

    return p0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteResidencyDataOnBoot()Z

    move-result p0

    return p0
.end method

.method public final getEnergyConsumedAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 12

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 489
    array-length v1, p2

    if-nez v1, :cond_0

    .line 491
    array-length v1, p0

    goto :goto_0

    .line 493
    :cond_0
    array-length v1, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 496
    array-length v2, v0

    if-eq v1, v2, :cond_8

    .line 498
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    const-string v3, "Requested ids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    array-length v3, p2

    if-nez v3, :cond_2

    .line 501
    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_2
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move v5, v4

    .line 504
    :goto_1
    array-length v6, p2

    const-string v7, ", "

    const-string v8, ")"

    const-string v9, ",name:"

    const-string v10, ",ord:"

    const-string v11, "(type:"

    if-ge v5, v6, :cond_4

    .line 505
    aget v6, p2, v5

    .line 506
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    aget-object v11, p0, v6

    iget-byte v11, v11, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    aget-object v10, p0, v6

    iget v10, v10, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    aget-object v6, p0, v6

    iget-object v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, -0x1

    if-eq v5, v6, :cond_3

    .line 515
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 518
    :cond_4
    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v1, ", Received result ids:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    .line 522
    const-string/jumbo p0, "null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 524
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    array-length v1, v0

    :goto_2
    if-ge v4, v1, :cond_7

    .line 527
    aget-object v3, v0, v4

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    aget-object v5, p0, v3

    iget-byte v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    aget-object v5, p0, v3

    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    aget-object v3, p0, v3

    iget-object v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v4, v3, :cond_6

    .line 537
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 540
    :cond_7
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :goto_3
    sget-object p0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing result from getEnergyConsumedAsync call. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p0

    .line 481
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 1

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 399
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    monitor-exit p0

    return-object v0

    .line 400
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getEnergyConsumerName(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;
    .locals 7

    .line 659
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    iget-byte v0, p1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    packed-switch v0, :pswitch_data_0

    .line 683
    iget-object v0, p1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 686
    :cond_0
    const-string v0, "CONSUMER_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 680
    :pswitch_0
    const-string v0, "CAMERA"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 677
    :pswitch_1
    const-string v0, "WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 674
    :pswitch_2
    const-string v0, "MOBILE_RADIO"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 671
    :pswitch_3
    const-string v0, "GNSS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 668
    :pswitch_4
    const-string v0, "DISPLAY"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 665
    :pswitch_5
    const-string v0, "CPU"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 662
    :pswitch_6
    const-string v0, "BLUETOOTH"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :goto_0
    iget v0, p1, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 693
    array-length v3, p2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, p2, v1

    .line 694
    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    iget-byte v6, p1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v5, v6, :cond_2

    iget v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    const/16 p2, 0x2f

    .line 701
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 1

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 408
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    monitor-exit p0

    return-object v0

    .line 409
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIPowerStatsServiceForTest()Landroid/os/IPowerStatsService;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Landroid/os/IBinder;

    check-cast p0, Landroid/os/IPowerStatsService;

    return-object p0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 2

    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 379
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 381
    :cond_0
    monitor-exit p0

    return-object v0

    .line 382
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPowerMonitorReadingsImpl([ILandroid/os/ResultReceiver;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 723
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->ensurePowerMonitors()V

    .line 726
    iget-object v3, v0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v4, v0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    move/from16 v10, p3

    invoke-virtual {v3, v4, v10}, Lcom/android/server/powerstats/PowerStatsService$Injector;->checkFinePowerMonitorsPermission(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 733
    iget-object v5, v0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    const-wide/16 v6, 0xfa

    goto :goto_0

    .line 736
    :cond_0
    iget-object v5, v0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    const-wide/16 v6, 0x4e20

    .line 741
    :goto_0
    array-length v11, v1

    new-array v12, v11, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    const-wide v8, 0x7fffffffffffffffL

    const/4 v14, 0x0

    .line 742
    :goto_1
    array-length v15, v1

    if-ge v14, v15, :cond_4

    .line 743
    aget v15, v1, v14

    if-ltz v15, :cond_3

    .line 744
    array-length v13, v5

    if-lt v15, v13, :cond_1

    goto :goto_2

    .line 749
    :cond_1
    aget-object v13, v5, v15

    aput-object v13, v12, v14

    .line 750
    aget-object v13, v5, v15

    move-object/from16 v16, v5

    if-eqz v13, :cond_2

    iget-wide v4, v13, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    cmp-long v13, v4, v8

    if-gez v13, :cond_2

    move-wide v8, v4

    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v0, 0x0

    const/4 v15, 0x1

    .line 745
    invoke-virtual {v2, v15, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-eqz v1, :cond_5

    .line 756
    iget-object v1, v0, Lcom/android/server/powerstats/PowerStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 757
    :cond_5
    invoke-virtual {v0, v12}, Lcom/android/server/powerstats/PowerStatsService;->updateEnergyConsumers([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;)V

    .line 758
    invoke-virtual {v0, v12}, Lcom/android/server/powerstats/PowerStatsService;->updateEnergyMeasurements([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;)V

    .line 759
    iget-object v1, v0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    invoke-virtual {v1}, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->refresh()V

    .line 762
    :cond_6
    new-array v1, v11, [J

    .line 763
    new-array v4, v11, [J

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v11, :cond_8

    .line 765
    aget-object v14, v12, v13

    .line 766
    iget-wide v5, v14, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_7

    move-wide/from16 v16, v7

    iget-wide v7, v14, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    cmp-long v9, v7, v16

    if-eqz v9, :cond_7

    move-wide/from16 v16, v5

    .line 768
    iget-object v5, v0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    const-wide/32 v18, 0x989680

    move-object v9, v5

    sub-long v5, v16, v18

    .line 769
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v5, v9

    iget-wide v8, v14, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 768
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->addNoise(JJI)J

    move-result-wide v5

    aput-wide v5, v1, v13

    goto :goto_4

    :cond_7
    move-wide/from16 v16, v5

    .line 786
    aput-wide v16, v1, v13

    .line 788
    :goto_4
    iget-wide v5, v14, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    aput-wide v5, v4, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, p3

    goto :goto_3

    .line 791
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 792
    const-string v5, "energy"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 793
    const-string/jumbo v1, "timestamps"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 794
    const-string v1, "granularity"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 795
    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->getPowerStatsHALWrapperImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getPowerStatsInternal()Landroid/power/PowerStatsInternal;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/powerstats/PowerStatsService$LocalService;-><init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService-IA;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    return-object p0
.end method

.method public final getStateResidencyAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    .line 551
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 553
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public getSupportedPowerMonitorsImpl(Landroid/os/ResultReceiver;)V
    .locals 2

    .line 711
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->ensurePowerMonitors()V

    .line 712
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 713
    const-string/jumbo v1, "monitors"

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    .line 714
    invoke-virtual {p1, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onBootCompleted()V
    .locals 12

    .line 353
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createDataStoragePath()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    .line 358
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 359
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createMeterFilename()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 360
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createMeterCacheFilename()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createModelFilename()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 361
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createModelCacheFilename()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createResidencyFilename()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 362
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createResidencyCacheFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v11

    .line 358
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createPowerStatsLogger(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 363
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createBatteryTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/BatteryTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mBatteryTrigger:Lcom/android/server/powerstats/BatteryTrigger;

    .line 364
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createTimerTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/TimerTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mTimerTrigger:Lcom/android/server/powerstats/TimerTrigger;

    return-void

    .line 366
    :cond_0
    sget-object p0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start PowerStatsService loggers"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->onSystemServicesReady()V

    return-void

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->onBootCompleted()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-class v0, Landroid/power/PowerStatsInternal;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsInternal()Landroid/power/PowerStatsInternal;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 317
    :cond_0
    const-string/jumbo v0, "powerstats"

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createStatsPullerImpl(Landroid/content/Context;Landroid/power/PowerStatsInternal;)Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPullAtomCallback:Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    .line 333
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->startListening()V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->refreshFlags()V

    return-void
.end method

.method public final readEnergyMeterAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    .line 560
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 562
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public refreshFlags()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "power_monitor_api_enabled"

    const/4 v2, 0x1

    const-string v3, "battery_stats"

    invoke-interface {v0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/powerstats/PowerStatsService;->setPowerMonitorApiEnabled(Z)V

    return-void
.end method

.method public final setPowerMonitorApiEnabled(Z)V
    .locals 1

    .line 586
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    if-eq p1, v0, :cond_0

    .line 587
    iput-boolean p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    const/4 p1, 0x0

    .line 588
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 589
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 590
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    :cond_0
    return-void
.end method

.method public final updateEnergyConsumers([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;)V
    .locals 9

    const/4 v0, 0x0

    .line 799
    invoke-virtual {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;->collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_3

    .line 809
    :cond_1
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 810
    iget-object v4, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v4}, Landroid/os/PowerMonitor;->getType()I

    move-result v4

    if-nez v4, :cond_3

    .line 812
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, p0, v5

    .line 813
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    iget v8, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    if-ne v7, v8, :cond_2

    .line 814
    iget-wide v4, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iput-wide v4, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    .line 815
    iget-wide v4, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    iput-wide v4, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 816
    iget-wide v4, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iput-wide v4, v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public final updateEnergyMeasurements([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;)V
    .locals 10

    const/4 v0, 0x1

    .line 825
    invoke-virtual {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;->collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_3

    .line 835
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 836
    iget-object v5, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v5}, Landroid/os/PowerMonitor;->getType()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 838
    array-length v5, p0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, p0, v6

    .line 839
    iget v8, v7, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    iget v9, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    if-ne v8, v9, :cond_2

    .line 840
    iget-wide v5, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iput-wide v5, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    .line 841
    iget-wide v5, v7, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    iput-wide v5, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 842
    iget-wide v5, v7, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    iput-wide v5, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method
