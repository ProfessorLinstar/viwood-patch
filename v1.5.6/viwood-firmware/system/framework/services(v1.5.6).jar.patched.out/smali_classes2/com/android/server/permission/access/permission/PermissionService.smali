.class public final Lcom/android/server/permission/access/permission/PermissionService;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# static fields
.field public static final BACKGROUND_RATIONALE_CHANGE_ID:J

.field public static final BACKUP_TIMEOUT_MILLIS:J

.field public static final Companion:Lcom/android/server/permission/access/permission/PermissionService$Companion;

.field public static final FULLER_PERMISSIONS:Landroid/util/ArrayMap;

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;


# instance fields
.field public final context:Landroid/content/Context;

.field public final devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

.field public handler:Landroid/os/Handler;

.field public handlerThread:Landroid/os/HandlerThread;

.field public final isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

.field public metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mountedStorageVolumes:Landroid/util/ArraySet;

.field public onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

.field public onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

.field public packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public permissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public platformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;

.field public final storageVolumeLock:Ljava/lang/Object;

.field public final storageVolumePackageNames:Landroid/util/ArrayMap;

.field public systemConfig:Lcom/android/server/SystemConfig;

.field public userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public userManagerService:Lcom/android/server/pm/UserManagerService;

.field public virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->Companion:Lcom/android/server/permission/access/permission/PermissionService$Companion;

    .line 2895
    const-class v0, Lcom/android/server/permission/access/permission/PermissionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    const-wide/32 v0, 0x8c7dff3

    .line 2903
    sput-wide v0, Lcom/android/server/permission/access/permission/PermissionService;->BACKGROUND_RATIONALE_CHANGE_ID:J

    .line 2906
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2907
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2908
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2909
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 2910
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2906
    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 2913
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/collection/ArraySetExtensionsKt;->arraySetOf([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    .line 2923
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 112
    const-string/jumbo v0, "permission"

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 115
    const-string v0, "device-permission"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.DevicePermissionPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 131
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    .line 132
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 134
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    .line 147
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static final synthetic access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->enforcePermissionTreeSize(Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V

    return-void
.end method

.method public static final synthetic access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAndEnforcePermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/content/Context;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getFULLER_PERMISSIONS$cp()Landroid/util/ArrayMap;
    .locals 1

    .line 109
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getLOG_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNOTIFICATIONS_PERMISSIONS$cp()Landroid/util/ArraySet;
    .locals 1

    .line 109
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    return-object v0
.end method

.method public static final synthetic access$getOnPermissionFlagsChangedListener$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getOnPermissionsChangeListeners$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    return-object p0
.end method

.method public static final synthetic access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getService$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/AccessCheckingService;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    return-object p0
.end method

.method public static final synthetic access$isDelayedPermissionBackupFinished$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static final synthetic access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->killUid(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setAppOpPermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V
    .locals 0

    .line 109
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/permission/PermissionService;->setAppOpPermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 0

    .line 109
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/16 p3, 0x2710

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V
    .locals 8

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    and-int/lit8 p6, p8, 0x40

    if-eqz p6, :cond_1

    const/4 p6, 0x0

    move-object v7, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    goto :goto_1

    :cond_1
    move-object v7, p7

    goto :goto_0

    .line 789
    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    if-eqz p2, :cond_3

    .line 1751
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1756
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1757
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    move-object v5, v0

    .line 1759
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1760
    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    .line 1761
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    :cond_2
    return v1

    .line 1750
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V
    .locals 7

    const/4 v0, 0x2

    .line 1779
    invoke-virtual {p0, p2, v0, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1784
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, p4

    .line 1786
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    return-void
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3

    .line 1964
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1965
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    .line 1966
    const-string v2, "addOnPermissionsChangeListener"

    .line 1964
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-nez p0, :cond_0

    const-string/jumbo p0, "onPermissionsChangeListeners"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 14

    .line 371
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 374
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string/jumbo v3, "packageManagerLocal"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0, v3, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v2, :cond_7

    .line 377
    iget v2, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Label must be specified in permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :cond_2
    :goto_0
    new-instance v9, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 382
    iget-object v10, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v10}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 294
    :try_start_1
    invoke-static {v10}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_3
    move-object v4, v2

    .line 295
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v12

    .line 296
    new-instance v13, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v13, v4, v12}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 383
    invoke-static {p0, v13, v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v2

    .line 384
    invoke-static {p0, v13, p1, v2}, Lcom/android/server/permission/access/permission/PermissionService;->access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V

    .line 386
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    iput-object v3, v9, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 42
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 388
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 396
    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v0}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v0

    .line 395
    iput v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 399
    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v4

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 401
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v13, v0, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;Z)V

    .line 297
    invoke-static {v10}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v10, v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v10}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v0, v12}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    monitor-exit v11

    .line 404
    iget-object p0, v9, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v1

    .line 293
    :goto_3
    monitor-exit v11

    throw p0

    .line 375
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Instant apps cannot add permissions"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 374
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 372
    :cond_8
    const-string/jumbo p0, "permissionName cannot be null"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public backupRuntimePermissions(I)[B
    .locals 5

    .line 2034
    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2035
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2036
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "permissionControllerManager"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    .line 2037
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2038
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 2039
    new-instance v4, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;

    invoke-direct {v4, v0}, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2036
    invoke-virtual {p0, v2, v3, v4}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2043
    :try_start_0
    sget-wide v2, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2046
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_2

    .line 2047
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_2

    .line 2048
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2052
    :cond_1
    throw p0

    .line 2049
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final calculatePermissionTreeFootprint(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/permission/Permission;)I
    .locals 5

    .line 458
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    check-cast v2, Ljava/lang/String;

    .line 460
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 33
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10

    .line 604
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    return v2

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v0, v3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    .line 610
    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v6, :cond_3

    return v2

    .line 614
    :cond_3
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p1

    :goto_0
    invoke-direct {v5, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v4, p0

    move-object v8, p2

    move-object v9, p3

    move v7, p4

    .line 614
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 609
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 543
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 544
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v6, -0x1

    if-nez v0, :cond_1

    return v6

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v2, "packageManagerInternal"

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_7

    .line 555
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez p1, :cond_3

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_4

    .line 558
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkUidPermission: PackageState not found for AndroidPackage "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 566
    :cond_4
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v0, v1

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_5

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_5
    invoke-direct {v1, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .line 567
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v7

    :cond_6
    return v6

    :cond_7
    move-object v0, p0

    move-object v4, p2

    .line 576
    invoke-virtual {v0, p1, v4}, Lcom/android/server/permission/access/permission/PermissionService;->isSystemUidPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v7

    :cond_8
    return v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 2094
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 2098
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2100
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    array-length v2, p3

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    aget-object v2, p3, v1

    const-string v3, "-a"

    invoke-static {v2, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 2109
    :cond_2
    aget-object v2, p3, v1

    const-string v3, "--app-id"

    invoke-static {v2, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "."

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    array-length v2, p3

    if-ne v2, v4, :cond_5

    .line 2110
    aget-object p3, p3, v5

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 2111
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, v1

    :goto_0
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2112
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    .line 2113
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2114
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    return-void

    .line 2116
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown app ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2119
    :cond_5
    aget-object v1, p3, v1

    const-string v2, "--package"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    array-length v1, p3

    if-ne v1, v4, :cond_8

    .line 2120
    aget-object p3, p3, v5

    .line 2121
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object p2, v1

    :goto_1
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2122
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz p2, :cond_7

    .line 2124
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    return-void

    .line 2126
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2131
    :cond_8
    const-string p0, "Usage: dumpsys permissionmgr [--app-id <APP_ID>] [--package <PACKAGE_NAME>]"

    .line 2130
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2101
    :cond_9
    :goto_2
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p3

    if-nez p3, :cond_a

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move-object p2, p3

    :goto_3
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2102
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->dumpSystemState(Landroid/util/IndentingPrintWriter;Lcom/android/server/permission/access/AccessState;)V

    .line 2103
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p3

    :goto_4
    if-ge v1, p3, :cond_c

    .line 48
    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_b

    .line 2105
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    invoke-virtual {p0, p1, v0, v4, v3}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    return-void
.end method

.method public final dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 2213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2215
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    .line 45
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v7

    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/UserState;

    .line 2216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2218
    const-string v7, "Permissions:"

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2220
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string v9, ", flags="

    const-string v10, ": granted="

    if-eqz v7, :cond_0

    .line 47
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    .line 48
    invoke-virtual {v7, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    check-cast v13, Ljava/lang/String;

    .line 2224
    sget-object v15, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v5

    .line 2227
    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2225
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2280
    :cond_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2232
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    if-eqz v5, :cond_2

    .line 44
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v7

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v7, :cond_2

    .line 45
    invoke-virtual {v5, v11}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v11}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v12, Ljava/lang/String;

    .line 2236
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permissions (Device "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "):"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 47
    invoke-virtual {v13}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v12

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v12, :cond_1

    .line 48
    invoke-virtual {v13, v14}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 p3, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v15, Ljava/lang/String;

    move/from16 v16, v4

    .line 2239
    sget-object v4, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    move-object/from16 v17, v5

    invoke-virtual {v4, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v5

    .line 2242
    invoke-virtual {v4, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2240
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_3

    :cond_1
    move-object/from16 p3, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 2280
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_2
    move-object/from16 p3, v3

    move/from16 v16, v4

    .line 2248
    const-string v3, "App ops:"

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2250
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string v5, ": mode="

    if-eqz v4, :cond_3

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_3

    .line 48
    invoke-virtual {v4, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    check-cast v10, Ljava/lang/String;

    .line 2252
    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2280
    :cond_3
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz v2, :cond_5

    .line 44
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v4

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v4, :cond_5

    .line 45
    invoke-virtual {v2, v7}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2257
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2259
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "version="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2260
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2262
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v9, :cond_4

    .line 47
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_4

    .line 48
    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    check-cast v12, Ljava/lang/String;

    .line 2266
    invoke-static {v13}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v13

    .line 2267
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2280
    :cond_4
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2280
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 2280
    :cond_5
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    goto/16 :goto_0

    .line 2280
    :cond_6
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpSystemState(Landroid/util/IndentingPrintWriter;Lcom/android/server/permission/access/AccessState;)V
    .locals 12

    .line 2173
    const-string p0, "Permissions:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2175
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, ", appId="

    if-ge v2, v0, :cond_0

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    check-cast v4, Ljava/lang/String;

    .line 45
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2176
    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2179
    sget-object v7, Lcom/android/server/permission/access/permission/Permission;->Companion:Lcom/android/server/permission/access/permission/Permission$Companion;

    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/permission/access/permission/Permission$Companion;->typeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2181
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v9

    .line 2182
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "toString(...)"

    invoke-static {v10, v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": type="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", packageName="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gids="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", protectionLevel=["

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], flags="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2177
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2280
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2189
    const-string p0, "Permission groups:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2191
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    move v2, v1

    :goto_1
    const-string v4, ": packageName="

    if-ge v2, v0, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionGroupInfo;

    check-cast v5, Ljava/lang/String;

    .line 2192
    iget-object v5, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2280
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2196
    const-string p0, "Permission trees:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2198
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p2

    :goto_2
    if-ge v1, p2, :cond_2

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2202
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2199
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2280
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final varargs enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    .line 3436
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2684
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2688
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    .line 2690
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2693
    :cond_2
    const-string p0, "Neither user "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2695
    const-string p0, " nor current process has any of "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x7c

    const/4 v11, 0x0

    .line 2696
    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->joinTo$default([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    .line 2688
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2698
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V
    .locals 3

    if-ltz p1, :cond_6

    .line 2624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2625
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2626
    const-string v2, ": "

    if-eq p1, v1, :cond_2

    if-eqz p2, :cond_0

    .line 2629
    const-string p2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    goto :goto_0

    .line 2631
    :cond_0
    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 2634
    :goto_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2637
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    .line 2639
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2640
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    :cond_1
    const-string p3, "Neither user "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2643
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2644
    const-string p3, " nor current process has "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    const-string p2, " to access user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2637
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2649
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p3, :cond_5

    .line 2652
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/permission/PermissionService;->isShellUid(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2654
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez p0, :cond_3

    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2655
    :cond_3
    const-string/jumbo p2, "no_debugging_features"

    .line 2654
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2659
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_4

    .line 2661
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2662
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    :cond_4
    const-string p2, "Shell is disallowed to access user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2659
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2667
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    .line 2623
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "userId "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final enforcePermissionTreeSize(Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    .locals 2

    .line 445
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 446
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/PermissionService;->calculatePermissionTreeFootprint(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/permission/Permission;)I

    move-result p0

    .line 448
    invoke-virtual {p2}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x8000

    if-gt p0, p1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission tree size cap exceeded"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceRestrictedPermission(Ljava/lang/String;)Z
    .locals 4

    .line 1824
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1824
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1826
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "permission definition for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1831
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p1, :cond_2

    const-string/jumbo p1, "packageManagerLocal"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p1

    .line 36
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1832
    invoke-interface {p1, v3}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    invoke-static {p1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v3, :cond_3

    return v1

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_4

    .line 138
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 144
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1842
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1843
    const-string p1, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1842
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 1846
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 33
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot modify allowlist of an immutably restricted permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1846
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1831
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 0

    .line 2608
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 0

    .line 223
    new-instance p0, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    const/16 p1, 0x80

    .line 224
    invoke-static {p2, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public final generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;
    .locals 1

    .line 269
    new-instance p0, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 272
    iget p1, p0, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 p1, 0x80

    .line 273
    invoke-static {p2, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    const/16 p1, 0x1a

    if-ge p3, p1, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    .line 280
    iput p1, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    :cond_1
    return-object p0
.end method

.method public final getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 12

    .line 2139
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2141
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p0, :cond_0

    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 2142
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p1, :cond_7

    .line 45
    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/UserState;

    .line 2143
    invoke-virtual {v6}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    .line 44
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v8

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_1

    .line 45
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v10

    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 2143
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2144
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    .line 44
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v8

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_2

    .line 45
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v10

    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 2144
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2145
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    .line 47
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v8

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_4

    .line 48
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    check-cast v10, Ljava/lang/String;

    .line 2146
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v10, :cond_3

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    .line 2147
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2149
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v7

    move v8, v4

    :goto_4
    if-ge v8, v7, :cond_6

    .line 45
    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v9, Ljava/lang/String;

    .line 2150
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v9, :cond_5

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    .line 2151
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2155
    :cond_7
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {p0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3268
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2156
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 2157
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    .line 2161
    :cond_8
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 93
    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    goto :goto_6

    .line 2161
    :cond_9
    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v6, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0, v5, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2162
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 44
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result p1

    :goto_7
    if-ge v4, p1, :cond_c

    .line 45
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 2166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    goto :goto_8

    .line 2166
    :cond_b
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v5, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0, v3, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    return-object p0

    :catchall_0
    move-exception p1

    .line 2141
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 9

    .line 2012
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2013
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2013
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    .line 2014
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p0, :cond_1

    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    .line 2015
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    .line 3227
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2015
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 2016
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 2019
    :cond_3
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 2020
    :cond_4
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    .line 3228
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2021
    invoke-virtual {v1, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    if-nez v7, :cond_6

    goto :goto_1

    .line 63
    :cond_6
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v7

    const/16 v8, 0x40

    .line 66
    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 52
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    goto :goto_2

    .line 2024
    :cond_7
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 55
    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    :goto_2
    check-cast v7, Landroid/util/ArraySet;

    .line 2025
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2029
    :cond_8
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2014
    invoke-static {p0, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    .line 178
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 179
    invoke-virtual {p0, v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 183
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-direct {v4, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 183
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 48
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 88
    check-cast v8, Landroid/content/pm/PermissionGroupInfo;

    check-cast v7, Ljava/lang/String;

    .line 186
    iget-object v7, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v7, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 187
    invoke-virtual {p0, v8, p1}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_4

    .line 88
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    :cond_5
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 11

    .line 1177
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAllPermissionStates: Unknown user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1181
    const-string v3, "getAllPermissionStates"

    invoke-virtual {p0, p3, v0, v2, v3}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1190
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 1191
    const-string v4, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    filled-new-array {v5, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1187
    invoke-virtual {p0, v3, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v6, :cond_3

    .line 1197
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAllPermissionStates: Unknown package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1201
    :cond_3
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p1

    :goto_0
    invoke-direct {v5, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1203
    const-string p1, "default:0"

    invoke-static {p2, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1204
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p1, v5, v0, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    goto :goto_1

    .line 1206
    :cond_5
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 1207
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p1, v5, v0, p2, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;I)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_6

    .line 1209
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1210
    :cond_6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_7

    .line 48
    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v10

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    move-object v4, p0

    move-object v9, p2

    move v7, p3

    .line 1212
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 1213
    sget-object p2, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p2, v10}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result p2

    .line 1214
    new-instance p3, Landroid/permission/PermissionManager$PermissionState;

    invoke-direct {p3, p0, p2}, Landroid/permission/PermissionManager$PermissionState;-><init>(ZI)V

    .line 99
    invoke-virtual {v0, v8, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object p0, v4

    move p3, v7

    move-object p2, v9

    goto :goto_2

    :cond_7
    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1195
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/List;
    .locals 13

    .line 338
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 48
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 88
    move-object v8, v6

    check-cast v8, Lcom/android/server/permission/access/permission/Permission;

    check-cast v5, Ljava/lang/String;

    .line 48
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    .line 342
    invoke-static/range {v7 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object v7, p0

    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_2

    .line 88
    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object p0, v7

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/List;
    .locals 13

    .line 338
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 48
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 88
    move-object v8, v6

    check-cast v8, Lcom/android/server/permission/access/permission/Permission;

    check-cast v5, Ljava/lang/String;

    .line 63
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5

    .line 332
    invoke-static {v5, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    .line 342
    invoke-static/range {v7 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object v7, p0

    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_2

    .line 88
    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object p0, v7

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 6

    if-eqz p1, :cond_b

    const/4 v0, 0x7

    .line 1602
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1603
    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1605
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1606
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AllowlistedRestrictedPermission api: Unknown user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1614
    :cond_1
    const-string v0, "getAllowlistedRestrictedPermissions"

    const/4 v2, 0x0

    .line 1610
    invoke-virtual {p0, p3, v2, v2, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1619
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v3, :cond_2

    const-string/jumbo v3, "packageManagerLocal"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {p0, v3, v0, p3}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    .line 1620
    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez p1, :cond_3

    return-object v1

    .line 1622
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v1

    .line 1625
    :cond_4
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1626
    const-string v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1625
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    move v2, v5

    .line 1630
    :cond_5
    invoke-static {p2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    goto :goto_0

    .line 1633
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 1634
    const-string p1, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1633
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1640
    :cond_7
    :goto_0
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v4, :cond_8

    const-string/jumbo v4, "packageManagerInternal"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v1, v4

    :goto_1
    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v0

    const/4 v1, 0x6

    .line 1643
    invoke-static {p2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    goto :goto_2

    .line 1649
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 1650
    const-string p1, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1649
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1657
    :cond_a
    :goto_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 1656
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1619
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    .line 1601
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;
    .locals 4

    .line 1725
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1725
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    const/4 p1, 0x1

    .line 1729
    invoke-static {p2, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const/high16 p1, 0x10000

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    const/4 v0, 0x4

    .line 1732
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    :cond_3
    const/4 v0, 0x2

    .line 1735
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x8000

    or-int/2addr p1, p2

    .line 1739
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    :goto_1
    if-ge p3, v0, :cond_7

    .line 48
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v1, Ljava/lang/String;

    .line 1740
    invoke-static {v3, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_6

    .line 88
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_7
    return-object p2
.end method

.method public final getAndEnforcePermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 1

    .line 428
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 429
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result p1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    return-object p0

    .line 434
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling UID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed to add to or remove from the permission tree"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 434
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_8

    .line 1989
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1991
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1991
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v4, 0x40

    .line 66
    invoke-static {v1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3217
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1996
    :cond_2
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p0, :cond_3

    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_3
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    .line 1997
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    .line 3218
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1997
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 1998
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .line 2001
    :cond_5
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_0

    .line 2002
    :cond_6
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2003
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2006
    :cond_7
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1996
    invoke-static {p0, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 3225
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 1996
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 1988
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 1

    .line 2361
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2361
    invoke-virtual {v0}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/permission/access/UserState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getDefaultPermissionGrantFingerprint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGidsForUid(I)[I
    .locals 8

    .line 716
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 717
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 718
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "systemConfig"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v1

    .line 719
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-direct {v4, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 725
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v2, v4, v0, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    if-nez v0, :cond_2

    array-length p0, v1

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 727
    :cond_2
    invoke-static {v1}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    .line 48
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast v5, Ljava/lang/String;

    .line 729
    sget-object v7, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v7, v6}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 734
    :cond_3
    iget-object v6, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v6, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-nez v5, :cond_4

    goto :goto_2

    .line 735
    :cond_4
    invoke-virtual {v5, p1}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    move-result-object v5

    .line 736
    array-length v6, v5

    if-nez v6, :cond_5

    goto :goto_2

    .line 739
    :cond_5
    invoke-virtual {v1, v5}, Landroid/util/IntArray;->addAll([I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 741
    :cond_6
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 10

    if-eqz p1, :cond_7

    .line 684
    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v2, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v5, :cond_1

    .line 689
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGrantedPermissions: Unknown package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/SetsKt__SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 693
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-direct {v4, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 695
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p1, v4, v0, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 696
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/SetsKt__SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 698
    :cond_3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v9, v3

    :goto_0
    if-ge v9, v2, :cond_6

    .line 48
    invoke-virtual {p1, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 704
    const-string v8, "default:0"

    move-object v3, p0

    move v6, p2

    .line 700
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_5

    .line 88
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-object p0, v3

    move p2, v6

    goto :goto_0

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 687
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    .line 683
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 6

    if-eqz p1, :cond_4

    .line 359
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 359
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 361
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 48
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 88
    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    check-cast v4, Ljava/lang/String;

    .line 36
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 362
    invoke-static {v4, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    .line 88
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 357
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 17

    move-object/from16 v0, p0

    .line 2332
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v1}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    .line 2333
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "userManagerService"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v2

    .line 2334
    iget-object v4, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-direct {v5, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2335
    iget-object v3, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    .line 3380
    array-length v4, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_6

    aget v8, v2, v7

    .line 2338
    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move/from16 v10, p1

    invoke-virtual {v9, v5, v10, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_2
    move-object/from16 v16, v2

    goto :goto_5

    .line 47
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_2

    .line 48
    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    check-cast v13, Ljava/lang/String;

    .line 2341
    invoke-virtual {v3, v13}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/permission/Permission;

    if-nez v15, :cond_4

    move-object/from16 v16, v2

    goto :goto_4

    .line 2343
    :cond_4
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 48
    invoke-virtual {v15}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v15

    const/4 v0, 0x1

    if-ne v15, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 2346
    :goto_3
    sget-object v15, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    move-object/from16 v16, v2

    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v2

    .line 2347
    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v14

    .line 2343
    invoke-direct {v6, v13, v0, v2, v14}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 2349
    invoke-virtual {v1, v6, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_2

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .locals 8

    .line 2298
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2299
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 2300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 80
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    .line 2301
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 2302
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 2303
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v6

    .line 2304
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v7

    .line 2305
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v4

    .line 2301
    invoke-direct {v3, v5, v6, v7, v4}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 80
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .locals 0

    .line 2582
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageState;

    return-object p0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9

    .line 1133
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1134
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPermissionFlags: Unknown user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x1

    .line 1138
    const-string v3, "getPermissionFlags"

    invoke-virtual {p0, p4, v0, v2, v3}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1147
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 1148
    const-string v4, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    filled-new-array {v5, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-virtual {p0, v3, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v0, :cond_3

    .line 1154
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPermissionFlags: Unknown package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1158
    :cond_3
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p1

    :goto_0
    invoke-direct {v4, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1159
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    if-nez p1, :cond_5

    .line 1161
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPermissionFlags: Unknown permission "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1166
    :cond_5
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    move-object v3, p0

    move-object v7, p2

    move-object v8, p3

    move v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1168
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1152
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1671
    const-string v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0

    .line 1675
    :cond_0
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1677
    sget-object p5, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not device aware permission,  get the flags for default device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1676
    invoke-static {p5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 351
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_1

    .line 352
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0

    .line 353
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 6

    .line 199
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    .line 201
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 202
    invoke-virtual {p0, v1, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 203
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 207
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {v5, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 207
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    .line 208
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 206
    :cond_3
    :try_start_2
    iput-object p1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 210
    move-object v4, p1

    check-cast v4, Landroid/content/pm/PermissionGroupInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    .line 211
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 213
    :cond_4
    :try_start_3
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 215
    iget-object p1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    return-object p0

    .line 200
    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 6

    .line 234
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    .line 237
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 238
    invoke-virtual {p0, v1, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 239
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 243
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    invoke-direct {v5, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 243
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/permission/Permission;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    .line 244
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 242
    :cond_3
    :try_start_2
    iput-object p1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 246
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    .line 247
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 250
    :cond_4
    :try_start_3
    invoke-virtual {p0, v1, p3}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v2

    .line 254
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemOrShellUid(I)Z

    move-result p3

    const/16 v3, 0x2710

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 255
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    .line 258
    :cond_7
    :goto_2
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 260
    iget-object p1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0

    .line 236
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 15

    move-object/from16 v4, p2

    move/from16 v1, p3

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 476
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    :goto_0
    move-object v8, v1

    goto :goto_1

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 481
    :goto_1
    invoke-virtual {v8, v4, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_1

    return v9

    .line 486
    :cond_1
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 487
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 489
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v10, 0x0

    if-nez v1, :cond_2

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_2
    invoke-virtual {p0, v1, v7, v3}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    move-object/from16 v5, p1

    .line 490
    :try_start_0
    invoke-interface {v1, v5}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-static {v1, v10}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v11, 0x2

    if-nez v5, :cond_3

    return v11

    .line 493
    :cond_3
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_4

    return v11

    .line 494
    :cond_4
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    if-eq v2, v5, :cond_5

    return v11

    .line 497
    :cond_5
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v12, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    const-string/jumbo v13, "state"

    if-nez v5, :cond_6

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v10

    :cond_6
    invoke-direct {v12, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 497
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v5, v12}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v5, :cond_e

    .line 48
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_e

    .line 501
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v11

    .line 506
    :cond_7
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v5, v1

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v10

    :cond_8
    invoke-direct {v1, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object/from16 v5, p4

    .line 507
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v5, 0x401c0

    .line 509
    invoke-static {v1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v14

    .line 511
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 512
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    if-eqz v14, :cond_c

    .line 515
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 514
    invoke-virtual {v8, v1, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_a

    move v9, v12

    .line 520
    :cond_a
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v4, v1

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_b

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v10, v4

    :goto_2
    invoke-direct {v1, v10}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 524
    const-string v4, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    move-object v0, p0

    move-object/from16 v5, p4

    .line 521
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v9, :cond_c

    const/16 v1, 0x40

    .line 530
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_c

    return v12

    :cond_c
    if-eqz v14, :cond_d

    return v11

    :cond_d
    return v12

    :cond_e
    return v11

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 489
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 10

    .line 2285
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2285
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_1

    return-object v2

    .line 2287
    :cond_1
    new-instance v3, Lcom/android/server/pm/permission/Permission;

    .line 2288
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 2289
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v5

    .line 2290
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->isReconciled()Z

    move-result v6

    .line 2291
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v7

    .line 2292
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v8

    .line 2293
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAreGidsPerUser()Z

    move-result v9

    .line 2287
    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;IZI[IZ)V

    return-object v3
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 0

    .line 1983
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez p0, :cond_0

    const-string/jumbo p0, "systemConfig"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object p0

    .line 1982
    invoke-static {p0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    .line 751
    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final initialize()V
    .locals 4

    .line 150
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 151
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 153
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 152
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 156
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 158
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 159
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 160
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 164
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 165
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 168
    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 167
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Landroid/os/HandlerThread;

    .line 169
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "handlerThread"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    .line 171
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;-><init>(Lcom/android/server/permission/access/permission/PermissionService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 172
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    if-nez p0, :cond_1

    const-string/jumbo p0, "onPermissionFlagsChangedListener"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;)V

    return-void
.end method

.method public final isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z
    .locals 1

    .line 2595
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;II)Z
    .locals 0

    .line 2602
    invoke-virtual {p0, p1, p4, p3}, Lcom/android/server/permission/access/permission/PermissionService;->filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 634
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 637
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 638
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    .line 642
    :cond_0
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 645
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    .line 1226
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "userManagerInternal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_1

    .line 1227
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPermissionRevokedByPolicy: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const/4 v1, 0x1

    .line 1235
    const-string v4, "isPermissionRevokedByPolicy"

    .line 1231
    invoke-virtual {p0, p4, v1, v6, v4}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v1, :cond_2

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0, v1, v4, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    .line 1240
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v4, :cond_3

    return v6

    .line 1243
    :cond_3
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v5, v1

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v5

    :goto_0
    invoke-direct {v1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v5, p3

    move v3, p4

    move-object v2, v4

    move-object v4, p2

    .line 1244
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    return v6

    .line 1249
    :cond_5
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x80

    .line 1251
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1239
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .locals 4

    if-eqz p1, :cond_6

    .line 1261
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1265
    :cond_1
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-direct {v3, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1265
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p1

    move p2, v0

    :goto_1
    if-ge p2, p1, :cond_5

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast v1, Ljava/lang/String;

    const/16 v1, 0x1400

    .line 1267
    invoke-static {v2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return v0

    :catchall_0
    move-exception p0

    .line 1261
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    .line 1256
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isRootOrSystemOrShellUid(I)Z
    .locals 1

    .line 2542
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->isShellUid(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isRootOrSystemUid(I)Z
    .locals 0

    .line 2532
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0x3e8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isShellUid(I)Z
    .locals 0

    .line 2539
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 p1, 0x7d0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 667
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 668
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-eqz p4, :cond_2

    .line 673
    iget-object p0, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_1

    return p1

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p2, 0x1000

    .line 87
    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isSystemUidPermissionGranted(ILjava/lang/String;)Z
    .locals 2

    .line 585
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez p0, :cond_0

    const-string/jumbo p0, "systemConfig"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    .line 586
    :cond_1
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 590
    :cond_2
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 591
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return p1
.end method

.method public final isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z
    .locals 0

    .line 2589
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez p0, :cond_0

    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final killUid(ILjava/lang/String;)V
    .locals 3

    .line 2552
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2554
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2555
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-class v1, Landroid/os/Binder;

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2558
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2562
    :catch_0
    :goto_0
    :try_start_1
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method public onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 2

    .line 2413
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2417
    :cond_0
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2422
    :try_start_0
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2422
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v1, Ljava/util/Collection;

    .line 2423
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 2422
    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2424
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_2

    .line 2426
    monitor-exit p2

    return-void

    .line 2428
    :cond_2
    :try_start_1
    sget-object p3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2417
    monitor-exit p2

    .line 2429
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2417
    monitor-exit p2

    throw p0
.end method

.method public onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 7

    const/4 p2, 0x1

    .line 2443
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2447
    :cond_0
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    if-ne p3, v0, :cond_1

    goto/16 :goto_3

    .line 2459
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2460
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 2464
    monitor-exit v0

    return-void

    .line 2466
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2459
    monitor-exit v0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p4, v0, :cond_4

    .line 2469
    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-nez p4, :cond_3

    const-string/jumbo p4, "userManagerService"

    invoke-static {p4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p4, v1

    :cond_3
    invoke-virtual {p4}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object p4

    goto :goto_0

    .line 2471
    :cond_4
    new-array v0, p2, [I

    aput p4, v0, v2

    move-object p4, v0

    .line 3425
    :goto_0
    array-length v0, p4

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    aget v4, p4, v3

    .line 2474
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    add-int/2addr v3, p2

    goto :goto_1

    .line 3427
    :cond_5
    array-length v0, p4

    :goto_2
    if-ge v2, v0, :cond_7

    aget v3, p4, v2

    .line 2480
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v4, :cond_6

    const-string/jumbo v4, "packageManagerInternal"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2483
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    .line 2484
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v6

    .line 2481
    invoke-virtual {p0, p1, v5, v6, v3}, Lcom/android/server/permission/access/permission/PermissionService;->addAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V

    .line 2487
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/permission/access/permission/PermissionService;->setRequestedPermissionStates(Lcom/android/server/pm/pkg/PackageState;ILandroid/util/ArrayMap;)V

    add-int/2addr v2, p2

    goto :goto_2

    :cond_7
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 2459
    monitor-exit v0

    throw p0
.end method

.method public onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 2

    .line 2499
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_3

    :cond_0
    const/4 p3, -0x1

    const/4 p4, 0x0

    const/4 p5, 0x0

    if-ne p6, p3, :cond_2

    .line 2505
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-nez p3, :cond_1

    const-string/jumbo p3, "userManagerService"

    invoke-static {p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p5

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    .line 2507
    new-array p3, p3, [I

    aput p6, p3, p4

    .line 3429
    :goto_0
    array-length p6, p3

    :goto_1
    if-ge p4, p6, :cond_3

    aget v0, p3, p4

    .line 2509
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 2511
    :cond_3
    sget-object p3, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {p3, p1}, Lcom/mediatek/server/pm/PmsExt;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2512
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[onPackageUninstalled] isRemovableSysApp "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,then return!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2515
    :cond_4
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez p3, :cond_5

    const-string/jumbo p3, "packageManagerInternal"

    invoke-static {p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object p5, p3

    :goto_2
    invoke-virtual {p5}, Landroid/content/pm/PackageManagerInternal;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez p3, :cond_6

    .line 2517
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 3

    .line 2397
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2401
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 72
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2402
    sget-object v2, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2397
    monitor-exit v0

    .line 2522
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 2404
    :try_start_1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2526
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw p0

    .line 2397
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public onSystemReady()V
    .locals 6

    .line 2370
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessCheckingService;->onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V

    .line 2373
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2372
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_1

    .line 2374
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2375
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 295
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    .line 296
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v3, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 2376
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimDevicePermissionStates(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V

    .line 297
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v1, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    .line 2379
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;

    invoke-direct {v1, p0}, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;-><init>(Lcom/android/server/permission/access/permission/PermissionService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->registerPersistentDeviceIdRemovedListener(Ljava/util/function/Consumer;)V

    .line 2384
    :cond_2
    new-instance v0, Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2383
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    return-void
.end method

.method public onUserCreated(I)V
    .locals 0

    .line 2522
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 2388
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2526
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw p0
.end method

.method public onUserRemoved(I)V
    .locals 0

    .line 2392
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V

    return-void
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 13

    .line 289
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v6, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v7

    .line 290
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 291
    invoke-virtual {p0, v7, v8}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 292
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v6

    .line 296
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3

    :cond_2
    :goto_0
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    if-eqz p1, :cond_4

    .line 299
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 300
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v6

    .line 303
    :cond_3
    :try_start_2
    iget-object v1, v1, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7, v1, v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    .line 305
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v6

    .line 309
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    .line 312
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v11, :cond_7

    .line 48
    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 88
    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 314
    invoke-static {v1, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 315
    invoke-virtual {p0, v7, v1, v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v2

    move v2, p2

    .line 317
    invoke-static/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_6

    .line 88
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 312
    :cond_7
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v10

    :goto_3
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v7, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readLegacyPermissionStateTEMP()V
    .locals 0

    .line 0
    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0

    .line 2311
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessCheckingService;->initialize()V

    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8

    if-eqz p2, :cond_3

    .line 1802
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1807
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    .line 1810
    :cond_1
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    .line 1811
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    :cond_2
    return v1

    .line 1801
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3

    .line 1973
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1974
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    .line 1975
    const-string/jumbo v2, "removeOnPermissionsChangeListener"

    .line 1973
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-nez p0, :cond_0

    const-string/jumbo p0, "onPermissionsChangeListeners"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 7

    .line 408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 409
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 294
    :try_start_1
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v2, v3

    .line 295
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 413
    invoke-static {p0, v4, p1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    .line 414
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    if-nez v2, :cond_2

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 423
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object p0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->removePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)V

    .line 297
    :goto_1
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    monitor-exit v1

    return-void

    .line 418
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    :goto_2
    monitor-exit v1

    throw p0

    .line 410
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    .line 409
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 6

    .line 1943
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 295
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 1944
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 1945
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 297
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public resetRuntimePermissionsForUser(I)V
    .locals 10

    .line 1950
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    .line 1951
    :try_start_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :try_start_1
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 295
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    .line 296
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v6, v4, v5}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 1952
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v4

    .line 3203
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1952
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 1953
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 1956
    :cond_2
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 1957
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7, p1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    goto :goto_1

    .line 297
    :cond_3
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v2, v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1950
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 293
    :goto_2
    :try_start_3
    monitor-exit v3

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1950
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_2

    .line 2072
    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2074
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 2075
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2076
    monitor-exit v0

    return-void

    .line 2078
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2074
    monitor-exit v0

    .line 2079
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "permissionControllerManager"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2081
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2082
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2079
    new-instance v3, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;

    invoke-direct {v3, p0, p2}, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2074
    monitor-exit v0

    throw p0

    .line 2071
    :cond_2
    const-string/jumbo p0, "packageName"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restoreRuntimePermissions([BI)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2059
    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2061
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 2062
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 65
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2063
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    monitor-exit v0

    .line 2064
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-nez p0, :cond_0

    const-string/jumbo p0, "permissionControllerManager"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2066
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2064
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2061
    monitor-exit v0

    throw p0

    .line 2058
    :cond_1
    const-string p0, "backup"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 10

    const/16 v8, 0x40

    const/4 v9, 0x0

    .line 775
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    move-object v7, p5

    .line 761
    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .locals 8

    .line 1861
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1864
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1865
    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1864
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1868
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1870
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const-string/jumbo v4, "packageManagerLocal"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_2
    invoke-virtual {p0, v4, v3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v4

    .line 1871
    :try_start_0
    invoke-interface {v4}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_3

    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v2

    .line 1870
    :cond_3
    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move v4, v1

    .line 1873
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_4

    return v2

    .line 1876
    :cond_4
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_5

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_2
    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v2

    const/4 v3, 0x4

    .line 1878
    invoke-static {p3, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v4, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 1880
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    .line 1881
    const-string v1, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1880
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-eqz p5, :cond_9

    if-eqz v4, :cond_8

    goto :goto_4

    .line 1886
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    .line 1887
    const-string v1, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1886
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1895
    :cond_9
    :goto_4
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1893
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    return v6

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1870
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V
    .locals 16

    move/from16 v0, p4

    const/4 v1, 0x1

    .line 1916
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/high16 v2, 0x10000

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x4

    .line 1919
    invoke-static {v0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x20000

    or-int/2addr v2, v5

    :cond_1
    const/4 v5, 0x2

    .line 1922
    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x8000

    or-int/2addr v2, v0

    :cond_2
    move-object/from16 v0, p0

    move v10, v2

    .line 1926
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 294
    :try_start_0
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 295
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v13

    .line 296
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v6, v5, v13}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 1927
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v5

    .line 1928
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 1929
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    .line 3173
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v7, v3

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v15, v7, 0x1

    if-gez v7, :cond_4

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v8, Ljava/lang/String;

    .line 1930
    invoke-virtual {v0, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v9, :cond_7

    .line 132
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v7, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 138
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v11, 0x8

    invoke-static {v7, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    move-object/from16 v7, p3

    .line 1935
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v11, v10

    :goto_3
    move/from16 v7, p2

    move/from16 v8, p5

    goto :goto_4

    :cond_6
    move v11, v3

    goto :goto_3

    .line 1936
    :goto_4
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    :cond_7
    move v7, v15

    goto :goto_2

    .line 297
    :cond_8
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v2, v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v13}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v12

    return-void

    :goto_5
    monitor-exit v12

    throw v0
.end method

.method public final setAppOpPermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V
    .locals 7

    .line 1121
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    const-string/jumbo v0, "uid"

    const-string v1, "app-op"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.server.permission.access.appop.AppIdAppOpPolicy"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 1122
    invoke-static {p4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    :goto_0
    move v6, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    .line 1124
    :goto_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void
.end method

.method public setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V
    .locals 6

    .line 2364
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 295
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 2365
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, p2, v4, v5, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/android/server/permission/access/MutableUserState;->setDefaultPermissionGrantFingerprintPublic(Ljava/lang/String;)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    .line 1696
    const-string v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move p5, p6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p0

    return p0

    .line 1700
    :cond_0
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1702
    sget-object p5, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not device aware permission,  set the flags for default device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1701
    invoke-static {p5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 1706
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, v1

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p0

    return p0

    .line 1709
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v3, p5

    move v6, p6

    .line 1710
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final setRequestedPermissionStates(Lcom/android/server/pm/pkg/PackageState;ILandroid/util/ArrayMap;)V
    .locals 21

    move-object/from16 v0, p3

    const/4 v1, 0x1

    move-object/from16 v2, p0

    .line 903
    iget-object v15, v2, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 294
    :try_start_0
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 295
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v13

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v3, v13}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 40
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/16 v17, 0x0

    move/from16 v8, v17

    :goto_1
    if-ge v8, v14, :cond_9

    .line 41
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    if-eq v5, v1, :cond_2

    const/4 v3, 0x2

    if-eq v5, v3, :cond_2

    .line 910
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object v3

    .line 912
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setRequestedPermissionStates: Unknown permission state "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for permission "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 909
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    move/from16 v19, v1

    move-object v3, v4

    :goto_3
    move/from16 v18, v8

    move-object v1, v13

    move/from16 v20, v14

    goto/16 :goto_7

    .line 917
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 921
    :cond_3
    invoke-static {v2}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    if-nez v3, :cond_4

    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v7

    const/16 v9, 0x20

    .line 78
    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 48
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    if-ne v7, v1, :cond_6

    :cond_5
    move-object v3, v4

    goto :goto_6

    .line 63
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v7, 0x40

    .line 66
    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 957
    sget-object v3, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 956
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v5, v1, :cond_7

    move v7, v1

    :goto_4
    move/from16 v5, p2

    move-object v3, v4

    move-object/from16 v4, p1

    goto :goto_5

    :cond_7
    move/from16 v7, v17

    goto :goto_4

    .line 958
    :goto_5
    invoke-static/range {v2 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->access$setAppOpPermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V

    :cond_8
    move/from16 v19, v1

    goto :goto_3

    :goto_6
    if-ne v5, v1, :cond_8

    .line 932
    const-string v7, "default:0"

    .line 937
    const-string/jumbo v12, "setRequestedPermissionStates"

    move v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v18, v2

    move-object/from16 v2, p0

    .line 928
    invoke-static/range {v2 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 940
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 943
    const-string v7, "default:0"

    move-object v2, v13

    .line 950
    const-string/jumbo v13, "setRequestedPermissionStates"

    move v5, v14

    .line 951
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v8, 0x48

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v19, v1

    move-object v1, v2

    move/from16 v20, v5

    move-object/from16 v2, p0

    move/from16 v5, p2

    .line 939
    invoke-static/range {v2 .. v14}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v8, v18, 0x1

    move-object/from16 v2, p0

    move-object v13, v1

    move-object v4, v3

    move/from16 v1, v19

    move/from16 v14, v20

    goto/16 :goto_1

    :cond_9
    move-object v1, v13

    .line 297
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v15, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v16

    return-void

    :goto_8
    monitor-exit v16

    throw v0
.end method

.method public final setRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 15

    move-object/from16 v4, p4

    move/from16 v7, p6

    move-object/from16 v6, p10

    .line 983
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/permission/access/permission/Permission;

    if-nez v8, :cond_1

    if-nez p9, :cond_0

    goto/16 :goto_0

    .line 986
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 991
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 992
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 63
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v2, 0x20

    .line 78
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/4 v11, 0x1

    .line 994
    const-string v12, " to package "

    const-string v13, "Permission "

    if-nez v0, :cond_8

    .line 63
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v2, 0x4000000

    .line 114
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p7, :cond_8

    if-nez p9, :cond_2

    goto/16 :goto_0

    .line 998
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is managed by role"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 1004
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_4

    goto/16 :goto_0

    :cond_4
    if-eqz v7, :cond_8

    .line 1011
    invoke-interface/range {p2 .. p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 63
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v2, 0x1000

    .line 87
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p9, :cond_5

    goto/16 :goto_0

    .line 1015
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot grant non-instant permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-nez p9, :cond_7

    goto/16 :goto_0

    .line 1025
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requested by package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a changeable permission type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1034
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    move-object v0, p0

    move/from16 v3, p3

    move-object/from16 v5, p5

    .line 1035
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1037
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v14, :cond_9

    if-eqz p9, :cond_e

    .line 1040
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t requested by package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const/16 v0, 0x100

    .line 1047
    invoke-static {v14, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const-string v1, " for package "

    if-eqz v0, :cond_a

    if-eqz p9, :cond_e

    .line 1050
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Cannot change system fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/16 v0, 0x80

    .line 1058
    invoke-static {v14, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p8, :cond_b

    if-eqz p9, :cond_e

    .line 1061
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Cannot change policy fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-eqz v7, :cond_c

    const/high16 v0, 0x40000

    .line 1069
    invoke-static {v14, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p9, :cond_e

    .line 1072
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Cannot grant hard-restricted non-exempt permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-eqz v7, :cond_d

    const/high16 v0, 0x80000

    .line 1080
    invoke-static {v14, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p9, :cond_e

    .line 1083
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Cannot grant soft-restricted non-exempt permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1091
    :cond_d
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v0, v14, v7}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateRuntimePermissionGranted(IZ)I

    move-result v6

    if-ne v14, v6, :cond_f

    :cond_e
    :goto_0
    return-void

    :cond_f
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p5

    .line 1096
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z

    .line 48
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-ne v1, v11, :cond_12

    if-eqz v7, :cond_10

    const/16 v1, 0x4db

    goto :goto_1

    :cond_10
    const/16 v1, 0x4dd

    .line 1106
    :goto_1
    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1107
    invoke-virtual {v2, v10}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v1, 0x4d9

    .line 1108
    invoke-virtual {v2, v1, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1110
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez p0, :cond_11

    const-string/jumbo p0, "metricsLogger"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_11
    invoke-virtual {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_12
    return-void
.end method

.method public final setRuntimePermissionGranted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 13

    move-object/from16 v0, p7

    if-eqz p5, :cond_0

    .line 798
    const-string v1, "grantRuntimePermission"

    :goto_0
    move-object v10, v1

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "revokeRuntimePermission"

    goto :goto_0

    .line 799
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 823
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-string/jumbo v2, "userManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 824
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Unknown user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v2, 0x1

    .line 828
    invoke-virtual {p0, p2, v2, v2, v10}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    if-eqz p5, :cond_3

    .line 836
    const-string v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    goto :goto_2

    .line 838
    :cond_3
    const-string v5, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 840
    :goto_2
    iget-object v6, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v6, v5, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v5, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 844
    iget-object v6, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v6, :cond_4

    const-string/jumbo v6, "packageManagerInternal"

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_4
    const/4 v7, 0x7

    const/4 v8, 0x0

    .line 845
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v6

    .line 849
    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 851
    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v7, :cond_5

    const-string/jumbo v7, "packageManagerLocal"

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v4

    :cond_5
    invoke-interface {v7}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v7

    .line 853
    :try_start_0
    invoke-virtual {p0, v7, v1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v9, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v9, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 852
    iput-object v11, v5, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 855
    invoke-virtual {p0, v7, v6}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6

    .line 856
    sget-object v9, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 851
    invoke-static {v7, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 857
    iget-object v7, v5, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-object v7, v4

    :goto_3
    if-nez v7, :cond_7

    .line 862
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Unknown package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 867
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 868
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    if-ne p1, v1, :cond_8

    goto :goto_4

    :cond_8
    move v7, v8

    goto :goto_5

    :cond_9
    :goto_4
    move v7, v2

    .line 870
    :goto_5
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 871
    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 870
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    move v8, v2

    .line 874
    :cond_a
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 294
    :try_start_3
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_8

    .line 295
    :cond_b
    :goto_6
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v12

    .line 296
    new-instance v2, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v2, v1, v12}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 875
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getOnPermissionFlagsChangedListener$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    move-result-object v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "onPermissionFlagsChangedListener"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move-object v4, v1

    :goto_7
    if-eqz p6, :cond_d

    .line 877
    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->skipKillRuntimePermissionRevokedUids(Lcom/android/server/permission/access/MutateStateScope;)V

    :cond_d
    if-eqz v0, :cond_e

    .line 880
    invoke-virtual {v4, v2, v0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->addKillRuntimePermissionRevokedUidsReason(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    .line 885
    :cond_e
    iget-object v0, v5, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    const/4 v9, 0x1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v1, v2

    move-object v2, v0

    move-object v0, p0

    .line 884
    invoke-static/range {v0 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 297
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p1, v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v12}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    monitor-exit v11

    return-void

    :goto_8
    monitor-exit v11

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 853
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_5
    invoke-static {v9, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 851
    :goto_9
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move-object p1, v0

    invoke-static {v7, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    move v3, p4

    .line 1276
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v6, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "userManagerInternal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_1

    .line 1277
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldShowRequestPermissionRationale: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1285
    :cond_1
    const-string/jumbo v1, "shouldShowRequestPermissionRationale"

    const/4 v8, 0x1

    .line 1281
    invoke-virtual {p0, p4, v8, v7, v1}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1290
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v2, :cond_2

    const-string/jumbo v2, "packageManagerLocal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_2
    invoke-virtual {p0, v2, v1, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    .line 1291
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1290
    invoke-static {v2, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v4, :cond_3

    return v7

    .line 1293
    :cond_3
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    .line 1294
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v1, v9, :cond_4

    return v7

    .line 1299
    :cond_4
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v2, v1

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_5
    invoke-direct {v1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v5, p3

    move-object v2, v4

    move-object v4, p2

    .line 1300
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v7

    :cond_6
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v3, p4

    move v2, v9

    .line 1304
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v2, 0x401c0

    .line 1306
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_7

    return v7

    .line 1310
    :cond_7
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p2, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-class v2, Landroid/os/Binder;

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1314
    :try_start_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    if-nez v0, :cond_8

    const-string/jumbo v0, "platformCompat"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_8
    move-object v6, v0

    .line 1315
    :goto_0
    sget-wide v9, Lcom/android/server/permission/access/permission/PermissionService;->BACKGROUND_RATIONALE_CHANGE_ID:J

    .line 1314
    invoke-interface {v6, v9, v10, p1, p4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1321
    :goto_1
    :try_start_2
    sget-object v2, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1322
    const-string/jumbo v3, "shouldShowRequestPermissionRationale: Unable to check if compatibility change is enabled"

    .line 1320
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_9

    return v8

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    const/16 v0, 0x20

    .line 1334
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 1290
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;
    .locals 7

    .line 2326
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 48
    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 80
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    .line 2328
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v4

    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v3, v5, v4, v1, v6}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 80
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p8, :cond_0

    const/16 v1, 0x7830

    .line 1570
    invoke-static {p6, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    .line 1571
    invoke-static {p7, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, p6

    move v3, p7

    .line 1574
    :goto_0
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    if-nez v4, :cond_2

    if-nez p9, :cond_1

    return-void

    .line 1577
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1582
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez p10, :cond_3

    if-nez v5, :cond_3

    .line 1585
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t requested by package "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1584
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1592
    :cond_3
    sget-object v6, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v6, v4, v5, v2, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result v2

    move-object p6, p0

    move-object p7, p1

    move p8, p2

    move/from16 p9, p3

    move-object/from16 p10, p4

    move-object/from16 p11, p5

    move/from16 p12, v2

    .line 1593
    invoke-virtual/range {p6 .. p12}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v4, p2

    move/from16 v3, p7

    const/4 v1, 0x1

    .line 1346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1375
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string/jumbo v5, "userManagerInternal"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_0
    invoke-virtual {v5, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1376
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermissionFlags: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1384
    :cond_1
    const-string/jumbo v5, "updatePermissionFlags"

    .line 1380
    invoke-virtual {v0, v3, v1, v1, v5}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1387
    const-string/jumbo v5, "updatePermissionFlags"

    .line 1388
    const-string v7, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 1389
    const-string v8, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    .line 1386
    invoke-virtual {v0, v5, v7}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x4

    move/from16 v7, p3

    .line 1397
    invoke-static {v7, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz p5, :cond_2

    .line 1399
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1400
    const-string v8, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 1401
    const-string v9, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    .line 1399
    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1405
    :cond_2
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v5, :cond_3

    const-string/jumbo v5, "packageManagerInternal"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_3
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v5

    const/16 v8, 0x1d

    if-ge v5, v8, :cond_4

    goto :goto_0

    .line 1407
    :cond_4
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs to be checked for packages targeting 29 or later when changing policy flags"

    .line 1406
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move/from16 v7, p3

    .line 1420
    :cond_6
    :goto_0
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v5, :cond_7

    const-string/jumbo v5, "packageManagerInternal"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_7
    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1421
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    goto :goto_1

    :cond_8
    move-object v8, v6

    :goto_1
    if-eqz v8, :cond_11

    .line 1427
    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v9, :cond_9

    const-string/jumbo v9, "packageManagerInternal"

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v6

    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v9, v12, v2, v3, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v9

    if-eqz v9, :cond_a

    goto/16 :goto_7

    .line 1436
    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v2

    .line 1439
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :goto_2
    move v10, v1

    goto :goto_4

    .line 1445
    :cond_b
    iget-object v8, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v8, :cond_c

    const-string/jumbo v8, "packageManagerInternal"

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v6

    :cond_c
    invoke-virtual {v8, v12, v3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 3118
    array-length v9, v8

    move v11, v10

    :goto_3
    if-ge v11, v9, :cond_f

    aget-object v13, v8, v11

    .line 1447
    iget-object v14, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v14, :cond_d

    const-string/jumbo v14, "packageManagerInternal"

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v14, v6

    :cond_d
    invoke-virtual {v14, v13}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 1449
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_2

    :cond_e
    add-int/2addr v11, v1

    goto :goto_3

    .line 1453
    :cond_f
    :goto_4
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    .line 1454
    iget-object v13, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 294
    :try_start_0
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_10
    move-object v6, v5

    .line 295
    :goto_5
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v15

    move v8, v2

    move v2, v1

    .line 296
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v6, v15}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 1465
    const-string/jumbo v11, "updatePermissionFlags"

    const/4 v9, 0x1

    move-object/from16 v5, p6

    move v6, v7

    move/from16 v7, p4

    .line 1455
    invoke-static/range {v0 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v13, v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v15}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v14

    return-void

    :goto_6
    monitor-exit v14

    throw v0

    .line 1429
    :cond_11
    :goto_7
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermissionFlags: Unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v3, p3

    .line 1472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1496
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "userManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1497
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermissionFlagsForAllApps: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1505
    :cond_1
    const-string/jumbo v2, "updatePermissionFlagsForAllApps"

    const/4 v5, 0x1

    .line 1501
    invoke-virtual {v0, v3, v5, v5, v2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1508
    const-string/jumbo v2, "updatePermissionFlagsForAllApps"

    .line 1509
    const-string v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 1510
    const-string v6, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 1507
    invoke-virtual {v0, v2, v5}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1515
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v8

    .line 1517
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v1, :cond_2

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_2
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v1, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1518
    iget-object v13, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 294
    :try_start_1
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    move-object v4, v1

    .line 295
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v15

    .line 296
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v4, v15}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 3134
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1519
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/server/pm/pkg/PackageState;

    .line 1520
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    .line 1523
    :cond_4
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 1524
    :cond_5
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 3135
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 1526
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 1529
    const-string v5, "default:0"

    .line 1535
    const-string/jumbo v11, "updatePermissionFlagsForAllApps"

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v6, p1

    move/from16 v7, p2

    .line 1525
    invoke-static/range {v0 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v3, p3

    goto :goto_2

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    move/from16 v3, p3

    goto :goto_1

    .line 297
    :cond_7
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v13, v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v15}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    monitor-exit v14

    return-void

    :goto_4
    monitor-exit v14

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 1517
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 0

    .line 2571
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public writeLegacyPermissionStateTEMP()V
    .locals 0

    .line 0
    return-void
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 2

    .line 2315
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2316
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 2317
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    .line 2318
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionTrees(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 2319
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    return-void
.end method
