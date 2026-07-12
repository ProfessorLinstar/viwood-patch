.class public Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;
.super Ljava/lang/Object;
.source "LegacyPermissionManagerService.java"

# interfaces
.implements Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;


# direct methods
.method public static synthetic $r8$lambda$ulgQS7HHKIrymr0crweorZLwxHo(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;ILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 2

    .line 342
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 343
    invoke-interface {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)V

    return-void
.end method


# virtual methods
.method public checkSoundTriggerRecordAudioPermissionForDataDelivery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 415
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 420
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/AppOpsManager;

    const/16 v2, 0x78

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public grantDefaultPermissions(I)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissions(I)V

    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V

    return-void
.end method

.method public resetRuntimePermissions()V
    .locals 6

    .line 323
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "resetRuntimePermissions"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 336
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 337
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 338
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 339
    new-instance v5, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v4}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;I)V

    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->scheduleReadDefaultPermissionExceptions()V

    return-void
.end method

.method public setDialerAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setDialerAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public setLocationPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setLocationPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public setSmsAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSmsAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V

    return-void
.end method

.method public setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->-$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method
