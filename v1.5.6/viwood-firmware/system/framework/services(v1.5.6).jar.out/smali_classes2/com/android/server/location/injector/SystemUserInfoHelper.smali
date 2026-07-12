.class public abstract Lcom/android/server/location/injector/SystemUserInfoHelper;
.super Lcom/android/server/location/injector/UserInfoHelper;
.source "SystemUserInfoHelper.java"


# instance fields
.field public mActivityManager:Landroid/app/IActivityManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$rmbCOanELEWco8WhmNYmOOvB1A0(Lcom/android/server/location/injector/SystemUserInfoHelper;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SystemUserInfoHelper;->lambda$onSystemReady$0(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/server/location/injector/UserInfoHelper;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 188
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 189
    array-length p3, p1

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 190
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "running users: u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object p1

    .line 199
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current users: u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 203
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    aget v1, p1, v0

    .line 204
    const-string/jumbo v2, "no_share_location"

    .line 205
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 204
    invoke-virtual {p0, v2, v3}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0

    .line 87
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    .line 74
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0

    .line 76
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentUserId()I
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    throw p0

    :cond_0
    const/16 p0, -0x2710

    return p0
.end method

.method public getProfileIds(I)[I
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    throw p0
.end method

.method public getRunningUserIds()[I
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 109
    :try_start_0
    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 116
    new-array p0, p0, [I

    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    return-object p0

    .line 98
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCurrentUserId(I)Z
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVisibleUserId(I)Z
    .locals 3

    .line 152
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 156
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 160
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(I)Z

    move-result p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    .line 162
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    throw p0

    :catchall_2
    move-exception p1

    .line 156
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public final synthetic lambda$onSystemReady$0(IZ)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/UserInfoHelper;->dispatchOnVisibleUserChanged(IZ)V

    return-void
.end method

.method public declared-synchronized onSystemReady()V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 65
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 66
    new-instance v1, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemUserInfoHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
