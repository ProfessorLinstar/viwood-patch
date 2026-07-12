.class public final Lcom/android/server/location/LocationManagerService$SystemInjector;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/injector/Injector;


# instance fields
.field public final mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

.field public final mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

.field public final mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

.field public mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

.field public final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

.field public final mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

.field public mSystemReady:Z

.field public final mUserInfoHelper:Lcom/android/server/location/injector/SystemUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/SystemUserInfoHelper;)V
    .locals 1

    .line 1956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1957
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mContext:Landroid/content/Context;

    .line 1959
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/SystemUserInfoHelper;

    .line 1960
    new-instance p2, Lcom/android/server/location/settings/LocationSettings;

    invoke-direct {p2, p1}, Lcom/android/server/location/settings/LocationSettings;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 1961
    new-instance p2, Lcom/android/server/location/injector/SystemAlarmHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemAlarmHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    .line 1962
    new-instance p2, Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 1963
    new-instance v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/AppOpsHelper;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 1965
    new-instance p2, Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 1966
    new-instance p2, Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemAppForegroundHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 1967
    new-instance p2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 1968
    new-instance p2, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 1969
    new-instance p2, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-direct {p2}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 1970
    new-instance p2, Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 1971
    new-instance p2, Lcom/android/server/location/injector/LocationUsageLogger;

    invoke-direct {p2}, Lcom/android/server/location/injector/LocationUsageLogger;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 1972
    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemPackageResetHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

    return-void
.end method


# virtual methods
.method public getAlarmHelper()Lcom/android/server/location/injector/AlarmHelper;
    .locals 0

    .line 2005
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    return-object p0
.end method

.method public getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;
    .locals 0

    .line 2025
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    return-object p0
.end method

.method public getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;
    .locals 0

    .line 2010
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    return-object p0
.end method

.method public declared-synchronized getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;
    .locals 2

    monitor-enter p0

    .line 2050
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-nez v0, :cond_0

    .line 2051
    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/injector/SystemEmergencyHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 2052
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 2053
    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2057
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;
    .locals 0

    .line 2015
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    return-object p0
.end method

.method public getLocationPowerSaveModeHelper()Lcom/android/server/location/injector/LocationPowerSaveModeHelper;
    .locals 0

    .line 2030
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    return-object p0
.end method

.method public getLocationSettings()Lcom/android/server/location/settings/LocationSettings;
    .locals 0

    .line 2000
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    return-object p0
.end method

.method public getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;
    .locals 0

    .line 2062
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    return-object p0
.end method

.method public getPackageResetHelper()Lcom/android/server/location/injector/PackageResetHelper;
    .locals 0

    .line 2067
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

    return-object p0
.end method

.method public getScreenInteractiveHelper()Lcom/android/server/location/injector/ScreenInteractiveHelper;
    .locals 0

    .line 2035
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    return-object p0
.end method

.method public getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;
    .locals 0

    .line 2020
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    return-object p0
.end method

.method public getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;
    .locals 0

    .line 1995
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/SystemUserInfoHelper;

    return-object p0
.end method

.method public declared-synchronized onSystemReady()V
    .locals 1

    monitor-enter p0

    .line 1976
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/SystemUserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->onSystemReady()V

    .line 1977
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemAppOpsHelper;->onSystemReady()V

    .line 1978
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->onSystemReady()V

    .line 1979
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper;->onSystemReady()V

    .line 1980
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->onSystemReady()V

    .line 1981
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->onSystemReady()V

    .line 1982
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->onSystemReady()V

    .line 1983
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->onSystemReady()V

    .line 1984
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onSystemReady()V

    .line 1986
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-eqz v0, :cond_0

    .line 1987
    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1990
    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1991
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
