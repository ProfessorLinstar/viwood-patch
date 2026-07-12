.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "PermissionManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$51PyhAXpTBmKC14aZHFGOA6gylw(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OUFt_FudBWilBwxjeGAizHH5UVE(II)V
    .locals 1

    .line 329
    const-string/jumbo v0, "permission grant or revoke changed gids"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$exRjo3jabclXdvT_gG3_mP8pn18(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .line 386
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pRCB39sssMj7EShRJOUO1qCT_5g(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->lambda$onPermissionRevoked$1(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl-IA;)V

    return-void
.end method


# virtual methods
.method public final getSecureInt(Ljava/lang/String;I)Ljava/util/Optional;
    .locals 2

    .line 393
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 394
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 393
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 397
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final isAppBackupAndRestoreRunning(I)Z
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    const-string v1, "android.permission.BACKUP"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$mcheckUidPermission(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 373
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 375
    const-string/jumbo v0, "user_setup_complete"

    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->getSecureInt(Ljava/lang/String;I)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;-><init>()V

    .line 377
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 378
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 383
    :cond_1
    const-string/jumbo v0, "user_setup_personalization_state"

    .line 384
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->getSecureInt(Ljava/lang/String;I)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda3;-><init>()V

    .line 385
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 387
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onPermissionRevoked$1(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 354
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->isAppBackupAndRestoreRunning(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-nez p3, :cond_1

    .line 361
    const-string/jumbo p1, "permissions revoked"

    invoke-static {p0, p4, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    return-void

    .line 363
    :cond_1
    invoke-static {p0, p4, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    return-void
.end method

.method public onGidsChanged(II)V
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 1

    .line 340
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 1

    .line 416
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 0

    .line 333
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 336
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onPermissionRemoved()V
    .locals 1

    .line 420
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .line 345
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 348
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    if-eqz p4, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v3, p1

    move v5, p2

    move-object v4, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPermissionUpdated([IZI)V
    .locals 3

    const/4 v0, 0x0

    .line 408
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 409
    aget v1, p1, v0

    invoke-static {v1, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    return-void
.end method
