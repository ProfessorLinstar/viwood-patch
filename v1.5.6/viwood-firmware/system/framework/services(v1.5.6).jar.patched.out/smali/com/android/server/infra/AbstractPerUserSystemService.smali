.class public abstract Lcom/android/server/infra/AbstractPerUserSystemService;
.super Ljava/lang/Object;
.source "AbstractPerUserSystemService.java"


# instance fields
.field public mDisabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

.field public mServiceInfo:Landroid/content/pm/ServiceInfo;

.field public mSetupComplete:Z

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 75
    iput-object p2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 76
    iput p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateIsSetupComplete(I)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 416
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    const-string v0, "User: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 419
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    const-string v0, "Service Label: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 423
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    const-string v0, "Target SDK: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getTargedSdkLocked()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    const-string v0, "Name resolver: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p2, v1}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    .line 431
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 433
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    const-string v0, "Disabled by UserManager: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 436
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    const-string v0, "Setup complete: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    const-string p1, "Service UID: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 444
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getComponentNameLocked()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getMaster()Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object p0
.end method

.method public final getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 211
    :try_start_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v5, 0x0

    invoke-interface {v3, v1, v5, v6, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 215
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad service name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v1, v2

    .line 218
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting service info for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    move-object v1, v2

    move-object v3, v1

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 224
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 225
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_3

    .line 226
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set component for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " and info as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_2

    .line 230
    :cond_2
    iput-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 231
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_3

    .line 232
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reset component for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 236
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad ServiceInfo for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 239
    :cond_3
    :goto_3
    monitor-exit v0

    return-object v1

    .line 240
    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public getServiceComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getServiceIconLocked()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public final getServiceLabelLocked()Ljava/lang/CharSequence;
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 349
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getServicePackageName()Ljava/lang/String;
    .locals 0

    .line 338
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceUidLocked()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    const-string v0, "getServiceUidLocked(): no mServiceInfo"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 267
    :cond_1
    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public final getTargedSdkLocked()I
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return p0
.end method

.method public final getUserId()I
    .locals 0

    .line 247
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    return p0
.end method

.method public handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final isDebug()Z
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    return p0
.end method

.method public final isDisabledByUserRestrictionsLocked()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    return p0
.end method

.method public isEnabledLocked()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSetupCompletedLocked()Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    return p0
.end method

.method public final isTemporaryServiceSetLocked()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result p0

    return p0
.end method

.method public final isVerbose()Z
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    return p0
.end method

.method public abstract newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
.end method

.method public final removeSelfFromCache()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 370
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetTemporaryServiceLocked()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/infra/ServiceNameResolver;->resetTemporaryService(I)V

    return-void
.end method

.method public final updateIsSetupComplete(I)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    .line 82
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 84
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    return-void
.end method

.method public updateLocked(Z)Z
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): wasEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSetupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateIsSetupComplete(I)V

    .line 153
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 155
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz p1, :cond_1

    .line 156
    invoke-interface {p1}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_2

    .line 162
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    const-string v1, "Should not end up in updateLocked when isConfiguredInMultipleMode is true"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result p0

    if-eq v0, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final updateServiceInfoListLocked()[Landroid/content/ComponentName;
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 188
    :cond_0
    invoke-interface {v0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    new-array v1, v1, [Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    aput-object p0, v1, v2

    return-object v1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v3}, Lcom/android/server/infra/ServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 198
    :cond_2
    array-length v1, v0

    new-array v1, v1, [Landroid/content/ComponentName;

    .line 199
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 200
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final updateServiceInfoLocked()Landroid/content/ComponentName;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoListLocked()[Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 177
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
