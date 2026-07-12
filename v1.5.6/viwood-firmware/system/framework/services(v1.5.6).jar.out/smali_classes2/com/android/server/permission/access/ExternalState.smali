.class public abstract Lcom/android/server/permission/access/ExternalState;
.super Ljava/lang/Object;
.source "AccessState.kt"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public configPermissions:Ljava/util/Map;

.field public disabledSystemPackageStates:Ljava/util/Map;

.field public implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

.field public isLeanback:Z

.field public isSystemReady:Z

.field public knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

.field public packageStates:Ljava/util/Map;

.field public permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

.field public privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 102
    iput-object p4, p0, Lcom/android/server/permission/access/ExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 114
    iput-object p2, p0, Lcom/android/server/permission/access/ExternalState;->packageStates:Ljava/util/Map;

    .line 117
    iput-object p3, p0, Lcom/android/server/permission/access/ExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 123
    iput-object p5, p0, Lcom/android/server/permission/access/ExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 126
    iput-boolean p6, p0, Lcom/android/server/permission/access/ExternalState;->isLeanback:Z

    .line 129
    iput-object p7, p0, Lcom/android/server/permission/access/ExternalState;->configPermissions:Ljava/util/Map;

    .line 133
    iput-object p8, p0, Lcom/android/server/permission/access/ExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 136
    iput-object p9, p0, Lcom/android/server/permission/access/ExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 140
    iput-object p10, p0, Lcom/android/server/permission/access/ExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 143
    iput-boolean p11, p0, Lcom/android/server/permission/access/ExternalState;->isSystemReady:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/permission/access/ExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V

    return-void
.end method


# virtual methods
.method public final getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;

    return-object p0
.end method

.method public final getAppIdPackageNamesReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getConfigPermissions()Ljava/util/Map;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->configPermissions:Ljava/util/Map;

    return-object p0
.end method

.method public final getDisabledSystemPackageStates()Ljava/util/Map;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getImplicitToSourcePermissions()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getKnownPackages()Lcom/android/server/permission/access/immutable/IntMap;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    return-object p0
.end method

.method public final getPackageStates()Ljava/util/Map;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->packageStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    return-object p0
.end method

.method public final getPrivilegedPermissionAllowlistPackages()Lcom/android/server/permission/access/immutable/IndexedListSet;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    return-object p0
.end method

.method public final getUserIds()Lcom/android/server/permission/access/immutable/IntSet;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IntSet;

    return-object p0
.end method

.method public final getUserIdsReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final isLeanback()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/server/permission/access/ExternalState;->isLeanback:Z

    return p0
.end method

.method public final isSystemReady()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/server/permission/access/ExternalState;->isSystemReady:Z

    return p0
.end method

.method public final setConfigPermissions(Ljava/util/Map;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->configPermissions:Ljava/util/Map;

    return-void
.end method

.method public final setDisabledSystemPackageStates(Ljava/util/Map;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    return-void
.end method

.method public final setImplicitToSourcePermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    return-void
.end method

.method public final setKnownPackages(Lcom/android/server/permission/access/immutable/IntMap;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    return-void
.end method

.method public final setLeanback(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/server/permission/access/ExternalState;->isLeanback:Z

    return-void
.end method

.method public final setPackageStates(Ljava/util/Map;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->packageStates:Ljava/util/Map;

    return-void
.end method

.method public final setPermissionAllowlist(Lcom/android/server/pm/permission/PermissionAllowlist;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    return-void
.end method

.method public final setPrivilegedPermissionAllowlistPackages(Lcom/android/server/permission/access/immutable/IndexedListSet;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    return-void
.end method

.method public final setSystemReady(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/android/server/permission/access/ExternalState;->isSystemReady:Z

    return-void
.end method

.method public toMutable()Lcom/android/server/permission/access/MutableExternalState;
    .locals 1

    .line 146
    new-instance v0, Lcom/android/server/permission/access/MutableExternalState;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/ExternalState;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->toMutable()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object p0

    return-object p0
.end method
