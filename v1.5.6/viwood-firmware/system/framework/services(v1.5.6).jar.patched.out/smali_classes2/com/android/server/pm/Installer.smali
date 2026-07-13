.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# instance fields
.field public volatile mDeferSetFirstBoot:Z

.field public volatile mInstalld:Landroid/os/IInstalld;

.field public volatile mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mIsolated:Z

.field public volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$0tq57UxfzsROQRoEFibdwJAIjkY(Lcom/android/server/pm/Installer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->lambda$connect$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ziOso-zBD6EBOzh2GxLZccmaXlE(Lcom/android/server/pm/Installer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 124
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 136
    iput-boolean p2, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    return-void
.end method

.method public static buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;
    .locals 1

    .line 235
    new-instance v0, Landroid/os/CreateAppDataArgs;

    invoke-direct {v0}, Landroid/os/CreateAppDataArgs;-><init>()V

    .line 236
    iput-object p0, v0, Landroid/os/CreateAppDataArgs;->uuid:Ljava/lang/String;

    .line 237
    iput-object p1, v0, Landroid/os/CreateAppDataArgs;->packageName:Ljava/lang/String;

    .line 238
    iput p2, v0, Landroid/os/CreateAppDataArgs;->userId:I

    .line 239
    iput p3, v0, Landroid/os/CreateAppDataArgs;->flags:I

    if-eqz p7, :cond_0

    or-int/lit8 p0, p3, 0x8

    .line 241
    iput p0, v0, Landroid/os/CreateAppDataArgs;->flags:I

    .line 243
    :cond_0
    iput p4, v0, Landroid/os/CreateAppDataArgs;->appId:I

    .line 244
    iput-object p5, v0, Landroid/os/CreateAppDataArgs;->seInfo:Ljava/lang/String;

    .line 245
    iput p6, v0, Landroid/os/CreateAppDataArgs;->targetSdkVersion:I

    return-object v0
.end method

.method public static buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;
    .locals 3

    .line 250
    new-instance v0, Landroid/os/CreateAppDataResult;

    invoke-direct {v0}, Landroid/os/CreateAppDataResult;-><init>()V

    const-wide/16 v1, -0x1

    .line 251
    iput-wide v1, v0, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 252
    iput-wide v1, v0, Landroid/os/CreateAppDataResult;->deDataInode:J

    const/4 v1, 0x0

    .line 253
    iput v1, v0, Landroid/os/CreateAppDataResult;->exceptionCode:I

    const/4 v1, 0x0

    .line 254
    iput-object v1, v0, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static buildReconcileSdkDataArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/String;I)Landroid/os/ReconcileSdkDataArgs;
    .locals 1

    .line 261
    new-instance v0, Landroid/os/ReconcileSdkDataArgs;

    invoke-direct {v0}, Landroid/os/ReconcileSdkDataArgs;-><init>()V

    .line 262
    iput-object p0, v0, Landroid/os/ReconcileSdkDataArgs;->uuid:Ljava/lang/String;

    .line 263
    iput-object p1, v0, Landroid/os/ReconcileSdkDataArgs;->packageName:Ljava/lang/String;

    .line 264
    iput-object p2, v0, Landroid/os/ReconcileSdkDataArgs;->subDirNames:Ljava/util/List;

    .line 265
    iput p3, v0, Landroid/os/ReconcileSdkDataArgs;->userId:I

    .line 266
    iput p4, v0, Landroid/os/ReconcileSdkDataArgs;->appId:I

    const/4 p0, 0x0

    .line 267
    iput p0, v0, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I

    .line 268
    iput-object p5, v0, Landroid/os/ReconcileSdkDataArgs;->seInfo:Ljava/lang/String;

    .line 269
    iput p6, v0, Landroid/os/ReconcileSdkDataArgs;->flags:I

    return-object v0
.end method


# virtual methods
.method public final checkBeforeRemote()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    const-string v1, "Installer"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is holding 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 212
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 211
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_1

    .line 215
    const-string p0, "Ignoring request because this installer is isolated"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 221
    :cond_2
    new-instance p0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v0, "time out waiting for the installer to be ready"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 480
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 425
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 427
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 435
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p3, p2, p4}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x9858

    .line 434
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 p1, 0x2

    .line 438
    :goto_0
    array-length p2, p0

    if-ge p1, p2, :cond_1

    .line 439
    aget-object p2, p0, p1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 440
    aget-object p3, p0, p1

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p3

    .line 441
    aget-object p4, p0, p1

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p4

    .line 442
    aget-object p5, p0, p1

    invoke-virtual {p5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p5

    .line 444
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p3, p2, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x9859

    .line 443
    invoke-static {p3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 447
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public final connect()V
    .locals 4

    .line 167
    const-string v0, "installd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Installer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 181
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 183
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 185
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->executeDeferredActions()V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 190
    :cond_1
    const-string v0, "Installer"

    const-string v1, "installd not found; trying again"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Installer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_1
    :goto_1
    return-void
.end method

.method public createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Lcom/android/server/pm/Installer;->buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 279
    iput v0, p1, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 281
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 283
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    array-length p0, p1

    new-array p0, p0, [Landroid/os/CreateAppDataResult;

    .line 291
    invoke-static {}, Lcom/android/server/pm/Installer;->buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 295
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 296
    iput v1, v3, Landroid/os/CreateAppDataArgs;->previousAppId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 301
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .locals 1

    .line 916
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 920
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 922
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 677
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 679
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createUserData(Ljava/lang/String;III)V
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 624
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 457
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;III)Z
    .locals 8

    .line 833
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 836
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 839
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .locals 1

    .line 857
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 860
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 863
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 633
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 602
    new-instance p0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {p0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw p0
.end method

.method public enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 939
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 944
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 946
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0

    .line 940
    :cond_0
    new-instance p0, Lcom/android/server/pm/Installer$InstallerException;

    const-string p1, "fs-verity wasn\'t enabled with an isolated installer"

    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final executeDeferredActions()V
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->setFirstBoot()V

    :cond_0
    return-void
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 466
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public freeCache(Ljava/lang/String;JI)V
    .locals 1

    .line 643
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 647
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 558
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 560
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .locals 5

    .line 499
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p7, :cond_1

    .line 501
    array-length v1, p7

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p7, v2

    .line 502
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object p0

    .line 508
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->codeSize:J

    aget-wide p3, p0, v0

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->codeSize:J

    .line 509
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 p3, 0x1

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->dataSize:J

    .line 510
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 p3, 0x2

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 511
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 p3, 0x3

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 512
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 p3, 0x4

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 513
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 p3, 0x5

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 515
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x6

    new-array p0, p0, [J

    return-object p0

    .line 539
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 541
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 576
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 578
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object p0

    .line 524
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 p3, 0x0

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 525
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 p3, 0x1

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 526
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 p3, 0x2

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 527
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 p3, 0x3

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 528
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 p3, 0x4

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 529
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 p3, 0x5

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 531
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .locals 1

    .line 715
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 716
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 718
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 720
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public invalidateMounts()V
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 727
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 729
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public isIsolated()Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    return p0
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 736
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 738
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public final synthetic lambda$connect$0()V
    .locals 2

    .line 171
    const-string v0, "Installer"

    const-string v1, "installd died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 173
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 688
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 690
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 692
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 694
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 659
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 661
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 663
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 417
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public migrateLegacyObbData()Z
    .locals 1

    .line 875
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 878
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 881
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 703
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 704
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 707
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 709
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 492
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public onPrivateVolumeRemoved(Ljava/lang/String;)V
    .locals 1

    .line 758
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 762
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public onStart()V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 160
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 313
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    .locals 8

    .line 807
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 810
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 814
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 612
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 614
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 588
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setFirstBoot()V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    if-eqz v0, :cond_1

    .line 327
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->setFirstBoot()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 334
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    return-void
.end method

.method public snapshotAppData(Ljava/lang/String;III)Z
    .locals 6

    .line 781
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 784
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 787
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public tryMountDataMirror(Ljava/lang/String;)V
    .locals 1

    .line 746
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 748
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 750
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method
