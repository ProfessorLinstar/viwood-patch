.class public final Lcom/android/server/pm/permission/PermissionState;
.super Ljava/lang/Object;
.source "PermissionState.java"


# instance fields
.field public mFlags:I

.field public mGranted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPermission:Lcom/android/server/pm/permission/Permission;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/Permission;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionState;)V
    .locals 1

    .line 45
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    .line 47
    iget-boolean v0, p1, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 48
    iget p1, p1, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    iput p1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    return-void
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getFlags()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPermission()Lcom/android/server/pm/permission/Permission;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    return-object p0
.end method

.method public grant()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 75
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 78
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    .line 79
    monitor-exit v0

    return v1

    .line 80
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDefault()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-nez v1, :cond_0

    iget p0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 116
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isGranted()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public revoke()Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 86
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 88
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 89
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    const/4 p0, 0x1

    .line 90
    monitor-exit v0

    return p0

    .line 91
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateFlags(II)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    and-int/2addr p2, p1

    .line 105
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    .line 107
    iget v1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v1

    or-int/2addr p1, p2

    .line 108
    iput p1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    if-eq p1, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 109
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
