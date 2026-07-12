.class public final Lcom/android/server/permission/access/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/Permission$Companion;


# instance fields
.field public final appId:I

.field public final areGidsPerUser:Z

.field public final gids:[I

.field public final isReconciled:Z

.field public final permissionInfo:Landroid/content/pm/PermissionInfo;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/permission/access/permission/Permission$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/Permission$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/Permission;->Companion:Lcom/android/server/permission/access/permission/Permission$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 26
    iput-boolean p2, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 27
    iput p3, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 28
    iput p4, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 29
    iput-object p5, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 30
    iput-boolean p6, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 29
    sget-object p5, Llibcore/util/EmptyArray;->INT:[I

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;
    .locals 0

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-boolean p6, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    :cond_5
    move-object p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/android/server/permission/access/permission/Permission;->copy(Landroid/content/pm/PermissionInfo;ZII[IZ)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Landroid/content/pm/PermissionInfo;ZII[IZ)Lcom/android/server/permission/access/permission/Permission;
    .locals 0

    .line 0
    new-instance p0, Lcom/android/server/permission/access/permission/Permission;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/permission/access/permission/Permission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, p1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-static {v1, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    iget-boolean v3, p1, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    iget v3, p1, Lcom/android/server/permission/access/permission/Permission;->type:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    iget v3, p1, Lcom/android/server/permission/access/permission/Permission;->appId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    iget-object v3, p1, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v1, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    iget-boolean p1, p1, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAppId()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    return p0
.end method

.method public final getAreGidsPerUser()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    return p0
.end method

.method public final getGids()[I
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    return-object p0
.end method

.method public final getGidsForUser(I)[I
    .locals 4

    .line 156
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    aget v3, v3, v2

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 159
    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPermissionInfo()Landroid/content/pm/PermissionInfo;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isReconciled()Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    iget v2, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    iget v3, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    iget-object v4, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission(permissionInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isReconciled="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", appId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", gids="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", areGidsPerUser="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
