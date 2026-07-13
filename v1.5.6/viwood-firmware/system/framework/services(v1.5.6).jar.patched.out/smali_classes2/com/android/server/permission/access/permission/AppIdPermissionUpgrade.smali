.class public final Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;
.super Ljava/lang/Object;
.source "AppIdPermissionUpgrade.kt"


# static fields
.field public static final AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final Companion:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;

.field public static final LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;


# instance fields
.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->Companion:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;

    .line 455
    const-class v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 486
    const-string v10, "android.permission.WRITE_CALL_LOG"

    .line 487
    const-string v11, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.SEND_SMS"

    const-string v5, "android.permission.RECEIVE_SMS"

    const-string v6, "android.permission.RECEIVE_WAP_PUSH"

    const-string v7, "android.permission.RECEIVE_MMS"

    const-string v8, "android.permission.READ_CELL_BROADCASTS"

    const-string v9, "android.permission.READ_CALL_LOG"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 492
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 493
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 501
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    const-string v4, "android.permission.ACCESS_MEDIA_LOCATION"

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 508
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-void
.end method


# virtual methods
.method public final allowlistRestrictedPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 9

    .line 98
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 513
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 99
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v1, v6}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 102
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    const/high16 v7, 0x20000

    const/high16 v8, 0x20000

    move-object v3, p1

    move v5, p3

    .line 101
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    goto :goto_1

    :cond_0
    move-object v3, p1

    move v5, p3

    :goto_1
    move-object p1, v3

    move p3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V
    .locals 8

    .line 387
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 388
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Granting runtime permission for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", permission: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    .line 392
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v2, 0x1000

    .line 87
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 397
    iget-object v1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, p1, v4, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v1

    const v2, 0x2001e0

    .line 398
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed to grant "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    or-int/lit8 p2, v1, 0x10

    const v0, 0x701400

    .line 408
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v7

    .line 414
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void
.end method

.method public final isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    .line 378
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p0

    return p0
.end method

.method public final revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z
    .locals 10

    .line 428
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 429
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Revoking runtime permission for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", permission: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    .line 434
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v2, p1, v6, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v2

    const/16 v4, 0x180

    .line 435
    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot revoke fixed runtime permission from package: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const p2, 0xf00278

    .line 445
    invoke-static {v2, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v9

    .line 450
    iget-object v4, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object v5, p1

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final upgradeAccessMediaLocationPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 4

    .line 149
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 148
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 154
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 156
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 153
    invoke-virtual {v0, p1, v2, p3, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    .line 159
    sget-object v2, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v2, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final upgradeAuralVisualMediaPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 8

    .line 174
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 175
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 178
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 44
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    .line 45
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Ljava/lang/String;

    .line 181
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 185
    :cond_1
    iget-object v6, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-virtual {v6, p1, v7, p3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v5

    .line 186
    sget-object v6, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 44
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_3

    .line 45
    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final upgradeBackgroundLocationPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 5

    .line 119
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 118
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    .line 123
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 124
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, p1, v0, p3, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 128
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, p1, v0, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    .line 131
    sget-object v3, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final upgradeBodySensorBackgroundPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 9

    .line 203
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 202
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 211
    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 212
    invoke-virtual {v0, p1, v4, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    const v2, 0x38000

    .line 214
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    const/high16 v7, 0x20000

    const/high16 v8, 0x20000

    .line 220
    const-string v6, "android.permission.BODY_SENSORS_BACKGROUND"

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 230
    iget-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    const-string p3, "android.permission.BODY_SENSORS"

    invoke-virtual {p1, v3, v4, v5, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p1

    .line 231
    sget-object p3, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p3, p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    invoke-virtual {p0, v3, p2, v5, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final upgradeBodySensorReadHeartRatePermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 7

    .line 287
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 288
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x24

    if-lt v1, v2, :cond_0

    goto/16 :goto_1

    .line 294
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.BODY_SENSORS"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 296
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.permission.health.READ_HEART_RATE"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 298
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 301
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v1

    if-eq v5, v1, :cond_2

    if-eqz v5, :cond_1

    .line 305
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v5, v6

    :cond_1
    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    .line 322
    :cond_2
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v2

    if-nez v5, :cond_3

    if-eqz v2, :cond_3

    .line 330
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v6, v2

    .line 342
    :goto_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 344
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v3, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 347
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v0

    if-eq v6, v0, :cond_5

    if-eqz v6, :cond_4

    .line 354
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 361
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 6

    .line 43
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 44
    const-string v2, ", version: "

    if-gt p4, v1, :cond_0

    .line 46
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowlisting and upgrading background location permission for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->allowlistRestrictedPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeBackgroundLocationPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    :cond_0
    const/16 v1, 0xa

    .line 53
    const-string v3, ", user: "

    if-gt p4, v1, :cond_1

    .line 55
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading access media location permission for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeAccessMediaLocationPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    :cond_1
    const/16 v1, 0xc

    if-gt p4, v1, :cond_2

    .line 64
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading scoped media and body sensor permissions for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeAuralVisualMediaPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeBodySensorBackgroundPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    :cond_2
    const/16 v1, 0xe

    if-gt p4, v1, :cond_3

    .line 74
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading visual media permission for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeUserSelectedVisualMediaPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    :cond_3
    const/16 v1, 0x10

    if-gt p4, v1, :cond_4

    .line 83
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading body sensor / read heart rate permissions for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 82
    invoke-static {v1, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeBodySensorReadHeartRatePermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    :cond_4
    return-void
.end method

.method public final upgradeUserSelectedVisualMediaPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 7

    .line 246
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 252
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 44
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 45
    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 253
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 257
    :cond_1
    iget-object v5, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-virtual {v5, p1, v6, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v4

    .line 258
    sget-object v5, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v5, v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
