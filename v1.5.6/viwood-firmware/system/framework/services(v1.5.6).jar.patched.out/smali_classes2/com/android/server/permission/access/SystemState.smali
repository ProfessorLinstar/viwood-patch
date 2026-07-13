.class public abstract Lcom/android/server/permission/access/SystemState;
.super Ljava/lang/Object;
.source "AccessState.kt"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public writeMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;I)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 274
    iput-object p2, p0, Lcom/android/server/permission/access/SystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 275
    iput-object p3, p0, Lcom/android/server/permission/access/SystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 287
    iput p4, p0, Lcom/android/server/permission/access/SystemState;->writeMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/SystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;I)V

    return-void
.end method


# virtual methods
.method public final getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPermissionGroupsReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPermissionTreesReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPermissionsReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public getWriteMode()I
    .locals 0

    .line 287
    iget p0, p0, Lcom/android/server/permission/access/SystemState;->writeMode:I

    return p0
.end method

.method public setWriteMode(I)V
    .locals 0

    .line 288
    iput p1, p0, Lcom/android/server/permission/access/SystemState;->writeMode:I

    return-void
.end method

.method public toMutable()Lcom/android/server/permission/access/MutableSystemState;
    .locals 1

    .line 290
    new-instance v0, Lcom/android/server/permission/access/MutableSystemState;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/MutableSystemState;-><init>(Lcom/android/server/permission/access/SystemState;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->toMutable()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    return-object p0
.end method
