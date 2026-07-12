.class public Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;
.super Landroid/content/IRestrictionsManager$Stub;
.source "RestrictionsManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDpm:Landroid/app/admin/IDevicePolicyManager;

.field public final mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mUm:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>(Lcom/android/server/restrictions/RestrictionsManagerService;Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroid/content/IRestrictionsManager$Stub;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    .line 72
    const-string/jumbo p2, "user"

    invoke-static {p1, p2}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$000(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Landroid/os/IUserManager;

    iput-object p2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    .line 73
    const-string p2, "device_policy"

    invoke-static {p1, p2}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$100(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Landroid/app/admin/IDevicePolicyManager;

    iput-object p2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    .line 74
    const-class p2, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p1, p2}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$200(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object p1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-void
.end method


# virtual methods
.method public createLocalApprovalIntent()Landroid/content/Intent;
    .locals 8

    .line 148
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 149
    iget-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2

    .line 150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 152
    :try_start_0
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    .line 153
    invoke-interface {p0, v5}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.content.action.REQUEST_LOCAL_APPROVAL"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 156
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot request permission without a restrictions provider registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    throw p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 207
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 209
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationRestrictionsPerAdminForUser(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0, p2, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getApplicationRestrictionsPerAdminForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public hasRestrictionsProvider()Z
    .locals 5

    .line 94
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 100
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw p0

    :cond_1
    return v2
.end method

.method public notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 6

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 181
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 185
    :try_start_0
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 189
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Restrictions provider does not match caller "

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.content.action.PERMISSION_RESPONSE_RECEIVED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string p1, "android.content.extra.RESPONSE_BUNDLE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 187
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No restrictions provider registered for user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw p0

    :cond_1
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 6

    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 115
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 116
    iget-object v2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 119
    :try_start_0
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    .line 120
    invoke-interface {v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 127
    const-string v5, "Package name does not match caller "

    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.content.action.REQUEST_PERMISSION"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    const-string v4, "android.content.extra.PACKAGE_NAME"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string p1, "android.content.extra.REQUEST_TYPE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string p1, "android.content.extra.REQUEST_ID"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string p1, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 123
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot request permission without a restrictions provider registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw p0

    :cond_1
    return-void
.end method
