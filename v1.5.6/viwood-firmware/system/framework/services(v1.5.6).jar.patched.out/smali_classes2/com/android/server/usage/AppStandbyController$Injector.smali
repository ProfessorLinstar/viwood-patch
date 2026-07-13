.class public Lcom/android/server/usage/AppStandbyController$Injector;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# instance fields
.field public mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

.field public mAutoRestrictedBucketDelayMs:J

.field public mBatteryManager:Landroid/os/BatteryManager;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBootPhase:I

.field public final mContext:Landroid/content/Context;

.field public mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

.field public mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mLooper:Landroid/os/Looper;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mPowerWhitelistedApps:Landroid/util/ArraySet;

.field public mWellbeingApp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 2674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x36ee80

    .line 2665
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 2670
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 2672
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    .line 2675
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 2676
    iput-object p2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 2879
    const-string v0, "mPowerWhitelistedApps=["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2880
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 2882
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2883
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2884
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2886
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2887
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    .line 2886
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public elapsedRealtime()J
    .locals 2

    .line 2726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveNetworkScorer()Ljava/lang/String;
    .locals 1

    .line 2836
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "network_score"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkScoreManager;

    .line 2838
    invoke-virtual {p0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .locals 0

    .line 2757
    const-string p0, "appops"

    .line 2758
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 2757
    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p0

    return-object p0
.end method

.method public getAutoRestrictedBucketDelayMs()J
    .locals 2

    .line 2801
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    return-wide v0
.end method

.method public getBootPhase()I
    .locals 0

    .line 2717
    iget p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 2680
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDataSystemDirectory()Ljava/io/File;
    .locals 0

    .line 2792
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public varargs getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .locals 0

    .line 2848
    const-string p0, "app_standby"

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p0

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 2684
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 2811
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getRunningUserIds()[I
    .locals 0

    .line 2823
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getValidCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;
    .locals 3

    .line 2857
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2858
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-ltz v0, :cond_1

    if-eqz v1, :cond_1

    .line 2861
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 2863
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/CrossProfileAppsInternal;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2869
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/CrossProfileAppsInternal;->getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    if-nez v1, :cond_2

    .line 2865
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null package retrieved for UID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppStandbyController"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public isAppIdleEnabled()Z
    .locals 4

    .line 2734
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2736
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_standby_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 2738
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z
    .locals 0

    .line 2843
    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCharging()Z
    .locals 0

    .line 2744
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {p0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result p0

    return p0
.end method

.method public isDefaultDisplayOn()Z
    .locals 2

    .line 2827
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 2828
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isDeviceIdleMode()Z
    .locals 0

    .line 2853
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    return p0
.end method

.method public isNonIdleWhitelisted(Ljava/lang/String;)Z
    .locals 2

    .line 2748
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2751
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2752
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2753
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPackageEphemeral(ILjava/lang/String;)Z
    .locals 0

    .line 2815
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackageInstalled(Ljava/lang/String;II)Z
    .locals 2

    .line 2819
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWellbeingPackage(Ljava/lang/String;)Z
    .locals 0

    .line 2766
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 0

    .line 2805
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz p0, :cond_0

    .line 2806
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 2689
    const-string v0, "deviceidle"

    .line 2690
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2689
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 2691
    const-string v0, "batterystats"

    .line 2692
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2691
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2693
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2694
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2696
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 2697
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    .line 2698
    const-class v0, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/CrossProfileAppsInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 2700
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 2702
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 2703
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2704
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-wide/32 v0, 0x2932e00

    .line 2705
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 2710
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2711
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    .line 2713
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    return-void
.end method

.method public registerDeviceConfigPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 1

    .line 2874
    const-string p0, "app_standby"

    .line 2875
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2874
    invoke-static {p0, v0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 0

    .line 2832
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public shouldGetExactAlarmBucketElevation(Ljava/lang/String;I)Z
    .locals 0

    .line 2770
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/AlarmManagerInternal;->shouldGetBucketElevation(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updatePowerWhitelistCache()V
    .locals 6

    .line 2776
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 2777
    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    .line 2778
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2779
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 2780
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 2782
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2784
    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 2787
    const-string v0, "AppStandbyController"

    const-string v1, "Failed to get power whitelist"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
