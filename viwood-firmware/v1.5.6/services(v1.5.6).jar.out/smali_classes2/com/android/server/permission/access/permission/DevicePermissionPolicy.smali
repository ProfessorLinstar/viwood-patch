.class public final Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "DevicePermissionPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/DevicePermissionPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public volatile listeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final listenersLock:Ljava/lang/Object;

.field public final persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->Companion:Lcom/android/server/permission/access/permission/DevicePermissionPolicy$Companion;

    .line 317
    const-class v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Lcom/android/server/permission/access/SchemePolicy;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    .line 40
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listenersLock:Ljava/lang/Object;

    return-void
.end method

.method private final trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 17

    move/from16 v2, p2

    .line 153
    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 39
    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 190
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    .line 191
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 155
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIndexedSet;Ljava/util/Collection;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v9

    .line 44
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v10

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_5

    .line 45
    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v4

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/UserState;

    .line 158
    invoke-virtual {v0}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    if-eqz v12, :cond_4

    .line 58
    invoke-virtual {v12}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v0

    sub-int/2addr v0, v8

    move v13, v0

    :goto_2
    const/4 v14, -0x1

    if-ge v14, v13, :cond_4

    .line 53
    invoke-virtual {v12, v13}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v13}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/permission/access/immutable/IndexedMap;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 65
    invoke-virtual {v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    sub-int/2addr v0, v8

    :goto_3
    if-ge v14, v0, :cond_3

    .line 54
    invoke-virtual {v15, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 163
    invoke-virtual {v7, v5}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v16, v0

    move-object/from16 v0, p0

    .line 164
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;ILjava/lang/String;I)Z

    goto :goto_4

    :cond_2
    move/from16 v16, v0

    :goto_4
    add-int/lit8 v0, v16, -0x1

    move/from16 v2, p2

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v13, -0x1

    move/from16 v2, p2

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p2

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public final addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    invoke-static {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedListSetExtensionsKt;->plus(Lcom/android/server/permission/access/immutable/IndexedListSet;Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;I)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 234
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getObjectScheme()Ljava/lang/String;
    .locals 0

    .line 47
    const-string p0, "device-permission"

    return-object p0
.end method

.method public final getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 212
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz p0, :cond_0

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p5, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public getSubjectScheme()Ljava/lang/String;
    .locals 0

    .line 44
    const-string/jumbo p0, "uid"

    return-object p0
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 6

    .line 54
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

    .line 55
    invoke-virtual {v3}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v4, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onDeviceIdRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .locals 10

    .line 80
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
    if-ge v2, v0, :cond_2

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/UserState;

    .line 81
    invoke-virtual {v4}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    const/4 v6, -0x1

    if-ge v6, v5, :cond_1

    .line 53
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    .line 83
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v3, v1, v8, v9}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v7

    .line 85
    invoke-virtual {v7, v6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-nez v6, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    invoke-virtual {v6, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 0

    .line 105
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    .line 109
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 110
    invoke-direct {p0, p1, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    :cond_0
    return-void
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    return-void
.end method

.method public onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .locals 2

    .line 50
    iget-object p0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;

    .line 50
    invoke-interface {v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;->onStateMutated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2

    .line 38
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    .line 39
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 11

    .line 129
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

    goto/16 :goto_4

    .line 130
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 131
    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 134
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/UserState;

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 135
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    if-nez v0, :cond_3

    goto/16 :goto_4

    .line 136
    :cond_3
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 390
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    const/4 v6, 0x0

    move v8, v6

    :goto_1
    if-ge v8, v5, :cond_6

    .line 39
    invoke-virtual {v3, v8}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 30
    check-cast v9, Ljava/lang/String;

    .line 178
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 179
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 139
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 140
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move v6, p3

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 44
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v9

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_4

    .line 45
    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 146
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;ILjava/lang/String;I)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :goto_3
    move-object p0, v2

    move-object p1, v3

    move p3, v6

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    return-void
.end method

.method public final setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;ILjava/lang/String;I)Z
    .locals 8

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    .line 246
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final trimDevicePermissionStates(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V
    .locals 11

    .line 63
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
    if-ge v2, v0, :cond_4

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/UserState;

    .line 64
    invoke-virtual {v4}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    const/4 v6, -0x1

    if-ge v6, v5, :cond_3

    .line 53
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    .line 66
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v8, v3, v1, v9, v10}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v8

    .line 68
    invoke-virtual {v8, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-nez v7, :cond_0

    goto :goto_3

    .line 58
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_2
    if-ge v6, v8, :cond_2

    .line 53
    invoke-virtual {v7, v8}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v9, Ljava/lang/String;

    .line 71
    invoke-interface {p2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 85
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;ILjava/lang/String;II)Z
    .locals 6

    .line 263
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    .line 267
    sget-object p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to update permission flags for missing user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/UserState;

    .line 272
    invoke-virtual {v0}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 274
    :goto_0
    invoke-static {v0, p5, v2}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 275
    invoke-static {v0, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v4

    and-int/2addr p6, p7

    or-int/2addr p6, v4

    if-ne v0, p6, :cond_2

    return v1

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    const/4 p7, 0x2

    invoke-static {p1, p4, v1, p7, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p7

    const/4 v4, 0x1

    if-eqz p7, :cond_3

    goto :goto_1

    .line 282
    :cond_3
    new-instance p7, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-direct {p7, v3, v4, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p1, p2, p7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 282
    :goto_1
    check-cast p7, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 75
    invoke-virtual {p7, p3}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->mutate(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 291
    :cond_4
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v5, v3, v4, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p7, p3, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 291
    :goto_2
    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 292
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, p5, v3, v2}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    invoke-virtual {p7, p3}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 295
    invoke-virtual {p7}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_5

    .line 296
    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 299
    :cond_5
    iget-object p7, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {p7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_6

    .line 39
    invoke-virtual {p7, v1}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;

    move p1, p2

    move p2, p4

    move-object p4, p5

    move p5, v0

    .line 300
    invoke-interface/range {p0 .. p6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    move-object p5, p4

    move p4, p2

    move p2, p1

    goto :goto_3

    :cond_6
    return v4
.end method
