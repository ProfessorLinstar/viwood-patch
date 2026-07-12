.class public Lcom/android/server/location/LocationManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LocationManagerService.java"


# instance fields
.field public final mService:Lcom/android/server/location/LocationManagerService;

.field public final mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

.field public final mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 194
    new-instance v1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    invoke-direct {v1, p1, v0}, Lcom/android/server/location/LocationManagerService$SystemInjector;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/SystemUserInfoHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 195
    new-instance v0, Lcom/android/server/location/LocationManagerService;

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/LocationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$SystemInjector;->onSystemReady()V

    .line 213
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->onSystemReady()V

    return-void

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 217
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->onSystemThirdPartyAppsCanStart()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 200
    const-string v0, "location"

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 203
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 205
    invoke-static {}, Landroid/location/LocationManager;->disableLocalLocationEnabledCaches()V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->onUserStarted(I)V

    .line 226
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->-$$Nest$mlogLocationEnabledState(Lcom/android/server/location/LocationManagerService;)V

    .line 227
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0}, Lcom/android/server/location/LocationManagerService;->-$$Nest$mlogEmergencyState(Lcom/android/server/location/LocationManagerService;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->onUserStopped(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 233
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->onCurrentUserChanged(II)V

    return-void
.end method
