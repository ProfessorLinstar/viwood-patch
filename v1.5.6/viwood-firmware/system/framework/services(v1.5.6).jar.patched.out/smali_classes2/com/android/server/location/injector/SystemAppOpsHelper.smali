.class public Lcom/android/server/location/injector/SystemAppOpsHelper;
.super Lcom/android/server/location/injector/AppOpsHelper;
.source "SystemAppOpsHelper.java"


# instance fields
.field public mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$dkvV9ErqRUvUhFKYCKm0OGHp7dQ(Lcom/android/server/location/injector/SystemAppOpsHelper;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->lambda$onSystemReady$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nvkNbjGehQgduXV6waQG27WlKTE(Lcom/android/server/location/injector/SystemAppOpsHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper;->lambda$onSystemReady$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/server/location/injector/AppOpsHelper;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 99
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 101
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    .line 102
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    move v1, v2

    .line 104
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    throw p0
.end method

.method public finishOp(ILandroid/location/util/identity/CallerIdentity;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 85
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    .line 86
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-virtual {p0, p1, v2, v3, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw p0
.end method

.method public final synthetic lambda$onSystemReady$0(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/AppOpsHelper;->notifyAppOpChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onSystemReady$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public noteOp(ILandroid/location/util/identity/CallerIdentity;)Z
    .locals 11

    .line 110
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 114
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 116
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v7

    .line 117
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 118
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 119
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v10

    move v6, p1

    .line 114
    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    move v1, v2

    .line 121
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw p0
.end method

.method public noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
    .locals 11

    .line 127
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 131
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 133
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v7

    .line 134
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 136
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v10

    move v6, p1

    .line 131
    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    move v1, v2

    .line 138
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw p0
.end method

.method public onSystemReady()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 49
    new-instance v1, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
    .locals 12

    .line 61
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 65
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 67
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v7

    .line 68
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 70
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    move v6, p1

    .line 65
    invoke-virtual/range {v5 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    move v1, v2

    .line 73
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    throw p0
.end method
