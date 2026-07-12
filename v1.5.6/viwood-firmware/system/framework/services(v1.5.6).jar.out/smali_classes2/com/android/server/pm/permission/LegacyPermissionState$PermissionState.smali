.class public final Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
.super Ljava/lang/Object;
.source "LegacyPermissionState.java"


# instance fields
.field public final mFlags:I

.field public final mGranted:Z

.field public final mName:Ljava/lang/String;

.field public final mRuntime:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V
    .locals 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 281
    iget-boolean v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 282
    iget-boolean v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 283
    iget p1, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    iput p1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;Lcom/android/server/pm/permission/LegacyPermissionState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 274
    iput-boolean p2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 275
    iput-boolean p3, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 276
    iput p4, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 334
    iget-boolean v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    iget-boolean v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    iget-boolean v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    iget v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 337
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getFlags()I
    .locals 0

    .line 322
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isGranted()Z
    .locals 0

    .line 312
    iget-boolean p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    return p0
.end method

.method public isRuntime()Z
    .locals 0

    .line 302
    iget-boolean p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    return p0
.end method
