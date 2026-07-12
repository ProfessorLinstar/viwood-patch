.class public final Lcom/android/server/permission/access/MutableExternalState;
.super Lcom/android/server/permission/access/ExternalState;
.source "AccessState.kt"


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 178
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v2}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move-object v0, v2

    .line 179
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move v4, v3

    .line 180
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move v5, v4

    .line 181
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v6, v0, v5, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v4, v6}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move v6, v5

    .line 182
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-direct {v5, v0, v6, v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 185
    new-instance v8, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v8, v0, v6, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 186
    new-instance v9, Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-direct {v9}, Lcom/android/server/pm/permission/PermissionAllowlist;-><init>()V

    .line 187
    new-instance v10, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v10, v0, v6, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 177
    invoke-direct/range {v0 .. v11}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/ExternalState;)V
    .locals 13

    .line 194
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getUserIdsReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v2

    .line 195
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    .line 196
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v4

    .line 197
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNamesReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v5

    .line 198
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getKnownPackages()Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v6

    .line 199
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->isLeanback()Z

    move-result v7

    .line 200
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getConfigPermissions()Ljava/util/Map;

    move-result-object v8

    .line 201
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPrivilegedPermissionAllowlistPackages()Lcom/android/server/permission/access/immutable/IndexedListSet;

    move-result-object v9

    .line 202
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object v10

    .line 203
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getImplicitToSourcePermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v11

    .line 204
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->isSystemReady()Z

    move-result v12

    move-object v1, p0

    .line 193
    invoke-direct/range {v1 .. v12}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 163
    invoke-direct/range {v0 .. v12}, Lcom/android/server/permission/access/ExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final mutateAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNamesReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final mutateUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;
    .locals 0

    .line 207
    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getUserIdsReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    return-object p0
.end method

.method public final setConfigPermissionsPublic(Ljava/util/Map;)V
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setConfigPermissions(Ljava/util/Map;)V

    return-void
.end method

.method public final setDisabledSystemPackageStatesPublic(Ljava/util/Map;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setDisabledSystemPackageStates(Ljava/util/Map;)V

    return-void
.end method

.method public final setImplicitToSourcePermissionsPublic(Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setImplicitToSourcePermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)V

    return-void
.end method

.method public final setKnownPackagesPublic(Lcom/android/server/permission/access/immutable/IntMap;)V
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setKnownPackages(Lcom/android/server/permission/access/immutable/IntMap;)V

    return-void
.end method

.method public final setLeanbackPublic(Z)V
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setLeanback(Z)V

    return-void
.end method

.method public final setPackageStatesPublic(Ljava/util/Map;)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setPackageStates(Ljava/util/Map;)V

    return-void
.end method

.method public final setPermissionAllowlistPublic(Lcom/android/server/pm/permission/PermissionAllowlist;)V
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setPermissionAllowlist(Lcom/android/server/pm/permission/PermissionAllowlist;)V

    return-void
.end method

.method public final setPrivilegedPermissionAllowlistPackagesPublic(Lcom/android/server/permission/access/immutable/IndexedListSet;)V
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setPrivilegedPermissionAllowlistPackages(Lcom/android/server/permission/access/immutable/IndexedListSet;)V

    return-void
.end method

.method public final setSystemReadyPublic(Z)V
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setSystemReady(Z)V

    return-void
.end method
