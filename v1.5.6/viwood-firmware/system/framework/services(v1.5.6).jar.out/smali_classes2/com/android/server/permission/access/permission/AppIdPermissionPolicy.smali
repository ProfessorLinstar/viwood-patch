.class public final Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "AppIdPermissionPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;


# instance fields
.field public volatile isSignaturePermissionAllowlistForceEnforced:Z

.field public final migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

.field public volatile onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

.field public final persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

.field public final privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public final upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->Companion:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$Companion;

    .line 1930
    const-class v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1941
    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    .line 1942
    const-string v6, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v2, "android.permission.ACTIVITY_RECOGNITION"

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 1936
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 1949
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1950
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1946
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 1953
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 1962
    const-string v6, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 1963
    const-string v7, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 1956
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/android/server/permission/access/SchemePolicy;-><init>()V

    .line 53
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    .line 55
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    .line 57
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;-><init>(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    .line 62
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    return-void
.end method

.method public static synthetic getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 1553
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p4

    .line 1550
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;)V
    .locals 2

    .line 1902
    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    invoke-static {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedListSetExtensionsKt;->plus(Lcom/android/server/permission/access/immutable/IndexedListSet;Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 1904
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final addPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;Z)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 1829
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState(I)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p0

    .line 33
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 11

    .line 384
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 41
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/pm/pkg/PackageUserState;

    .line 384
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_4

    .line 393
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 39
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    const-wide/16 v4, 0x80

    .line 395
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 400
    iget-object v4, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 404
    iget-object v7, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 406
    iget-object v7, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 407
    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 412
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    const-string v9, "Ignoring permission group "

    if-nez v8, :cond_0

    .line 414
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " declared in package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": already declared in another package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 421
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v8, :cond_1

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    if-ne v8, v6, :cond_1

    .line 423
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " declared in system package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": already declared in another system package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 431
    :cond_1
    sget-object v8, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 434
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Overriding permission group "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with new declaration in system package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": originally declared in another package "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v1, v6, v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionGroups()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v4, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 387
    :cond_5
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 389
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring permission groups declared in package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": instant apps cannot declare permission groups"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 29

    .line 446
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 452
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 453
    :goto_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_1c

    .line 39
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    const-wide/16 v8, 0x80

    .line 455
    invoke-static {v7, v8, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 459
    iget-object v8, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 461
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 462
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    :goto_3
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    goto :goto_4

    .line 464
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    goto :goto_3

    .line 470
    :goto_4
    invoke-virtual {v12, v13, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v10

    .line 471
    iget-object v14, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 472
    const-string v15, " declared in package "

    const-string v2, "Ignoring permission "

    if-eqz v10, :cond_4

    .line 36
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 472
    invoke-static {v14, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 474
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 33
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": base permission tree "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is declared in another package "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v25, v5

    move/from16 v26, v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_6
    move-object/from16 v0, p3

    goto/16 :goto_16

    :cond_4
    if-eqz v9, :cond_13

    .line 36
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 483
    invoke-static {v14, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 36
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 486
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v10

    if-nez v10, :cond_5

    .line 488
    sget-object v7, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 491
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": already declared in another package "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 495
    :cond_5
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v10, :cond_6

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v10

    if-ne v10, v4, :cond_6

    .line 497
    sget-object v7, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 500
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " declared in system package "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": already declared in another system package "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 505
    :cond_6
    sget-object v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 508
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Overriding permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " with new declaration in system package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": originally declared in another package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v3

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v3, :cond_8

    .line 39
    invoke-virtual {v2, v10}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v15

    .line 512
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    move-object/from16 v18, v0

    .line 44
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v0

    move/from16 v19, v1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_7

    move-object/from16 v16, v14

    .line 45
    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v17

    check-cast v17, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const/16 v17, 0x0

    move-object/from16 v28, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v28

    .line 513
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-object/from16 v12, v16

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v13, p1

    move-object v14, v8

    move-object v8, v12

    move-object/from16 v12, p0

    goto :goto_8

    :cond_7
    move-object v12, v8

    move-object v8, v14

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v13, p1

    move-object v8, v12

    move-object/from16 v0, v18

    move/from16 v1, v19

    const/4 v4, 0x1

    move-object/from16 v12, p0

    goto :goto_7

    :cond_8
    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v12, v8

    move-object v8, v14

    :cond_9
    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v2, v12

    goto/16 :goto_f

    :cond_a
    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v12, v8

    move-object v8, v14

    .line 516
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->isReconciled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 518
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 519
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 39
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 520
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    .line 522
    :goto_9
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 48
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 25
    :cond_c
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    .line 48
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-ne v1, v2, :cond_d

    goto :goto_a

    :cond_d
    const/4 v1, 0x1

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-nez v0, :cond_f

    if-eqz v1, :cond_9

    .line 525
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_9

    .line 39
    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v15

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v10

    .line 44
    invoke-virtual {v10}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v13

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_12

    move/from16 v20, v0

    .line 45
    invoke-virtual {v10, v14}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v0

    invoke-virtual {v10, v14}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v16

    check-cast v16, Lcom/android/server/permission/access/immutable/IndexedListSet;

    move/from16 v21, v1

    .line 527
    const-string v1, " and userId "

    move-object/from16 v22, v2

    const-string v2, " for appId "

    move/from16 v23, v3

    if-eqz v20, :cond_10

    .line 533
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    move/from16 v24, v4

    .line 39
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move/from16 v25, v5

    .line 537
    iget-object v5, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move/from16 v26, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v7

    const-string v7, "Revoking runtime permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " as the permission group changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_10
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    :goto_e
    if-eqz v21, :cond_11

    .line 542
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Revoking permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as the permission protection changed."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v17, 0x0

    move-object/from16 v16, v12

    move v1, v14

    move-object/from16 v12, p0

    move v14, v0

    move v0, v13

    move-object/from16 v13, p1

    .line 548
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-object/from16 v2, v16

    add-int/lit8 v14, v1, 0x1

    move v13, v0

    move-object v12, v2

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move-object/from16 v7, v27

    goto/16 :goto_d

    :cond_12
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v2, v12

    add-int/lit8 v4, v24, 0x1

    move-object/from16 v2, v22

    goto/16 :goto_c

    :cond_13
    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v2, v8

    move-object v8, v14

    .line 555
    :goto_f
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    .line 557
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getConfigPermissions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemConfig$PermissionEntry;

    if-eqz v1, :cond_15

    .line 562
    iget-object v3, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v3, :cond_14

    .line 564
    iget-boolean v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    move v1, v0

    move-object v0, v3

    goto :goto_10

    :cond_14
    const/4 v1, 0x0

    :goto_10
    move/from16 v16, v1

    :goto_11
    move-object v15, v0

    goto :goto_12

    :cond_15
    const/16 v16, 0x0

    goto :goto_11

    .line 569
    :goto_12
    new-instance v10, Lcom/android/server/permission/access/permission/Permission;

    const/4 v13, 0x0

    .line 573
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v14

    const/4 v12, 0x1

    .line 569
    invoke-direct/range {v10 .. v16}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    .line 578
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionTrees()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v2, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_16
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-static {v0, v3, v4, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v2, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_1b

    .line 36
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 584
    invoke-static {v8, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 45
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v0, v4, :cond_1b

    .line 586
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->isReconciled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 48
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_18

    if-nez v19, :cond_17

    goto :goto_13

    :cond_17
    move-object/from16 v0, p3

    const/4 v4, 0x1

    goto :goto_15

    .line 63
    :cond_18
    :goto_13
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v4, 0x8000000

    .line 90
    invoke-static {v0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 147
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 589
    invoke-static {v0, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 48
    :cond_19
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 39
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 592
    invoke-static {v0, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_14
    move-object/from16 v0, p3

    goto :goto_15

    :cond_1a
    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_1b
    const/4 v4, 0x1

    goto :goto_14

    .line 80
    :goto_15
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :goto_16
    add-int/lit8 v6, v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v5, v25

    goto/16 :goto_2

    :cond_1c
    return-void
.end method

.method public final adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 23

    .line 317
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 318
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 39
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 319
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 320
    invoke-virtual {v7, v8, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->canAdoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move-object/from16 p2, v0

    move-object/from16 v0, p3

    goto/16 :goto_3

    .line 323
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v10

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_0

    .line 48
    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/android/server/permission/access/permission/Permission;

    check-cast v12, Ljava/lang/String;

    .line 36
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 327
    invoke-static {v13, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 p2, v0

    move-object/from16 v0, p3

    goto :goto_2

    .line 332
    :cond_2
    new-instance v15, Landroid/content/pm/PermissionInfo;

    invoke-direct {v15}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 333
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v13, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 334
    iput-object v6, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 335
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v13, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/16 v21, 0x34

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 341
    invoke-static/range {v14 .. v22}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v13

    .line 346
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 p2, v0

    const/4 v0, 0x1

    .line 347
    invoke-static {v14, v3, v0, v15}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 349
    invoke-virtual {v0, v11, v13}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->putAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p3

    .line 80
    invoke-virtual {v0, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    goto :goto_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final canAdoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 360
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageState;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 361
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    const-string v1, " to "

    const-string v2, "Unable to adopt permissions from "

    if-nez v0, :cond_1

    .line 363
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": original package not in system partition"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 362
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 369
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 371
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": original package still exists"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 370
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final checkPrivilegedPermissionAllowlistIfNeeded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 6

    .line 1438
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1441
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1444
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 1448
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getPrivilegedPermissionAllowlistPackages()Lcom/android/server/permission/access/immutable/IndexedListSet;

    move-result-object v0

    .line 36
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1448
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 33
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1452
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPrivilegedPermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1454
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1457
    :cond_4
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 1461
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->isSystemReady()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1463
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1465
    sget-object p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 33
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1467
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Privileged permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for package "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") not in privileged permission allowlist"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1464
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    sget-boolean p1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz p1, :cond_6

    .line 1471
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 1472
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1473
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object p2

    .line 33
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    .line 1477
    :cond_6
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr p0, v1

    return p0

    :cond_7
    :goto_0
    return v1
.end method

.method public final clearRestrictedPermissionImplicitExemption(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 9

    .line 180
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 183
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 184
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 185
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p2

    .line 2054
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-nez v5, :cond_3

    :cond_2
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    goto/16 :goto_4

    .line 132
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 138
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1568
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    .line 1571
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v2, :cond_5

    goto :goto_3

    .line 38
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_7

    .line 39
    invoke-virtual {v2, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 30
    check-cast v7, Ljava/lang/String;

    .line 1573
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v7, :cond_6

    .line 1574
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 192
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const/high16 v6, 0x20000

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    .line 197
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    :goto_4
    move-object p0, v1

    move-object p1, v2

    move p3, v4

    goto/16 :goto_0

    :cond_8
    :goto_5
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 4

    .line 926
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v3

    .line 927
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V
    .locals 8

    .line 940
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2460
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 942
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v7, p4

    .line 941
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 24

    move/from16 v2, p2

    move-object/from16 v4, p4

    const/16 v0, 0x800

    const/16 v1, 0x1000

    const/16 v3, 0x400

    const/16 v5, 0x10

    .line 956
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 960
    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIndexedList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9, v8}, Lcom/android/server/permission/access/immutable/MutableIndexedList;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v8, :cond_2

    .line 39
    invoke-virtual {v6, v11}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 963
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    .line 964
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 966
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 84
    invoke-virtual {v7, v13}, Lcom/android/server/permission/access/immutable/MutableIndexedList;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move v12, v9

    :cond_1
    :goto_1
    add-int/2addr v11, v9

    goto :goto_0

    .line 973
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v6

    if-ne v6, v9, :cond_3

    if-eqz v12, :cond_3

    goto :goto_2

    .line 977
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    .line 978
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v8

    if-nez v6, :cond_5

    if-nez v8, :cond_4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    .line 984
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    move v2, v0

    move-object/from16 v0, p0

    .line 48
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v11

    const/16 v13, 0x40

    const/4 v14, 0x2

    if-nez v11, :cond_f

    .line 989
    invoke-static {v8, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_e

    .line 991
    invoke-static {v8, v14}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz p5, :cond_6

    .line 995
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 994
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v9

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 38
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_8

    .line 39
    invoke-virtual {v7, v5}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 30
    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    .line 997
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-eqz v11, :cond_7

    move v3, v9

    goto :goto_5

    :cond_7
    add-int/2addr v5, v9

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    .line 38
    :goto_5
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v5

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v5, :cond_a

    .line 39
    invoke-virtual {v7, v11}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 30
    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1000
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v12, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isCompatibilityPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v10, v9

    goto :goto_7

    :cond_9
    add-int/2addr v11, v9

    goto :goto_6

    :cond_a
    const/4 v10, 0x0

    :goto_7
    if-eqz v1, :cond_c

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    if-eqz v10, :cond_b

    goto :goto_8

    :cond_b
    move v9, v14

    .line 63
    :cond_c
    :goto_8
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    .line 66
    invoke-static {v1, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_d

    and-int/lit8 v1, v8, 0x28

    or-int/2addr v9, v1

    :cond_d
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v5, v9

    .line 1021
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_e
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    return-void

    :cond_f
    move v4, v1

    move-object/from16 v1, p1

    .line 48
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v11

    const/4 v15, 0x4

    if-ne v11, v14, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v11

    if-ne v11, v15, :cond_1e

    .line 1024
    :goto_9
    invoke-static {v8, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v12, :cond_12

    if-eqz v2, :cond_12

    :cond_11
    :goto_a
    move v10, v15

    goto/16 :goto_12

    .line 63
    :cond_12
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    .line 105
    invoke-static {v2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 38
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_14

    .line 39
    invoke-virtual {v7, v3}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 1034
    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->checkPrivilegedPermissionAllowlistIfNeeded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_c

    :cond_13
    add-int/2addr v3, v9

    goto :goto_b

    :cond_14
    const/4 v2, 0x0

    goto :goto_d

    :cond_15
    :goto_c
    move v2, v9

    .line 48
    :goto_d
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    if-ne v3, v14, :cond_17

    .line 38
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_17

    .line 39
    invoke-virtual {v7, v4}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 30
    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    .line 1039
    invoke-virtual {v0, v1, v11, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPermissionBySignature(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v11

    if-eqz v11, :cond_16

    move v3, v9

    goto :goto_f

    :cond_16
    add-int/2addr v4, v9

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    .line 38
    :goto_f
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v4

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v4, :cond_19

    .line 39
    invoke-virtual {v7, v11}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 30
    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1043
    invoke-virtual {v0, v1, v12, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v12

    if-eqz v12, :cond_18

    goto :goto_11

    :cond_18
    add-int/2addr v11, v9

    goto :goto_10

    :cond_19
    const/4 v9, 0x0

    :goto_11
    if-eqz v2, :cond_1a

    if-nez v3, :cond_11

    if-eqz v9, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v10, 0x0

    .line 63
    :goto_12
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    .line 66
    invoke-static {v2, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    and-int/lit8 v2, v8, 0x28

    or-int/2addr v10, v2

    .line 63
    :cond_1b
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/16 v3, 0x20

    .line 78
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    and-int/lit8 v2, v8, 0x10

    or-int/2addr v10, v2

    .line 63
    :cond_1c
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/high16 v3, 0x4000000

    .line 114
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    and-int/lit8 v2, v8, 0x18

    or-int/2addr v10, v2

    :cond_1d
    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v10

    .line 1071
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void

    :cond_1e
    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 48
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v14

    if-ne v14, v9, :cond_3c

    const v14, 0xfffff8

    and-int/2addr v14, v8

    move/from16 v16, v5

    if-eqz v14, :cond_1f

    .line 1074
    sget-object v5, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v5, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v5

    if-nez v5, :cond_1f

    move v5, v9

    goto :goto_13

    :cond_1f
    const/4 v5, 0x0

    .line 38
    :goto_13
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v10

    const/16 v17, 0x2710

    move/from16 v15, v17

    move/from16 v17, v9

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v10, :cond_20

    .line 39
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 73
    check-cast v18, Lcom/android/server/pm/pkg/PackageState;

    .line 1080
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    invoke-static {v15, v2}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result v15

    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0x800

    goto :goto_14

    :cond_20
    const/16 v2, 0x17

    const v9, 0x38000

    if-ge v15, v2, :cond_24

    .line 63
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/16 v10, 0x2000

    .line 117
    invoke-static {v2, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_22

    and-int v2, v8, v9

    :cond_21
    :goto_15
    move v3, v9

    goto/16 :goto_21

    :cond_22
    or-int/lit16 v2, v14, 0x400

    if-eqz v5, :cond_23

    const v2, 0x100400

    or-int/2addr v2, v14

    .line 1097
    :cond_23
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_21

    or-int/2addr v2, v4

    goto :goto_15

    .line 1103
    :cond_24
    invoke-static {v14, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    .line 1104
    invoke-static {v14, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v2, :cond_25

    .line 1106
    invoke-static {v14, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v14

    if-nez v8, :cond_25

    or-int/lit8 v14, v14, 0x10

    :cond_25
    const/16 v3, 0x800

    .line 1111
    invoke-static {v14, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v10

    .line 1113
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->isLeanback()Z

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v3, v13}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move/from16 v3, v17

    goto :goto_16

    :cond_26
    const/4 v3, 0x0

    .line 38
    :goto_16
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v9

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v9, :cond_28

    .line 39
    invoke-virtual {v7, v4}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 30
    check-cast v19, Lcom/android/server/pm/pkg/PackageState;

    .line 1116
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v20, v2

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move/from16 v2, v17

    goto :goto_18

    :cond_27
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v20

    goto :goto_17

    :cond_28
    move/from16 v20, v2

    const/4 v2, 0x0

    .line 1119
    :goto_18
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getImplicitToSourcePermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-eqz v4, :cond_2c

    .line 38
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v9

    move/from16 v19, v2

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v9, :cond_2d

    .line 39
    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v2

    .line 30
    move-object/from16 v2, v21

    check-cast v2, Ljava/lang/String;

    .line 1123
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v21

    move/from16 v23, v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v3, :cond_2b

    .line 48
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    move/from16 v3, v17

    if-ne v2, v3, :cond_29

    move/from16 v17, v3

    goto :goto_1a

    :cond_29
    const/16 v17, 0x0

    :goto_1a
    if-nez v17, :cond_2a

    goto :goto_1b

    :cond_2a
    add-int/lit8 v2, v22, 0x1

    move/from16 v17, v3

    move/from16 v3, v23

    goto :goto_19

    .line 1125
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown source permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in split permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1124
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    move/from16 v19, v2

    :cond_2d
    move/from16 v23, v3

    const/4 v3, 0x0

    :goto_1b
    if-nez v23, :cond_2e

    if-eqz v19, :cond_2f

    if-eqz v3, :cond_2f

    :cond_2e
    const/16 v2, 0x800

    goto :goto_1c

    :cond_2f
    const/16 v2, 0x800

    .line 1138
    invoke-static {v14, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    if-nez v20, :cond_30

    if-eqz v10, :cond_31

    :cond_30
    const/high16 v3, 0x100000

    .line 1141
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_31

    const v3, 0x100010

    .line 1150
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    goto :goto_1d

    :goto_1c
    or-int/2addr v2, v14

    if-eqz v5, :cond_31

    const v2, 0x100800

    or-int/2addr v2, v14

    :cond_31
    :goto_1d
    if-nez v19, :cond_34

    if-eqz v8, :cond_34

    const/16 v4, 0x1000

    .line 1155
    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    .line 1157
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v3, v13}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1162
    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1159
    invoke-virtual {v0, v1, v11, v12, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v3

    .line 1165
    sget-object v5, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v5, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1166
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-nez v3, :cond_32

    const/4 v3, 0x1

    goto :goto_1e

    :cond_32
    const/4 v3, 0x0

    :goto_1e
    const/16 v4, 0x180

    .line 1168
    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v4

    if-nez v3, :cond_35

    if-eqz v4, :cond_33

    goto :goto_20

    :cond_33
    const/16 v3, 0x70

    .line 1175
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    :cond_34
    :goto_1f
    const v3, 0x38000

    goto :goto_21

    :cond_35
    :goto_20
    if-eqz v10, :cond_34

    or-int/lit8 v2, v2, 0x10

    goto :goto_1f

    .line 1183
    :goto_21
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    const/high16 v4, 0xc0000

    .line 1184
    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v4

    .line 132
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v8, 0x4

    invoke-static {v5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    const/16 v8, 0x8

    if-nez v5, :cond_36

    .line 138
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_36
    if-nez v3, :cond_37

    if-nez v4, :cond_37

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    const/4 v3, 0x1

    .line 132
    :cond_37
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    const/high16 v5, 0x40000

    if-eqz v4, :cond_38

    if-nez v3, :cond_38

    or-int/2addr v2, v5

    goto :goto_22

    .line 1209
    :cond_38
    invoke-static {v2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    .line 138
    :goto_22
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v4, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    const/high16 v5, 0x80000

    if-eqz v4, :cond_3b

    if-nez v3, :cond_3b

    .line 38
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v3

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v3, :cond_3a

    .line 39
    invoke-virtual {v7, v10}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 1216
    invoke-virtual {v0, v4, v15, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSoftRestrictedPermissionExemptForPackage(Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_25

    :cond_39
    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_3a
    or-int/2addr v2, v5

    :goto_24
    move v5, v2

    move v2, v11

    move v3, v12

    move-object v4, v13

    goto :goto_26

    .line 1225
    :cond_3b
    :goto_25
    invoke-static {v2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    goto :goto_24

    .line 1227
    :goto_26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void

    :cond_3c
    move v2, v11

    move v3, v12

    .line 1230
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 45
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 33
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown protection level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "for permission "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " while evaluating permission statefor appId "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and userId "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1229
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 18

    .line 908
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 39
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v8

    .line 910
    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v11

    .line 44
    invoke-virtual {v11}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v12

    move v13, v3

    :goto_1
    if-ge v13, v12, :cond_3

    .line 45
    invoke-virtual {v11, v13}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v7

    invoke-virtual {v11, v13}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 1568
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v14

    .line 1571
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v15, :cond_0

    goto :goto_3

    .line 38
    :cond_0
    invoke-virtual {v15}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_2

    .line 39
    invoke-virtual {v15, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 30
    check-cast v9, Ljava/lang/String;

    .line 1573
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v9, :cond_1

    .line 1574
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 913
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v9, v10

    move-object/from16 v10, p3

    .line 916
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    goto :goto_3

    :cond_1
    move/from16 v16, v5

    move/from16 v17, v6

    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 7

    .line 1797
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p1, :cond_2

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x2

    .line 1802
    invoke-static {p2, v3, v0, v5, v2}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1803
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 1804
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_0

    move-object v2, v4

    :cond_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 1857
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I
    .locals 4

    .line 1599
    invoke-virtual {p4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 72
    new-instance p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 p2, 0x2710

    iput p2, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    check-cast v1, Ljava/lang/String;

    .line 1601
    invoke-virtual {p4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 1602
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1558
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 1559
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1560
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 1606
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_2
    iget p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    return p0
.end method

.method public getObjectScheme()Ljava/lang/String;
    .locals 0

    .line 74
    const-string/jumbo p0, "permission"

    return-object p0
.end method

.method public final getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I
    .locals 0

    .line 1846
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I
    .locals 0

    .line 1854
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I
    .locals 0

    .line 1840
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 1818
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionTrees(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 1794
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 1822
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPrivilegedPermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 1488
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object p0

    .line 1489
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object p1

    .line 1490
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1492
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1497
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1498
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1502
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1503
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_5

    .line 1509
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1514
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is an APK in APEX but has permission allowlist on the system image, please bundle the allowlist in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " APEX instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1513
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getApexPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_4

    return-object p2

    :cond_4
    return-object p0

    .line 1528
    :cond_5
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1493
    :cond_6
    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getSignaturePermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1389
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object p0

    .line 1390
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1392
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1394
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1399
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1400
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1405
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getApexSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1406
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1410
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1414
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1418
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p2

    .line 1393
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectScheme()Ljava/lang/String;
    .locals 0

    .line 71
    const-string/jumbo p0, "uid"

    return-object p0
.end method

.method public final getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 1837
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V
    .locals 17

    move/from16 v7, p3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1239
    invoke-static/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I

    move-result v6

    .line 1240
    new-instance v8, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v9, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1580
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 1583
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_1

    .line 39
    invoke-virtual {v4, v11}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1585
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1586
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1242
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIndexedSet;Ljava/util/Collection;)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_c

    .line 45
    invoke-virtual {v8, v12}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 1245
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    .line 1246
    const-string v5, " in split permissions"

    if-eqz v3, :cond_b

    .line 48
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    if-ne v3, v9, :cond_a

    .line 1254
    invoke-virtual {v0, v1, v2, v7, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 1259
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getImplicitToSourcePermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v3, :cond_2

    goto/16 :goto_6

    .line 1261
    :cond_2
    invoke-virtual {v0, v1, v2, v7, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v13

    .line 38
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_8

    .line 39
    invoke-virtual {v3, v15}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    .line 1263
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v10, :cond_7

    .line 1267
    invoke-virtual {v0, v1, v2, v7, v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v9

    .line 1268
    sget-object v10, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v0

    .line 1269
    invoke-virtual {v10, v13}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v10

    if-eqz v0, :cond_3

    if-nez v10, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    if-eq v0, v10, :cond_4

    if-eqz v16, :cond_6

    :cond_4
    if-eqz v16, :cond_5

    const/4 v13, 0x0

    :cond_5
    const v0, 0xfffff8

    and-int/2addr v0, v9

    or-int/2addr v0, v13

    move v13, v0

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 1265
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown source permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/16 v0, 0x17

    if-lt v6, v0, :cond_9

    .line 1280
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1000

    .line 1282
    invoke-static {v13, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    :goto_4
    move v5, v0

    move v3, v7

    move-object/from16 v0, p0

    goto :goto_5

    :cond_9
    or-int/lit16 v0, v13, 0x1000

    goto :goto_4

    .line 1286
    :goto_5
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_a
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, p3

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1247
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown implicit permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    return-void
.end method

.method public final isCompatibilityPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 2

    .line 1294
    sget-object p0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    .line 1296
    invoke-virtual {v0}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1300
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1302
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-granting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to old package "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1299
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z
    .locals 0

    .line 871
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    .line 872
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p0

    return p0
.end method

.method public final isSignaturePermissionAllowlistForceEnforced()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    return p0
.end method

.method public final isSoftRestrictedPermissionExemptForPackage(Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z
    .locals 0

    .line 1544
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p3, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 1545
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p3, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/16 p0, 0x1d

    if-lt p2, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method

.method public migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 0

    .line 1914
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migrateSystemState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/access/MutableAccessState;)V

    return-void
.end method

.method public migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 0

    .line 1918
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migrateUserState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 6

    .line 93
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/UserState;

    .line 94
    invoke-virtual {v3}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v4, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 6

    .line 138
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 142
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 143
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 44
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 45
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 145
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_1

    .line 39
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v2

    .line 149
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 0

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->clearRestrictedPermissionImplicitExemption(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 3

    .line 155
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 161
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 45
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 156
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reported as removed before disabled system package is enabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V
    .locals 0

    .line 263
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    return-void
.end method

.method public onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .locals 2

    .line 77
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    .line 77
    invoke-interface {v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onStateMutated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7

    .line 106
    new-instance p2, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 39
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    if-nez v4, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 112
    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 113
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 114
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 115
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    .line 45
    invoke-virtual {p2, v3}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 38
    :cond_2
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    move v0, v2

    :goto_3
    if-ge v0, p2, :cond_5

    .line 39
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    if-eqz p4, :cond_4

    move-object v4, v3

    goto :goto_4

    :cond_4
    move-object v4, v1

    .line 125
    :goto_4
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 38
    :cond_5
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    move p4, v2

    :goto_6
    if-ge p4, p2, :cond_8

    .line 39
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-nez v0, :cond_6

    goto :goto_8

    .line 130
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v3

    move v4, v2

    :goto_7
    if-ge v4, v3, :cond_7

    .line 39
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v5

    .line 131
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-virtual {p0, p1, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 133
    :cond_7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_8
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 2

    .line 1769
    iget-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1770
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 1772
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature|privileged permissions not in privileged permission allowlist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1770
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 5

    .line 81
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    .line 2013
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 82
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 88
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 0

    .line 1778
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    return-void
.end method

.method public parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 0

    .line 1786
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public final removePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)V
    .locals 2

    .line 1833
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p0

    .line 33
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 10

    .line 269
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 270
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 271
    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 272
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 2111
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v5, p3

    goto/16 :goto_6

    .line 48
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 135
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1568
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 1571
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v3, :cond_5

    goto :goto_3

    .line 38
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_7

    .line 39
    invoke-virtual {v3, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 30
    check-cast v8, Ljava/lang/String;

    .line 1573
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v8, :cond_6

    .line 1574
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 279
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 280
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 285
    :cond_7
    :goto_3
    invoke-virtual {p0, p1, v4, p3, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v2

    const/16 v3, 0x180

    .line 286
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_1

    .line 291
    :cond_8
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/16 v3, 0x8

    .line 295
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-nez v3, :cond_b

    const/16 v3, 0x200

    .line 296
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    const/16 v3, 0x218

    .line 300
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    goto :goto_5

    :cond_b
    :goto_4
    or-int/lit8 v2, v2, 0x10

    :goto_5
    const v3, 0xf00060

    .line 305
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    const/16 v3, 0x400

    .line 306
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_c

    or-int/lit16 v2, v2, 0x1000

    :cond_c
    move-object v3, p1

    move v5, p3

    move v7, v2

    move-object v2, p0

    .line 309
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :goto_6
    move-object p0, v2

    move-object p1, v3

    move p3, v5

    goto/16 :goto_0

    :cond_d
    :goto_7
    return-void
.end method

.method public final revokeHeartRatePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 18

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 771
    invoke-static/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I

    move-result v3

    const/16 v4, 0x24

    if-lt v3, v4, :cond_0

    goto/16 :goto_a

    .line 778
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 1571
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const-string v5, "android.permission.BODY_SENSORS"

    if-nez v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    .line 39
    invoke-virtual {v4, v9}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 30
    check-cast v10, Ljava/lang/String;

    .line 1573
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v10, :cond_3

    .line 1574
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 779
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 782
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    .line 1571
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const-string v9, "android.permission.health.READ_HEART_RATE"

    if-nez v8, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 38
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_4

    .line 39
    invoke-virtual {v8, v11}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 30
    check-cast v12, Ljava/lang/String;

    .line 1573
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v12, :cond_6

    .line 1574
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 783
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 786
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    .line 1571
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const-string v11, "android.permission.BODY_SENSORS_BACKGROUND"

    if-nez v10, :cond_8

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 38
    :cond_8
    invoke-virtual {v10}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_7

    .line 39
    invoke-virtual {v10, v13}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    .line 30
    check-cast v14, Ljava/lang/String;

    .line 1573
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v14, :cond_9

    .line 1574
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 788
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v14

    .line 787
    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 791
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v10

    .line 1571
    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const-string v13, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    if-nez v12, :cond_b

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    .line 38
    :cond_b
    invoke-virtual {v12}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v14

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v14, :cond_a

    .line 39
    invoke-virtual {v12, v15}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    .line 30
    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 1573
    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v6, :cond_c

    .line 1574
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 793
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    .line 792
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 797
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    .line 44
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v10

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v10, :cond_13

    .line 45
    invoke-virtual {v7, v12}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v14

    invoke-virtual {v7, v12}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/UserState;

    .line 800
    invoke-virtual {v0, v1, v2, v14, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z

    move-result v15

    if-eqz v3, :cond_e

    if-eqz v4, :cond_e

    move/from16 v16, v3

    .line 803
    invoke-virtual {v0, v1, v2, v14, v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z

    move-result v3

    if-eq v15, v3, :cond_f

    if-eqz v15, :cond_d

    .line 807
    invoke-virtual {v0, v1, v2, v14, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/4 v15, 0x0

    :cond_d
    if-eqz v3, :cond_f

    .line 813
    invoke-virtual {v0, v1, v2, v14, v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    goto :goto_9

    :cond_e
    move/from16 v16, v3

    .line 821
    :cond_f
    :goto_9
    invoke-virtual {v0, v1, v2, v14, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v15, :cond_10

    .line 828
    invoke-virtual {v0, v1, v2, v14, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v3, 0x0

    :cond_10
    if-eqz v8, :cond_12

    if-eqz v6, :cond_12

    .line 841
    invoke-virtual {v0, v1, v2, v14, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z

    move-result v15

    if-eq v3, v15, :cond_12

    if-eqz v3, :cond_11

    .line 848
    invoke-virtual {v0, v1, v2, v14, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_11
    if-eqz v15, :cond_12

    .line 855
    invoke-virtual {v0, v1, v2, v14, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_12
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    goto :goto_8

    :cond_13
    :goto_a
    return-void
.end method

.method public final revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 0

    .line 704
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeStorageAndMediaPermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 705
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeHeartRatePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    return-void
.end method

.method public final revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z
    .locals 8

    .line 881
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoking runtime permission for appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 880
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v1

    const/16 v3, 0x180

    .line 886
    invoke-static {v1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 889
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not allowed to revoke "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for appId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 887
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0xf00278

    .line 895
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 900
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final revokeStorageAndMediaPermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 11

    .line 710
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 711
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    .line 1571
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_e

    .line 39
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 1573
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v5, :cond_d

    .line 1574
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 722
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v0

    .line 723
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v1

    const/16 v2, 0x1d

    const/4 v4, 0x1

    if-lt v0, v2, :cond_1

    if-ge v1, v2, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-ge v0, v2, :cond_2

    if-lt v1, v2, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    .line 733
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    .line 1571
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v2, :cond_4

    :cond_3
    move v1, v3

    goto :goto_4

    .line 38
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v6

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_3

    .line 39
    invoke-virtual {v2, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 30
    check-cast v8, Ljava/lang/String;

    .line 1573
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v8, :cond_5

    .line 1574
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 734
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 737
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 1571
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v6, :cond_7

    :cond_6
    move v2, v3

    goto :goto_6

    .line 38
    :cond_7
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v7

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_6

    .line 39
    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 30
    check-cast v9, Ljava/lang/String;

    .line 1573
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v9, :cond_8

    .line 1574
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 738
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v9

    if-eqz v9, :cond_8

    move v2, v4

    goto :goto_6

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :goto_6
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v5, :cond_c

    .line 747
    :goto_7
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v1

    :goto_8
    if-ge v3, v1, :cond_c

    .line 45
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/UserState;

    .line 748
    invoke-virtual {v5}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v5, :cond_b

    .line 65
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_9
    const/4 v7, -0x1

    if-ge v7, v6, :cond_b

    .line 54
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    .line 755
    sget-object v9, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v9, v7}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x10

    .line 756
    invoke-static {v8, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 758
    invoke-virtual {p0, p1, p2, v2, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    return-void

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    :goto_a
    return-void
.end method

.method public serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    .line 1782
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    return-void
.end method

.method public serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 0

    .line 1790
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    return-void
.end method

.method public final setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z
    .locals 7

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    .line 1865
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setSignaturePermissionAllowlistForceEnforced(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    return-void
.end method

.method public final shouldGrantPermissionByProtectionFlags(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 8

    .line 1614
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1615
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getKnownPackages()Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v1

    .line 1616
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v4, 0x10

    .line 105
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 63
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v6, 0x4000

    .line 96
    invoke-static {v3, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1617
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1619
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1623
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v3, :cond_1

    .line 1624
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 1626
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    .line 33
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1626
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1627
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v5

    goto :goto_1

    :cond_2
    move p0, v4

    goto :goto_1

    .line 1629
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_4

    return v5

    .line 63
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x80

    .line 99
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1635
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 p1, 0x17

    if-ge p0, p1, :cond_5

    return v5

    .line 63
    :cond_5
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x100

    .line 84
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    .line 1643
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x7

    .line 1644
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    return v5

    .line 63
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x200

    .line 129
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x4

    .line 1651
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v5

    .line 63
    :cond_8
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x400

    .line 102
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1657
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_9

    return v5

    .line 63
    :cond_9
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x8000000

    .line 90
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1663
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 147
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 1663
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v5

    .line 63
    :cond_a
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x800

    .line 120
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1670
    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v5

    .line 63
    :cond_b
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x10000

    .line 123
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x6

    .line 1678
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v5

    .line 63
    :cond_c
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x80000

    .line 75
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0xa

    .line 1685
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    return v5

    .line 63
    :cond_d
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x100000

    .line 81
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 p0, 0xb

    .line 1692
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v5

    .line 63
    :cond_e
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x200000

    .line 69
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xc

    .line 1700
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v5

    .line 63
    :cond_f
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x800000

    .line 72
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 p0, 0xf

    .line 1707
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    return v5

    .line 63
    :cond_10
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x2000000

    .line 108
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_11

    const/16 p0, 0x11

    .line 1712
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v5

    .line 63
    :cond_11
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x400000

    .line 93
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 1716
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    return v5

    :cond_12
    return v4
.end method

.method public final shouldGrantPermissionBySignature(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 8

    .line 1323
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 1325
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    .line 36
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1325
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1326
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1327
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1329
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    const-string v4, "android"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 1330
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1331
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    .line 1333
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-ne v1, v7, :cond_1

    goto :goto_1

    .line 1337
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1338
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v7

    :goto_2
    if-nez v0, :cond_4

    return v6

    .line 36
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1349
    invoke-static {v0, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1351
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1354
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1356
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v0

    .line 1357
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v0, :cond_5

    .line 1358
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    .line 1360
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 33
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1360
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 33
    :cond_6
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1369
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getSignaturePermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1372
    sget-object p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 33
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1374
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for package "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") not in signature permission allowlist"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1371
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    if-eqz p0, :cond_8

    :cond_7
    return v6

    :cond_8
    :goto_3
    return v7
.end method

.method public final shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 3

    .line 33
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1728
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v2, 0x10

    .line 105
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1731
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1736
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p1

    const p2, 0x8000

    .line 126
    invoke-static {p1, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1740
    sget-object p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1742
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be granted to privileged vendor (or odm) app "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because it isn\'t a vendorPrivileged permission"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1739
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 63
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p3

    const/16 v1, 0x4000

    .line 96
    invoke-static {p3, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1751
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1753
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/permission/PermissionAllowlist;->getOemAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1761
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1759
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OEM permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " requested by package "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be explicitly declared granted or not"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1757
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v2
.end method

.method public final trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 13

    .line 683
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1580
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    .line 1583
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    .line 39
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1585
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 1586
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 692
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIndexedSet;Ljava/util/Collection;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v3

    :goto_1
    if-ge v5, v3, :cond_4

    .line 45
    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v9

    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/UserState;

    .line 695
    invoke-virtual {v4}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v4, :cond_3

    .line 65
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    sub-int/2addr v6, v2

    move v12, v6

    :goto_2
    const/4 v6, -0x1

    if-ge v6, v12, :cond_3

    .line 54
    invoke-virtual {v4, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 696
    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    .line 697
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    goto :goto_3

    :cond_2
    move-object v6, p0

    move-object v7, p1

    move v8, p2

    :goto_3
    add-int/lit8 v12, v12, -0x1

    move-object p0, v6

    move-object p1, v7

    move p2, v8

    goto :goto_2

    :cond_3
    move-object v6, p0

    move-object v7, p1

    move v8, p2

    add-int/lit8 v5, v5, 0x1

    move-object p0, v6

    move-object p1, v7

    move p2, v8

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 19

    move-object/from16 v0, p2

    .line 604
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 605
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    goto/16 :goto_d

    .line 610
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 613
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_2
    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ge v8, v6, :cond_8

    .line 54
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    check-cast v8, Ljava/lang/String;

    .line 36
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 618
    invoke-static {v10, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v1, :cond_4

    .line 620
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    .line 38
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v9

    :goto_3
    if-ge v12, v11, :cond_4

    .line 39
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 51
    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 621
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_6

    .line 623
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 38
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v9

    :goto_4
    if-ge v12, v11, :cond_6

    .line 39
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 30
    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 624
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 627
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    invoke-static {v8, v9, v7, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionTrees()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->removeAt(I)Ljava/lang/Object;

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 631
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    sub-int/2addr v6, v7

    :goto_6
    if-ge v8, v6, :cond_10

    .line 54
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/permission/Permission;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 635
    invoke-virtual {v12, v13, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionIfDynamic(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v11

    .line 636
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v14

    .line 637
    invoke-static {v14, v9, v7, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v14

    .line 638
    invoke-virtual {v14}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v14

    .line 639
    invoke-virtual {v14, v6, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->putAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v11}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 641
    invoke-static {v11, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v1, :cond_b

    .line 643
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v11

    .line 38
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v14

    move v15, v9

    :goto_7
    if-ge v15, v14, :cond_b

    .line 39
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 51
    check-cast v16, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 644
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v17

    if-nez v17, :cond_a

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    :goto_8
    move v8, v7

    move-object v7, v2

    move-object/from16 v2, p3

    goto/16 :goto_c

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v8, -0x1

    goto :goto_7

    :cond_b
    if-eqz v4, :cond_d

    .line 646
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 38
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    move v14, v9

    :goto_9
    if-ge v14, v11, :cond_d

    .line 39
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 30
    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 647
    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-nez v16, :cond_c

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 655
    :cond_d
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v11

    move v14, v9

    :goto_a
    if-ge v14, v11, :cond_f

    .line 39
    invoke-virtual {v8, v14}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v15

    .line 656
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v7

    :goto_b
    if-ge v9, v7, :cond_e

    move/from16 v16, v14

    .line 45
    invoke-virtual {v2, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v14

    invoke-virtual {v2, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v17

    check-cast v17, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const/16 v17, 0x0

    move/from16 v18, v16

    move-object/from16 v16, v10

    move/from16 v10, v18

    .line 657
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-object/from16 v12, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, p1

    move v14, v10

    move-object v10, v12

    move-object/from16 v12, p0

    goto :goto_b

    :cond_e
    move-object v12, v10

    move v10, v14

    add-int/lit8 v14, v10, 0x1

    move-object/from16 v13, p1

    move-object v10, v12

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v12, p0

    goto :goto_a

    :cond_f
    move-object v12, v10

    .line 660
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v2, v9, v8, v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->removeAt(I)Ljava/lang/Object;

    move-object/from16 v2, p3

    .line 80
    invoke-virtual {v2, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v6, v6, -0x1

    move-object v2, v7

    move v7, v8

    const/4 v8, -0x1

    goto/16 :goto_6

    :cond_10
    :goto_d
    return-void
.end method

.method public final updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V
    .locals 9

    .line 33
    invoke-virtual {p4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 215
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    .line 216
    invoke-static {v0, p5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    and-int/2addr p5, p6

    or-int/2addr p5, v1

    if-ne v0, p5, :cond_0

    goto/16 :goto_6

    :cond_0
    const p6, 0x38000

    .line 220
    invoke-static {p5, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result p6

    .line 132
    invoke-virtual {p4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    const/high16 v2, 0x40000

    if-eqz v1, :cond_1

    if-nez p6, :cond_1

    or-int/2addr p5, v2

    .line 226
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x80

    .line 227
    invoke-static {p5, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p5

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {p5, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p5

    .line 138
    :cond_2
    :goto_0
    invoke-virtual {p4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v1, 0x8

    invoke-static {p4, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p4

    const/high16 v8, 0x80000

    if-eqz p4, :cond_6

    if-nez p6, :cond_6

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 234
    invoke-static/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I

    move-result p0

    move-object p4, v4

    .line 1568
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p6

    .line 1571
    invoke-virtual {p6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v2, :cond_3

    goto :goto_2

    .line 38
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    .line 39
    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 1573
    invoke-virtual {p6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v5, :cond_4

    .line 1574
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 236
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 237
    invoke-virtual {v1, v5, p0, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSoftRestrictedPermissionExemptForPackage(Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    or-int p0, p5, v8

    :goto_3
    move p5, p0

    goto :goto_5

    :cond_6
    move-object v1, p0

    move-object p4, v4

    .line 250
    :goto_4
    invoke-static {p5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p0

    goto :goto_3

    :goto_5
    if-ne v0, p5, :cond_7

    :goto_6
    return-void

    :cond_7
    move-object p0, v1

    .line 255
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z
    .locals 5

    .line 1874
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    .line 1884
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    .line 1878
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to update permission flags for missing user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1882
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/UserState;

    .line 1883
    invoke-virtual {v0}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .line 1882
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 1884
    invoke-static {v0, p4, v2}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1885
    invoke-static {v0, p5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v3

    and-int/2addr p5, p6

    or-int/2addr p5, v3

    if-ne v0, p5, :cond_1

    return v1

    .line 1889
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    const/4 p6, 0x2

    const/4 v3, 0x0

    invoke-static {p1, p3, v1, p6, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p6

    const/4 v4, 0x1

    if-eqz p6, :cond_2

    goto :goto_0

    .line 1890
    :cond_2
    new-instance p6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {p6, v3, v4, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p1, p2, p6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 1890
    :goto_0
    check-cast p6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 1891
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p6, p4, v3, v2}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    invoke-virtual {p6}, Lcom/android/server/permission/access/immutable/IndexedMap;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_3

    .line 1893
    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 1895
    :cond_3
    iget-object p6, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {p6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    .line 39
    invoke-virtual {p6, v1}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    move p1, p2

    move p2, p3

    move-object p3, p4

    move p4, v0

    .line 1896
    invoke-interface/range {p0 .. p5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onPermissionFlagsChanged(IILjava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    move-object p4, p3

    move p3, p2

    move p2, p1

    goto :goto_1

    :cond_4
    return v4
.end method

.method public final updatePermissionIfDynamic(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/permission/access/permission/Permission;
    .locals 9

    .line 42
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 33
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 670
    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    .line 674
    :cond_0
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 675
    iput-object p1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 677
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v4

    const/16 v7, 0x34

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 672
    invoke-static/range {v0 .. v8}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v0, p2

    return-object v0
.end method

.method public upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 0

    .line 1926
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V

    return-void
.end method
