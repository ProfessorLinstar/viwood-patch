.class public abstract Lcom/android/server/permission/access/UserState;
.super Ljava/lang/Object;
.source "AccessState.kt"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public defaultPermissionGrantFingerprint:Ljava/lang/String;

.field public final packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public writeMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;I)V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/android/server/permission/access/UserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 383
    iput-object p2, p0, Lcom/android/server/permission/access/UserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 384
    iput-object p3, p0, Lcom/android/server/permission/access/UserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 385
    iput-object p4, p0, Lcom/android/server/permission/access/UserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 386
    iput-object p5, p0, Lcom/android/server/permission/access/UserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 405
    iput-object p6, p0, Lcom/android/server/permission/access/UserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    .line 408
    iput p7, p0, Lcom/android/server/permission/access/UserState;->writeMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/permission/access/UserState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;

    return-object p0
.end method

.method public final getAppIdAppOpModesReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;

    return-object p0
.end method

.method public final getAppIdDevicePermissionFlagsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;

    return-object p0
.end method

.method public final getAppIdPermissionFlagsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getDefaultPermissionGrantFingerprint()Ljava/lang/String;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    return-object p0
.end method

.method public final getPackageAppOpModesReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPackageVersionsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public getWriteMode()I
    .locals 0

    .line 408
    iget p0, p0, Lcom/android/server/permission/access/UserState;->writeMode:I

    return p0
.end method

.method public final setDefaultPermissionGrantFingerprint(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/server/permission/access/UserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    return-void
.end method

.method public setWriteMode(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/android/server/permission/access/UserState;->writeMode:I

    return-void
.end method

.method public toMutable()Lcom/android/server/permission/access/MutableUserState;
    .locals 1

    .line 411
    new-instance v0, Lcom/android/server/permission/access/MutableUserState;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/MutableUserState;-><init>(Lcom/android/server/permission/access/UserState;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .locals 0

    .line 381
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->toMutable()Lcom/android/server/permission/access/MutableUserState;

    move-result-object p0

    return-object p0
.end method
