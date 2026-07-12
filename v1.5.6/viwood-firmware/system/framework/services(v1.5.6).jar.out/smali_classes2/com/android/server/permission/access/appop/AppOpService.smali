.class public final Lcom/android/server/permission/access/appop/AppOpService;
.super Ljava/lang/Object;
.source "AppOpService.kt"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appop/AppOpService$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

.field public final backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

.field public final context:Landroid/content/Context;

.field public final devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

.field public final foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

.field public foregroundableOps:Landroid/util/SparseBooleanArray;

.field public handler:Landroid/os/Handler;

.field public volatile listeners:Landroid/util/ArraySet;

.field public final listenersLock:Ljava/lang/Object;

.field public final packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

.field public final permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field public final runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

.field public final runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appop/AppOpService$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appop/AppOpService;->Companion:Lcom/android/server/permission/access/appop/AppOpService$Companion;

    .line 594
    const-class v0, Lcom/android/server/permission/access/appop/AppOpService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 56
    const-string/jumbo v0, "package"

    const-string v1, "app-op"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.appop.PackageAppOpPolicy"

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 58
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.appop.AppIdAppOpPolicy"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 60
    const-string/jumbo v1, "permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 62
    const-string v1, "device-permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.DevicePermissionPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 64
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    .line 67
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    .line 70
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 72
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 76
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    .line 80
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    .line 84
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    .line 85
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listenersLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$evaluateModeFromPermissionFlags(Lcom/android/server/permission/access/appop/AppOpService;II)I
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAppIdPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    return-object p0
.end method

.method public static final synthetic access$getBackgroundToForegroundPermissionNames$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getForegroundToBackgroundPermissionName$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArraySet;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static final synthetic access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    return-object p0
.end method

.method public static final synthetic access$getPermissionPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getService$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/AccessCheckingService;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    return-object p0
.end method


# virtual methods
.method public addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;)Z
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 383
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 384
    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public clearAllModes()V
    .locals 0

    .line 0
    return-void
.end method

.method public final createPermissionAppOpMapping()V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

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

    .line 119
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa3

    if-ge v1, v2, :cond_4

    .line 123
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 116
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 126
    :cond_1
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 129
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 130
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    .line 48
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 132
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 99
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 134
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 138
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 116
    invoke-virtual {v5, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 139
    iget-object v4, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    .line 99
    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v4, p0, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    .line 610
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 142
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 613
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_2
    check-cast v5, Landroid/util/ArraySet;

    .line 143
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final evaluateModeFromPermissionFlags(II)I
    .locals 0

    .line 242
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 9

    .line 347
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModes(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    .line 41
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    if-ne v8, v2, :cond_0

    .line 350
    invoke-static {v7}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v7

    .line 116
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_3

    .line 41
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 355
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/permission/access/appop/AppOpService;->getUidMode(ILjava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 116
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getForegroundOps(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;
    .locals 9

    .line 364
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    .line 41
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    if-ne v8, v2, :cond_0

    .line 367
    invoke-static {v7}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v7

    .line 116
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_3

    .line 41
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 372
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageMode(Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 116
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;
    .locals 0

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .locals 10

    .line 152
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 153
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 154
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-direct {v1, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 156
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/appop/AppOpService;->opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;

    move-result-object p1

    .line 158
    iget-object v6, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_3

    .line 41
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v9

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 161
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p2

    if-eq p0, p2, :cond_2

    .line 116
    invoke-virtual {p1, v9, p0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move-object p0, v0

    move-object p2, v5

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public getPackageMode(Ljava/lang/String;II)I
    .locals 2

    .line 287
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p2

    .line 288
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

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

    .line 289
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

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

    .line 294
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;I)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public getUidMode(ILjava/lang/String;I)I
    .locals 6

    .line 176
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 177
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 178
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    const/4 p3, 0x0

    .line 181
    const-string/jumbo v0, "state"

    if-nez v4, :cond_1

    .line 182
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-direct {v1, p3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 182
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object p3, p1

    :goto_1
    invoke-direct {v1, p3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v5, p2

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUidModeFromPermissionState(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 203
    const-string v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 204
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    move-object v5, p5

    .line 208
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;ILjava/lang/String;)I

    move-result p1

    move-object p2, v7

    goto :goto_1

    :cond_1
    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object p2, p4

    move-object v5, p5

    .line 211
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p1, v3, v4, v6, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p1

    .line 213
    :goto_1
    iget-object p3, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 218
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;ILjava/lang/String;)I

    move-result p3

    goto :goto_2

    .line 221
    :cond_2
    iget-object p3, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 222
    invoke-virtual {p3, v3, v4, v6, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p3

    goto :goto_2

    :cond_3
    const/16 p3, 0x10

    .line 228
    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    move-result p1

    if-eq p1, v1, :cond_4

    goto :goto_3

    .line 234
    :cond_4
    sget-object p3, Lcom/android/server/permission/access/permission/PermissionService;->Companion:Lcom/android/server/permission/access/permission/PermissionService$Companion;

    invoke-virtual {p3, p2}, Lcom/android/server/permission/access/permission/PermissionService$Companion;->getFullerPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    :goto_3
    return p1

    :cond_5
    move-object v2, p0

    move-object v7, v5

    move v5, v6

    move-object v6, p2

    .line 235
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUidModes(I)Landroid/util/ArrayMap;
    .locals 4

    .line 191
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 192
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 193
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

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

    .line 193
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v3
.end method

.method public final initialize()V
    .locals 2

    .line 89
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->handler:Landroid/os/Handler;

    .line 91
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    new-instance v1, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;

    invoke-direct {v1, p0}, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->addOnAppOpModeChangedListener(Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    new-instance v1, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;

    invoke-direct {v1, p0}, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->addOnAppOpModeChangedListener(Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;)V

    return-void
.end method

.method public final opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;
    .locals 4

    if-nez p1, :cond_0

    .line 332
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    return-object p0

    .line 334
    :cond_0
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 40
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v2, Ljava/lang/String;

    .line 336
    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public readState()V
    .locals 0

    .line 0
    return-void
.end method

.method public removePackage(Ljava/lang/String;I)Z
    .locals 6

    .line 323
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

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

    .line 325
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    move-result-object p0

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->removeAppOpModes(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 297
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v1, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v2

    .line 327
    iget-boolean p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0

    .line 293
    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public removeUid(I)V
    .locals 6

    .line 317
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 318
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 319
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

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

    .line 319
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getAppIdPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    move-result-object p0

    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->removeAppOpModes(Lcom/android/server/permission/access/MutateStateScope;II)Z

    .line 297
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v1, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public setPackageMode(Ljava/lang/String;III)V
    .locals 8

    .line 297
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 301
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 304
    sget-object p0, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "(packageName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")\'s appop state for runtime op "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should not be set directly."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 303
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 311
    :cond_0
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 294
    :try_start_0
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 295
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v7

    .line 296
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v0, v7}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 312
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    move-result-object v0

    move-object v2, p1

    move v5, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 297
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p2, v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v7}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v6

    return-void

    :goto_1
    monitor-exit v6

    throw p0
.end method

.method public setUidMode(ILjava/lang/String;II)Z
    .locals 7

    .line 253
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 254
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 255
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 261
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    if-nez p2, :cond_0

    const-string/jumbo p2, "state"

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 261
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    const/4 p2, 0x0

    if-eq p0, p4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    if-eqz v0, :cond_2

    .line 264
    const-string v1, "Blocked"

    goto :goto_2

    :cond_2
    const-string v1, "Ignored"

    .line 267
    :goto_2
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p3

    .line 268
    invoke-static {p4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p4

    .line 269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 270
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setUidMode call for runtime permission app op: uid = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", code = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mode = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", callingUid = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldMode = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_3

    .line 272
    sget-object p1, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/RuntimeException;

    invoke-direct {p3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p1, p0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 274
    :cond_3
    sget-object p1, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return p2

    .line 279
    :cond_4
    new-instance p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 280
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 293
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 294
    :try_start_0
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 295
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    .line 296
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v0, v6}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 281
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getAppIdPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    move-result-object v0

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 297
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p2, v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p2, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p2, v6}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p3

    .line 283
    iget-boolean p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0

    .line 293
    :goto_5
    monitor-exit p3

    throw p0
.end method

.method public shutdown()V
    .locals 0

    .line 0
    return-void
.end method

.method public systemReady()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/server/permission/access/appop/AppOpService;->createPermissionAppOpMapping()V

    .line 112
    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    .line 113
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;)V

    .line 114
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;)V

    return-void
.end method

.method public writeState()V
    .locals 0

    .line 0
    return-void
.end method
