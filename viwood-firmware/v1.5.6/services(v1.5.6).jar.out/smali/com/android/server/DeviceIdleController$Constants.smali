.class public final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public FLEX_TIME_SHORT:J

.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

.field public LIGHT_IDLE_INCREASE_LINEARLY:Z

.field public LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

.field public LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public MOTION_INACTIVE_TIMEOUT_FLEX:J

.field public NOTIFICATION_ALLOWLIST_DURATION_MS:J

.field public QUICK_DOZE_DELAY_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public USE_MODE_MANAGER:Z

.field public USE_WINDOW_ALARMS:Z

.field public WAIT_FOR_UNLOCK:Z

.field public mDefaultFlexTimeShort:J

.field public mDefaultIdleAfterInactiveTimeout:J

.field public mDefaultIdleFactor:F

.field public mDefaultIdlePendingFactor:F

.field public mDefaultIdlePendingTimeout:J

.field public mDefaultIdleTimeout:J

.field public mDefaultInactiveTimeout:J

.field public mDefaultLightIdleAfterInactiveTimeout:J

.field public mDefaultLightIdleFactor:F

.field public mDefaultLightIdleFlexLinearIncreaseFactorMs:J

.field public mDefaultLightIdleIncreaseLinearly:Z

.field public mDefaultLightIdleLinearIncreaseFactorMs:J

.field public mDefaultLightIdleMaintenanceMaxBudget:J

.field public mDefaultLightIdleMaintenanceMinBudget:J

.field public mDefaultLightIdleTimeout:J

.field public mDefaultLightIdleTimeoutInitialFlex:J

.field public mDefaultLightIdleTimeoutMaxFlex:J

.field public mDefaultLightMaxIdleTimeout:J

.field public mDefaultLocatingTimeout:J

.field public mDefaultLocationAccuracy:F

.field public mDefaultMaxIdlePendingTimeout:J

.field public mDefaultMaxIdleTimeout:J

.field public mDefaultMaxTempAppAllowlistDurationMs:J

.field public mDefaultMinDeepMaintenanceTime:J

.field public mDefaultMinLightMaintenanceTime:J

.field public mDefaultMinTimeToAlarm:J

.field public mDefaultMmsTempAppAllowlistDurationMs:J

.field public mDefaultMotionInactiveTimeout:J

.field public mDefaultMotionInactiveTimeoutFlex:J

.field public mDefaultNotificationAllowlistDurationMs:J

.field public mDefaultQuickDozeDelayTimeout:J

.field public mDefaultSensingTimeout:J

.field public mDefaultSmsTempAppAllowlistDurationMs:J

.field public mDefaultUseModeManager:Z

.field public mDefaultUseWindowAlarms:Z

.field public mDefaultWaitForUnlock:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSmallBatteryDevice:Z

.field public final mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1435
    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    move-object/from16 v1, p2

    .line 1436
    invoke-direct {v0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/32 v3, 0xea60

    .line 1090
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    const-wide/32 v5, 0x3a980

    .line 1092
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    const-wide/32 v7, 0x493e0

    .line 1094
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 1096
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    const-wide/32 v9, 0xdbba0

    .line 1098
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    const/high16 v1, 0x40000000    # 2.0f

    .line 1100
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 1102
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 1103
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 1105
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 1107
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 1109
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    const-wide/16 v11, 0x1388

    .line 1111
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    const-wide/16 v13, 0x7530

    .line 1113
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    const-wide/32 v11, 0x1b7740

    .line 1115
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 1119
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 1121
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    const/high16 v15, 0x41a00000    # 20.0f

    .line 1123
    iput v15, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    const-wide/32 v9, 0x927c0

    .line 1124
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 1126
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 1128
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 1132
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 1134
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 1136
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 1137
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    const-wide/32 v9, 0x36ee80

    .line 1139
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    const-wide/32 v9, 0x1499700

    .line 1141
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 1143
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 1144
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 1146
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 1147
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    const-wide/16 v9, 0x4e20

    .line 1148
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 1149
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    const/4 v9, 0x1

    .line 1150
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 1151
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    const/4 v10, 0x0

    .line 1152
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 1159
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 1167
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1174
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 1183
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    const-wide/32 v9, 0xdbba0

    .line 1190
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 1197
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 1211
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 1219
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 1227
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 1235
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1244
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 1255
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    const-wide/16 v9, 0x1388

    .line 1266
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 1276
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 1285
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1294
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 1301
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 1309
    iput v15, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    const-wide/32 v5, 0x927c0

    .line 1317
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 1324
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 1332
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1340
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 1346
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    const/high16 v1, 0x40000000    # 2.0f

    .line 1353
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 1361
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    const-wide/32 v5, 0x36ee80

    .line 1368
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    const-wide/32 v5, 0x1499700

    .line 1374
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 1380
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 1387
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 1395
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1401
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-wide/16 v5, 0x4e20

    .line 1407
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1415
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    const/4 v1, 0x1

    .line 1417
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 1423
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    const/4 v1, 0x0

    .line 1428
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 1432
    new-instance v1, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const/16 v5, 0x2c

    invoke-direct {v1, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;-><init>(C)V

    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    .line 1437
    iput-object v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 1438
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->initDefault()V

    .line 1439
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v5, :cond_0

    .line 1441
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1442
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1445
    :cond_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1444
    const-string v4, "device_idle"

    invoke-static {v4, v3, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1446
    const-string v3, "device_idle_constants"

    .line 1447
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    .line 1446
    invoke-virtual {v2, v3, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1450
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    .line 1451
    new-array v2, v5, [Ljava/lang/String;

    .line 1452
    invoke-static {v4, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 1451
    invoke-virtual {v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->setDeviceConfigProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 1453
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1763
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flex_time_short"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1767
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1769
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    const-string/jumbo v2, "light_after_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1772
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1773
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1775
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1776
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1777
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1779
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_to_initial_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1780
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1781
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1783
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1784
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1785
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1787
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1788
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1789
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1791
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_increase_linearly"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1792
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1793
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1795
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_linear_increase_factor_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1797
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1798
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1800
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_flex_linear_increase_factor_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1802
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1803
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1805
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1806
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1807
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1809
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_min_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1810
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1811
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1813
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_max_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1814
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1815
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1817
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_light_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1819
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1821
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_deep_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1822
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1823
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1825
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1826
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1827
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1829
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sensing_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1831
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1833
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "locating_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1834
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1835
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1837
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "location_accuracy"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1838
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, "m"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1841
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1842
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1843
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1845
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1846
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1847
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1849
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_after_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1851
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1853
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1854
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1855
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1857
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1858
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1859
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1861
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_pending_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1862
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1864
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "quick_doze_delay_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1865
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1866
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1868
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1869
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1870
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1872
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1873
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1874
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1876
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1877
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1879
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_time_to_alarm"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1880
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1881
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1883
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1884
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1885
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1887
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mms_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1888
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1889
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1891
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sms_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1892
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1893
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1895
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notification_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1896
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1897
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1899
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "wait_for_unlock"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1902
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "use_window_alarms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1903
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1905
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "use_mode_manager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1906
    iget-boolean p0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final getTimeout(JJ)J
    .locals 0

    .line 0
    return-wide p1
.end method

.method public final initDefault()V
    .locals 5

    .line 1457
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0170

    .line 1460
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 1459
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    const v1, 0x10e0177

    .line 1462
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    const v1, 0x10e017f

    .line 1466
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 1465
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    const v1, 0x10e017d

    .line 1469
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 1468
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    const v1, 0x10e017e

    .line 1473
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 1472
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    const v1, 0x10e0178

    .line 1476
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    const v1, 0x11102b8

    .line 1478
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    const v1, 0x10e017a

    .line 1480
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    const v1, 0x10e0179

    .line 1484
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    const v1, 0x10e0180

    .line 1489
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 1488
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    const v1, 0x10e017c

    .line 1491
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    const v1, 0x10e017b

    .line 1494
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    const v1, 0x10e0187

    .line 1497
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    const v1, 0x10e0186

    .line 1500
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    const v1, 0x10e0176

    .line 1504
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 1503
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    const v1, 0x10e018e

    .line 1507
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 1506
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    const v1, 0x10e0181

    .line 1510
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 1509
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    const v1, 0x10e0182

    .line 1512
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    const v1, 0x10e018b

    .line 1514
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    const v1, 0x10e018a

    .line 1517
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    const v1, 0x10e0171

    .line 1520
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    const v1, 0x10e0174

    .line 1524
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 1523
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    const v1, 0x10e0183

    .line 1526
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    const v1, 0x10e0173

    .line 1529
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    const v1, 0x10e018d

    .line 1531
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    const v1, 0x10e0175

    .line 1535
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 1534
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    const v1, 0x10e0184

    .line 1538
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 1537
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    const v1, 0x10e0172

    .line 1540
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    const v1, 0x10e0188

    .line 1542
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    const v1, 0x10e0185

    .line 1545
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    const v1, 0x10e0189

    .line 1547
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    const v1, 0x10e018f

    .line 1549
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    const v1, 0x10e018c

    .line 1551
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    const v1, 0x11102bb

    .line 1553
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    const v1, 0x11102ba

    .line 1555
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    const v1, 0x11102b9

    .line 1557
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 1560
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 1561
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1562
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 1563
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 1564
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 1565
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 1566
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 1567
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 1568
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 1569
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1570
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 1571
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 1572
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 1573
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 1574
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1575
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 1576
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 1577
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 1578
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 1579
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 1580
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1581
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 1582
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 1583
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 1584
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 1585
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 1586
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 1587
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 1588
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 1589
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1590
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1591
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1592
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 1593
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 1594
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 1595
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1604
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 1605
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 1607
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->setDeviceConfigProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 1626
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateConstantsLocked()V
    .locals 6

    .line 1630
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_0

    return-void

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "flex_time_short"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 1634
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_after_inactive_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1638
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 1641
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_to_initial_flex"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 1645
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_max_idle_to_flex"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 1649
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 1652
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_increase_linearly"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 1656
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_linear_increase_factor_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 1660
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_flex_linear_increase_factor_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 1664
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_max_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1667
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_maintenance_min_budget"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 1671
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_maintenance_max_budget"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 1675
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "min_light_maintenance_time"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 1679
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "min_deep_maintenance_time"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 1683
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    const-wide/32 v1, 0xea60

    if-eqz v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    .line 1685
    :cond_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 1686
    :goto_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v5, "inactive_to"

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1689
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "sensing_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 1692
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "locating_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 1695
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "location_accuracy"

    iget v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    invoke-virtual {v0, v3, v4}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 1698
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "motion_inactive_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 1701
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "motion_inactive_to_flex"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 1705
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1707
    :cond_2
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 1708
    :goto_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v3, "idle_after_inactive_to"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1712
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "idle_pending_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 1715
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "max_idle_pending_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 1718
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "idle_pending_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 1721
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "quick_doze_delay_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 1724
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 1727
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "max_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 1730
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "idle_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 1733
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "min_time_to_alarm"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 1736
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "max_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1740
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "mms_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1744
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "sms_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1748
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "notification_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 1752
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "wait_for_unlock"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 1755
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "use_window_alarms"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 1758
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "use_mode_manager"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    return-void
.end method

.method public final updateSettingsConstantLocked()V
    .locals 2

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_idle_constants"

    .line 1613
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1612
    invoke-virtual {v0, p0}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->setSettingsString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1617
    const-string v0, "DeviceIdleController"

    const-string v1, "Bad device idle settings"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
