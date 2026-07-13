.class public final Lcom/android/server/notification/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPermManager:Landroid/permission/IPermissionManager;


# direct methods
.method public static synthetic $r8$lambda$ujfEcEaO8KtQKpKwTI2OrrAIhFM(Lcom/android/server/uri/UriGrantsManagerInternal;ILandroid/net/Uri;)V
    .locals 6

    .line 314
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 316
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    .line 313
    invoke-interface/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 70
    iput-object p3, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    return-void
.end method

.method public static grantUriPermission(Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/net/Uri;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 309
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;ILandroid/net/Uri;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAppsGrantedPermission(I)Ljava/util/Set;
    .locals 4

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 155
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    const-string p1, "PermissionHelper"

    const-string v1, "Could not reach system server"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 164
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getAppsRequestingPermission(I)Ljava/util/Set;
    .locals 6

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 121
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 125
    const-string v5, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final getInstalledPackages(I)Ljava/util/List;
    .locals 2

    .line 137
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x1000

    invoke-interface {p0, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    const-string p1, "PermissionHelper"

    const-string v0, "Could not reach system server"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 142
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationPermissionValues(I)Landroid/util/ArrayMap;
    .locals 7

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getAppsRequestingPermission(I)Ljava/util/Set;

    move-result-object v1

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getAppsGrantedPermission(I)Ljava/util/Set;

    move-result-object v2

    .line 176
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 177
    new-instance v4, Landroid/util/Pair;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 178
    invoke-virtual {p0, v6, p1}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(Ljava/lang/String;I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasPermission(I)Z
    .locals 4

    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 80
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 82
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    throw p0
.end method

.method public hasRequestedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v3, 0x1000

    invoke-interface {p0, p2, v3, v4, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 94
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_2

    .line 97
    :cond_0
    array-length p2, p0

    move p3, v2

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v3, p0, p3

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :cond_3
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 103
    :goto_3
    :try_start_1
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_4
    return v2

    .line 105
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw p0
.end method

.method public isPermissionFixed(Ljava/lang/String;I)Z
    .locals 5

    .line 243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 246
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p1, p0, 0x10

    if-nez p1, :cond_0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 255
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 251
    :try_start_1
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    throw p0
.end method

.method public isPermissionGrantedByDefaultOrRole(Ljava/lang/String;I)Z
    .locals 5

    .line 277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 280
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const p1, 0x8020

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 289
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 285
    :try_start_1
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw p0
.end method

.method public isPermissionUserSet(Ljava/lang/String;I)Z
    .locals 5

    .line 260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 263
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 272
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 268
    :try_start_1
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    throw p0
.end method

.method public final packageRequestsNotificationPermission(Ljava/lang/String;I)Z
    .locals 2

    .line 296
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x1000

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 298
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 299
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 302
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 233
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    iget-boolean p1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNotificationPermission(Ljava/lang/String;IZZ)V
    .locals 10

    .line 191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 196
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->packageRequestsNotificationPermission(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 198
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionGrantedByDefaultOrRole(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p4, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v2

    if-eqz p3, :cond_1

    if-nez v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    if-nez p3, :cond_2

    if-eqz v2, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    const-string v6, "PermissionHelper"

    move-object v2, p1

    move v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v3, 0x3

    if-eqz p4, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const-string v6, "default:0"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    goto :goto_1

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const-string v6, "default:0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 222
    :goto_3
    :try_start_1
    const-string v1, "PermissionHelper"

    const-string v2, "Could not reach system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    throw v0
.end method
