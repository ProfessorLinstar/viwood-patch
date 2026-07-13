.class public final Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
.super Lcom/android/server/permission/access/appop/BaseAppOpPolicy;
.source "PackageAppOpPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appop/PackageAppOpPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final migration:Lcom/android/server/permission/access/appop/PackageAppOpMigration;

.field public volatile onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final onAppOpModeChangedListenersLock:Ljava/lang/Object;

.field public final upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->Companion:Lcom/android/server/permission/access/appop/PackageAppOpPolicy$Companion;

    .line 165
    const-class v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpPersistence;

    invoke-direct {v0}, Lcom/android/server/permission/access/appop/PackageAppOpPersistence;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;-><init>(Lcom/android/server/permission/access/appop/BaseAppOpPersistence;)V

    .line 30
    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpMigration;

    invoke-direct {v0}, Lcom/android/server/permission/access/appop/PackageAppOpMigration;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/PackageAppOpMigration;

    .line 32
    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;-><init>(Lcom/android/server/permission/access/appop/PackageAppOpPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    .line 36
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addOnAppOpModeChangedListener(Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    invoke-static {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedListSetExtensionsKt;->plus(Lcom/android/server/permission/access/immutable/IndexedListSet;Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 118
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getAppOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 80
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 83
    :goto_0
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getAppOpModes(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;I)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 60
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubjectScheme()Ljava/lang/String;
    .locals 0

    .line 40
    const-string/jumbo p0, "package"

    return-object p0
.end method

.method public migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/PackageAppOpMigration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/PackageAppOpMigration;->migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 6

    .line 47
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/UserState;

    .line 48
    invoke-virtual {v2}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 51
    invoke-static {v3, v1, v0, v4, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .locals 2

    .line 43
    iget-object p0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;

    .line 43
    invoke-virtual {v1}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;->onStateMutated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeAppOpModes(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)Z
    .locals 2

    .line 63
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->indexOfKey(I)I

    move-result p0

    const/4 p3, 0x0

    if-gez p0, :cond_0

    return p3

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/UserState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    return p3

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 73
    invoke-static {p1, p0, p3, v0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    const/4 p0, 0x1

    return p0
.end method

.method public final setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 6

    .line 91
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    sget-object p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to set app op mode for missing user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 95
    :cond_0
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v0

    .line 97
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/UserState;

    .line 98
    invoke-virtual {v2}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v2

    .line 97
    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, p4, v3}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, p5, :cond_1

    return v1

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, p3, v1, v3, v4}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->mutate(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v3, v4, v5, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p1, p2, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 104
    :goto_0
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 105
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, p4, v4, v0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_4

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;

    move-object p1, p2

    move p2, p3

    move-object p3, p4

    move p4, v2

    .line 110
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;->onAppOpModeChanged(Ljava/lang/String;ILjava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    goto :goto_1

    :cond_4
    return v5
.end method

.method public upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V

    return-void
.end method
