.class public Lcom/android/server/pm/DefaultAppProvider;
.super Ljava/lang/Object;
.source "DefaultAppProvider.java"


# instance fields
.field public final mRoleManagerSupplier:Ljava/util/function/Supplier;

.field public final mUserManagerInternalSupplier:Ljava/util/function/Supplier;


# direct methods
.method public static synthetic $r8$lambda$JzMEkagUaXGx3UqyflTl11c7Ig4(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set default browser to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    .line 51
    iput-object p2, p0, Lcom/android/server/pm/DefaultAppProvider;->mUserManagerInternalSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public getDefaultBrowser(I)Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDialer(I)Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "android.app.role.DIALER"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultHome(I)Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/DefaultAppProvider;->mUserManagerInternalSupplier:Ljava/util/function/Supplier;

    .line 118
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    .line 117
    const-string v0, "android.app.role.HOME"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 148
    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 155
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    throw p0
.end method

.method public setDefaultBrowser(Ljava/lang/String;I)V
    .locals 9

    .line 72
    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleManager;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 77
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 78
    new-instance v5, Lcom/android/server/pm/DefaultAppProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/server/pm/DefaultAppProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    if-eqz p1, :cond_1

    .line 87
    :try_start_0
    const-string v1, "android.app.role.BROWSER"

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    .line 90
    const-string v1, "android.app.role.BROWSER"

    const/4 v2, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/app/role/RoleManager;->clearRoleHoldersAsUser(Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    throw p0
.end method

.method public setDefaultHome(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z
    .locals 9

    .line 132
    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 138
    :try_start_0
    const-string v1, "android.app.role.HOME"

    .line 139
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v3, 0x0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    .line 138
    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    throw p0
.end method
