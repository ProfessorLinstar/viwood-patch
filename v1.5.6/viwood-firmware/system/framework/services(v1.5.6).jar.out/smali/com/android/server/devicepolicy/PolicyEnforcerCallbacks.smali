.class public abstract Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;
.super Ljava/lang/Object;
.source "PolicyEnforcerCallbacks.java"


# direct methods
.method public static synthetic $r8$lambda$3A7A7sIJ5RIm2lhycHAktZ_v_wg(Ljava/lang/Boolean;Landroid/content/Context;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 432
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 433
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->suspendPersonalAppsInPackageManager(Landroid/content/Context;I)V

    return-void

    .line 435
    :cond_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 436
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->unsuspendAdminSuspendedPackages(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4ggaUHwmXRH9DSZY2qstuZxIcwI(Landroid/content/Context;ILjava/util/Set;)V
    .locals 5

    .line 257
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 258
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 259
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 261
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->setOwnerProtectedPackages(ILjava/util/List;)V

    .line 263
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    if-nez p2, :cond_1

    goto :goto_1

    .line 265
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 264
    :goto_1
    invoke-virtual {v2, v1, p1}, Landroid/app/usage/UsageStatsManagerInternal;->setAdminProtectedPackages(Ljava/util/Set;I)V

    if-eqz p2, :cond_4

    .line 267
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 271
    :cond_2
    invoke-static {p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->resolveUsers(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 272
    invoke-static {p2, v0, v1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setBgUsageAppOp(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;ILandroid/app/AppOpsManager;)V

    .line 274
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 275
    invoke-virtual {v0, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->setPackageStoppedState(Ljava/lang/String;ZI)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public static synthetic $r8$lambda$923vf4aExZGFKsRX2l5EqcJweW4()V
    .locals 3

    .line 419
    :try_start_0
    const-string/jumbo v0, "window"

    .line 420
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Landroid/view/IWindowManager;->refreshScreenCaptureDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 423
    const-string v1, "PolicyEnforcerCallbacks"

    const-string v2, "Unable to notify WindowManager."

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$D1RBEpFVJNTU1BZDBtLcWbDin4w(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 1

    .line 373
    instance-of v0, p0, Landroid/app/admin/PackagePolicyKey;

    if-eqz v0, :cond_1

    .line 377
    check-cast p0, Landroid/app/admin/PackagePolicyKey;

    .line 378
    invoke-virtual {p0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 381
    :goto_0
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 380
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 374
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$GufZ51Ay23GzqrICE8M3gGd8Aqc(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0

    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 459
    :goto_1
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUsbDataSignal(Landroid/content/Context;Z)V

    .line 460
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L1rxGGUzNJ4aUGTAR8iOoKaDmig(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 230
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time"

    .line 229
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 228
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QKViEWd2gERgQLjX9mqDPmUb95w(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time_zone"

    .line 99
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UERPhmxAVy3sxr1v41E8a4Miyr0(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V
    .locals 1

    .line 310
    :try_start_0
    instance-of v0, p0, Landroid/app/admin/IntentFilterPolicyKey;

    if-eqz v0, :cond_1

    .line 314
    check-cast p0, Landroid/app/admin/IntentFilterPolicyKey;

    .line 316
    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 320
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/content/pm/IPackageManager;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V

    .line 325
    :goto_0
    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V

    return-void

    .line 311
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type IntentFilterPolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 328
    const-string p1, "PolicyEnforcerCallbacks"

    const-string p2, "Error adding/removing persistent preferred activity"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$WijCbL7fEj9lotKYMgvPtIYYdmE(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1

    .line 356
    instance-of v0, p0, Landroid/app/admin/UserRestrictionPolicyKey;

    if-eqz v0, :cond_1

    .line 360
    check-cast p0, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 362
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 364
    invoke-virtual {p0}, Landroid/app/admin/UserRestrictionPolicyKey;->getRestriction()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 363
    :goto_0
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    .line 365
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type UserRestrictionPolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$gxoPg1ULKK1uZv0lpeBqocEMEys(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 1

    .line 338
    instance-of v0, p0, Landroid/app/admin/PackagePolicyKey;

    if-eqz v0, :cond_1

    .line 342
    check-cast p0, Landroid/app/admin/PackagePolicyKey;

    .line 343
    invoke-virtual {p0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 344
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUninstallBlockedUnchecked(Ljava/lang/String;ZI)V

    .line 348
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 339
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$hroBZBFtiu0Fc4d2ycR1WqFQV2U(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    .line 204
    check-cast p0, Landroid/app/admin/PackagePolicyKey;

    .line 205
    invoke-virtual {p0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x40000000    # 2.0f

    .line 209
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mhU4RwcN2rvgJiX5zFqW30EJig0(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 408
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    .line 409
    instance-of v1, v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    .line 410
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->setContentProtectionPolicy(ILjava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$o4x0wEv9V1ApGxPYNb629kkq4D0(Landroid/content/pm/UserInfo;)Ljava/lang/Integer;
    .locals 0

    .line 288
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zi0x2TqIW93rOUZeDZ-HpdjcV44(ILjava/lang/Boolean;)V
    .locals 2

    .line 390
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    .line 391
    instance-of v1, v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz v1, :cond_1

    .line 392
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 393
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->setScreenCaptureDisallowedUser(IZ)V

    .line 395
    invoke-static {}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->updateScreenCaptureDisabled()V

    :cond_1
    return-void
.end method

.method public static addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 308
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda7;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda7;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 331
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static enforceAuditLogging(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 174
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 175
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceAuditLoggingPolicy(Z)V

    .line 176
    invoke-static {p2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static enforceSecurityLogging(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 166
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 167
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceSecurityLoggingPolicy(Z)V

    .line 168
    invoke-static {p2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static noOp(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 81
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static resolveUsers(I)Ljava/util/List;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 286
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 288
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 290
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setApplicationHidden(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 372
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setApplicationRestrictions(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 203
    new-instance p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda8;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda8;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 212
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setAutoTimePolicy(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 221
    new-instance p2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setAutoTimeZonePolicy(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 91
    new-instance p2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;

    invoke-direct {p2, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setBgUsageAppOp(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;ILandroid/app/AppOpsManager;)V
    .locals 7

    .line 296
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/high16 v0, 0xc0000

    int-to-long v3, v0

    .line 298
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 300
    invoke-static {p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setBgUsageAppOp(Landroid/app/AppOpsManager;Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    move-object p1, v1

    move p2, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setContentProtectionPolicy(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 406
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 413
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setLockTask(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;
    .locals 1

    .line 181
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    .line 187
    :goto_0
    invoke-static {p1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V

    .line 188
    invoke-static {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskFeaturesLocked(II)V

    .line 189
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setMtePolicy(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    const/4 p1, 0x0

    .line 468
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p0, :cond_0

    move-object p0, p2

    :cond_0
    const/4 p3, 0x2

    .line 473
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    .line 474
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 471
    invoke-static {p2, v0, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 475
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MTE policy is not a known one: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PolicyEnforcerCallbacks"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 486
    :cond_1
    const-string/jumbo p2, "ro.arm64.memtag.bootctl_settings_toggle"

    .line 487
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 486
    const-string/jumbo p2, "ro.arm64.memtag.bootctl_device_policy_manager"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 489
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 492
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "arm64.memtag.bootctl"

    if-ne p1, v1, :cond_3

    .line 493
    const-string/jumbo p0, "memtag"

    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p3, :cond_4

    .line 495
    const-string/jumbo p0, "memtag-off"

    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_5

    .line 497
    const-string p0, "default"

    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_5
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setPermissionGrantState(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 109
    const-string p0, "PolicyEnforcerCallbacks"

    const-string p1, "Trying to enforce setPermissionGrantState while flag is off."

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setPersonalAppsSuspended(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 431
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Boolean;Landroid/content/Context;I)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 439
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setScreenCaptureDisabled(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 389
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Boolean;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 398
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setUninstallBlocked(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 337
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setUsbDataSignalingEnabled(Ljava/lang/Boolean;Landroid/content/Context;)Ljava/util/concurrent/CompletableFuture;
    .locals 1

    .line 455
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setUserControlDisabledPackages(Ljava/util/Set;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 256
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILjava/util/Set;)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 280
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setUserRestriction(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 355
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda13;

    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda13;-><init>(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static suspendPersonalAppsInPackageManager(Landroid/content/Context;I)V
    .locals 4

    .line 443
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->forUser(Landroid/content/Context;I)Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;

    move-result-object p0

    .line 444
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getPersonalAppsForSuspension()[Ljava/lang/String;

    move-result-object p0

    .line 445
    const-string v0, ","

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PolicyEnforcerCallbacks"

    const-string v3, "Suspending personal apps: %s"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x1

    .line 447
    invoke-virtual {v1, p1, p0, v3}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(I[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to suspend apps: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updateScreenCaptureDisabled()V
    .locals 2

    .line 417
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
