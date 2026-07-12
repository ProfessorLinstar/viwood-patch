.class public final Lcom/android/server/permission/access/AccessCheckingService;
.super Lcom/android/server/SystemService;
.source "AccessCheckingService.kt"


# instance fields
.field private appOpService:Lcom/android/server/permission/access/appop/AppOpService;

.field private packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field private permissionService:Lcom/android/server/permission/access/permission/PermissionService;

.field private final persistence:Lcom/android/server/permission/access/AccessPersistence;

.field private final policy:Lcom/android/server/permission/access/AccessPolicy;

.field private volatile state:Lcom/android/server/permission/access/AccessState;

.field private final stateLock:Ljava/lang/Object;

.field private systemConfig:Lcom/android/server/SystemConfig;

.field private userManagerService:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;

    .line 50
    new-instance p1, Lcom/android/server/permission/access/AccessPolicy;

    invoke-direct {p1}, Lcom/android/server/permission/access/AccessPolicy;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 52
    new-instance v0, Lcom/android/server/permission/access/AccessPersistence;

    invoke-direct {v0, p1}, Lcom/android/server/permission/access/AccessPersistence;-><init>(Lcom/android/server/permission/access/AccessPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    return-void
.end method

.method public static final synthetic access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    return-object p0
.end method

.method public static final synthetic access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    return-object p0
.end method

.method public static final synthetic access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    return-void
.end method

.method private final getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerLocal;",
            ")",
            "Lcom/android/server/permission/jarjar/kotlin/Pair<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;>;"
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final getImplicitToSourcePermissions(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Lcom/android/server/permission/access/immutable/IndexedMap;"
        }
    .end annotation

    .line 135
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 137
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    .line 312
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 93
    invoke-virtual {p0, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v7, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0, v6, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v7, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 84
    invoke-virtual {v7, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private final getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            ")",
            "Lcom/android/server/permission/access/immutable/IntMap;"
        }
    .end annotation

    .line 248
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIntMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 252
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/4 v0, 0x4

    .line 255
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    .line 258
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/4 v0, 0x6

    .line 261
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0xa

    .line 264
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0xb

    .line 267
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0xc

    .line 270
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0xf

    .line 273
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0x10

    .line 276
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0x11

    .line 279
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    return-object p0
.end method

.method private final getPrivilegedPermissionAllowlistPackages(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedListSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Lcom/android/server/permission/access/immutable/IndexedListSet;"
        }
    .end annotation

    .line 118
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    const-string v0, "android"

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object p1

    const-string v0, "android.hardware.type.automotive"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    const-string/jumbo p1, "ro.android.car.carservice.package"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private final isLeanback(Lcom/android/server/SystemConfig;)Z
    .locals 0

    .line 114
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object p0

    const-string p1, "android.software.leanback"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->getSchemePolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object p0

    return-object p0
.end method

.method public final getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;",
            ")TT;"
        }
    .end annotation

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

    invoke-interface {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final initialize()V
    .locals 13

    .line 76
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 78
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 77
    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 79
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 80
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 82
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->MutableIntSet([I)Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v4

    .line 83
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_1

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 84
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 85
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    const-string/jumbo v2, "systemConfig"

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->isLeanback(Lcom/android/server/SystemConfig;)Z

    move-result v8

    .line 86
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_4

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v9

    .line 88
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_5

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getPrivilegedPermissionAllowlistPackages(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedListSet;

    move-result-object v10

    .line 89
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_6

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object v11

    .line 90
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getImplicitToSourcePermissions(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v12

    .line 92
    new-instance v3, Lcom/android/server/permission/access/MutableAccessState;

    invoke-direct {v3}, Lcom/android/server/permission/access/MutableAccessState;-><init>()V

    .line 93
    iget-object v2, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/permission/access/AccessPolicy;->initialize(Lcom/android/server/permission/access/MutableAccessState;Lcom/android/server/permission/access/immutable/IntSet;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessPersistence;->initialize()V

    .line 106
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/AccessPersistence;->read(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 107
    iput-object v3, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    .line 109
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    if-nez v0, :cond_8

    const-string v0, "appOpService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/permission/access/appop/AppOpService;->initialize()V

    .line 110
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    if-nez p0, :cond_9

    const-string/jumbo p0, "permissionService"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/PermissionService;->initialize()V

    return-void
.end method

.method public final mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

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

    invoke-interface {p1, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v0

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-void

    :goto_1
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v0

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p0
.end method

.method public final onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V
    .locals 9

    .line 175
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 176
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_1

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 295
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 178
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    .line 179
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/AccessPolicy;->onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

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

.method public final onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V
    .locals 10

    .line 206
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 207
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_1

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 295
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 209
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    .line 210
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/AccessPolicy;->onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

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

.method public final onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V
    .locals 10

    .line 190
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 191
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_1

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 295
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 193
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    .line 194
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/AccessPolicy;->onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

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

.method public final onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V
    .locals 11

    .line 222
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 223
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_1

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 295
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 225
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    move v10, p3

    .line 226
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/permission/access/AccessPolicy;->onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;II)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

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

.method public onStart()V
    .locals 3

    .line 63
    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppOpService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    .line 64
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    .line 66
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "appOpService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-class v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v2, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 67
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    iget-object v2, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    if-nez v2, :cond_1

    const-string/jumbo v2, "permissionService"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 71
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    .line 69
    const-class p0, Lcom/android/server/permission/PermissionManagerLocal;

    invoke-static {p0, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 159
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_1

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 295
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 296
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 161
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    .line 162
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/permission/access/AccessPolicy;->onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;Ljava/util/List;Z)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

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

.method public final onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V
    .locals 4

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 295
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 296
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 239
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/AccessPolicy;->onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

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

.method public final onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    .locals 4

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 295
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 296
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 146
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

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

.method public final onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    .locals 4

    .line 293
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 295
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 296
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 150
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 297
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

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
