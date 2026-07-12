.class public final Lcom/android/server/permission/access/MutableSystemState;
.super Lcom/android/server/permission/access/SystemState;
.source "AccessState.kt"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 309
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 310
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v4, v2, v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v4}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 311
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v5, v2, v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v4, v5}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    const/4 v2, 0x0

    .line 308
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/server/permission/access/MutableSystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/SystemState;)V
    .locals 3

    .line 318
    invoke-virtual {p1}, Lcom/android/server/permission/access/SystemState;->getPermissionGroupsReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Lcom/android/server/permission/access/SystemState;->getPermissionTreesReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v1

    .line 320
    invoke-virtual {p1}, Lcom/android/server/permission/access/SystemState;->getPermissionsReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p1

    const/4 v2, 0x0

    .line 317
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/server/permission/access/MutableSystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 300
    invoke-direct/range {v0 .. v5}, Lcom/android/server/permission/access/SystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final mutatePermissionGroups()Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionGroupsReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    return-object p0
.end method

.method public final mutatePermissionTrees()Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .locals 0

    .line 328
    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTreesReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    return-object p0
.end method

.method public final mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .locals 0

    .line 330
    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionsReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    return-object p0
.end method

.method public requestWriteMode(I)V
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getWriteMode()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/SystemState;->setWriteMode(I)V

    return-void
.end method
