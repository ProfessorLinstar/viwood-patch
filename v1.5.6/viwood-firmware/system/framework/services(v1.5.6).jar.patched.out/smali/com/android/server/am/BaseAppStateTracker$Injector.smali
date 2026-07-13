.class public Lcom/android/server/am/BaseAppStateTracker$Injector;
.super Ljava/lang/Object;
.source "BaseAppStateTracker.java"


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public mContext:Landroid/content/Context;

.field public mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

.field public mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionManager:Landroid/permission/PermissionManager;

.field public mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)I
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object p0
.end method

.method public getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method public getIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method public getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getPermissionManager()Landroid/permission/PermissionManager;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    return-object p0
.end method

.method public getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public getPolicy()Lcom/android/server/am/BaseAppStatePolicy;
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-object p0
.end method

.method public getServiceStartForegroundTimeout()J
    .locals 2

    .line 381
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getServiceStartForegroundTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public onSystemReady()V
    .locals 2

    .line 302
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 303
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 304
    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 305
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    .line 306
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 307
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 308
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 310
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 312
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 313
    const-class v1, Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 314
    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 315
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 316
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 318
    const-string v1, "appops"

    .line 319
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 318
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 320
    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    return-void
.end method

.method public setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-void
.end method
