.class public Lcom/android/server/am/AppRestrictionController$Injector;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

.field public mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

.field public mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

.field public mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field public mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

.field public mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field public mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppStateTracker:Lcom/android/server/AppStateTracker;

.field public final mContext:Landroid/content/Context;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3250
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 3404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 3274
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    .line 3275
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 3277
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 3365
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public getAppBatteryExemptionTracker()Lcom/android/server/am/AppBatteryExemptionTracker;
    .locals 0

    .line 3373
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    return-object p0
.end method

.method public getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;
    .locals 0

    .line 3357
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    return-object p0
.end method

.method public getAppHibernationInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    .locals 1

    .line 3299
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    if-nez v0, :cond_0

    .line 3300
    const-class v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 3303
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    return-object p0
.end method

.method public getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;
    .locals 0

    .line 3361
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    return-object p0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 3285
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    .line 3286
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3288
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getAppRestrictionController()Lcom/android/server/am/AppRestrictionController;
    .locals 0

    .line 3281
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    return-object p0
.end method

.method public getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .locals 1

    .line 3292
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_0

    .line 3293
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 3295
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    return-object p0
.end method

.method public getAppStateTracker()Lcom/android/server/AppStateTracker;
    .locals 1

    .line 3307
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez v0, :cond_0

    .line 3308
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 3310
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 3254
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDataSystemDeDirectory(I)Ljava/io/File;
    .locals 0

    .line 3400
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultHandler()Landroid/os/Handler;
    .locals 0

    .line 3408
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    return-object p0
.end method

.method public getIActivityManager()Landroid/app/IActivityManager;
    .locals 0

    .line 3314
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 3336
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 3337
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3339
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 3332
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 3325
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 3326
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3328
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 1

    .line 3381
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    .line 3383
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 3384
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3386
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    .line 3388
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3391
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRoleManager()Landroid/app/role/RoleManager;
    .locals 2

    .line 3343
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    if-nez v0, :cond_0

    .line 3344
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 3346
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 3350
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 3351
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3353
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public getUidBatteryUsageProvider()Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;
    .locals 0

    .line 3369
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 3318
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 3319
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3321
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public initAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)V
    .locals 3

    .line 3258
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 3259
    new-instance v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppBatteryTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    .line 3260
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppBatteryExemptionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    .line 3261
    new-instance v0, Lcom/android/server/am/AppFGSTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppFGSTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 3262
    new-instance v0, Lcom/android/server/am/AppMediaSessionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppMediaSessionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    .line 3263
    new-instance v0, Lcom/android/server/am/AppPermissionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppPermissionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 3264
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3265
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3266
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3267
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3268
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3269
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppBroadcastEventsTracker;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/AppBroadcastEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3270
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppBindServiceEventsTracker;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/AppBindServiceEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isTest()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleInitTrackers(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 3396
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
