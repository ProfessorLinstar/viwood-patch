.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
.super Landroid/app/appfunctions/IAppFunctionManager$Stub;
.source "AppFunctionManagerServiceImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

.field public final mContext:Landroid/content/Context;

.field public final mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

.field public final mLocks:Ljava/util/Map;

.field public final mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

.field public final mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;


# direct methods
.method public static synthetic $r8$lambda$83VSvtUgiCvOfCoY2fr5GTdlHik(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 626
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$KEoWxzH9uq6uNoEYYtTp5qRF6aQ(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 585
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register observer: "

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V

    return-void
.end method

.method public static synthetic $r8$lambda$NcP1s5Km9gVoMSZwK8xweONTcYM(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 261
    :cond_0
    new-instance p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    const-string p1, "The app function is disabled"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;-><init>(Ljava/lang/String;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl-IA;)V

    throw p0
.end method

.method public static synthetic $r8$lambda$NtV0Vpf9alWQDF3VN-_R1DwAYog(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$4(Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vo7P-n_xA2kyqnOUjQevDM5n1K8(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$3(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$giixtBhts1WbYY_qneUXlyEjzSU(Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_1

    .line 602
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 603
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Sync was not successful"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$ijLVbAaSQj-Gar67nBj7J2jT2ps(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$2(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nRYDTFk56Qrw6oZWnAzd50WVJqk(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$setAppFunctionEnabled$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tAQGcGMOD8rGPZM-0NgY6tTxlmE(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunction$0(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLoggerWrapper(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;)V
    .locals 8

    .line 101
    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>()V

    sget-object v1, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    new-instance v3, Lcom/android/server/appfunctions/CallerValidatorImpl;

    invoke-direct {v3, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/appfunctions/ServiceHelperImpl;

    invoke-direct {v4, p1}, Lcom/android/server/appfunctions/ServiceHelperImpl;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/appfunctions/ServiceConfigImpl;

    invoke-direct {v5}, Lcom/android/server/appfunctions/ServiceConfigImpl;-><init>()V

    new-instance v6, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    invoke-direct {v6, p1}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Landroid/content/pm/PackageManagerInternal;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/appfunctions/RemoteServiceCaller;",
            "Lcom/android/server/appfunctions/CallerValidator;",
            "Lcom/android/server/appfunctions/ServiceHelper;",
            "Lcom/android/server/appfunctions/ServiceConfig;",
            "Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;",
            "Landroid/content/pm/PackageManagerInternal;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;-><init>()V

    .line 95
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    .line 123
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 124
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 125
    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 126
    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    .line 127
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public static isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2

    .line 328
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 329
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;

    invoke-direct {v1, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {p0, p1, p2, p3, v1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-object v0
.end method

.method public static reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V
    .locals 1

    .line 379
    :try_start_0
    new-instance v0, Landroid/os/ParcelableException;

    invoke-direct {v0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 381
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "Failed to report the exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final bindAppFunctionServiceUnchecked(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;ILandroid/os/IBinder;I)V
    .locals 9

    .line 468
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    .line 469
    new-instance p4, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

    invoke-direct {p4, p0, v6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/os/CancellationSignal;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 482
    invoke-interface {v1}, Lcom/android/server/appfunctions/ServiceConfig;->getExecuteAppFunctionCancellationTimeoutMillis()J

    move-result-wide v4

    new-instance v7, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 490
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    move/from16 v2, p8

    .line 488
    invoke-virtual {p0, p3, v1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getPackageSigningInfo(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/content/pm/SigningInfo;

    move-result-object p0

    invoke-direct {v7, p1, p4, p5, p0}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/content/pm/SigningInfo;)V

    move-object v1, p2

    move-object v3, p3

    move v2, p6

    move-object/from16 v8, p7

    .line 478
    invoke-interface/range {v0 .. v8}, Lcom/android/server/appfunctions/RemoteServiceCaller;->runServiceCall(Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 495
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Failed to bind to the AppFunctionService"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x7d0

    const-string p2, "Failed to bind the AppFunctionService."

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 153
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionsState(Landroid/content/Context;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    throw p0
.end method

.method public executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;
    .locals 9

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 170
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    move-result-object v6

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 176
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 178
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 177
    invoke-interface {v1, v2, v0}, Lcom/android/server/appfunctions/CallerValidator;->verifyTargetUserHandle(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 188
    sget-object v8, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v5

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 180
    new-instance p1, Landroid/app/appfunctions/AppFunctionException;

    const/16 p2, 0x3e8

    .line 182
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 180
    invoke-virtual {v6, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    .locals 9

    .line 214
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 215
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {v1, v0, v3}, Lcom/android/server/appfunctions/CallerValidator;->verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x7d2

    const-string p2, "Cannot run on a user with a restricted enterprise policy"

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x3e9

    const-string p2, "Target package name cannot be empty."

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 238
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object v6

    move v1, p2

    move-object v5, v2

    move v2, p3

    .line 234
    invoke-interface/range {v0 .. v6}, Lcom/android/server/appfunctions/CallerValidator;->verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    move-object v2, v5

    new-instance p3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V

    .line 241
    invoke-virtual {p2, p3}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;

    move-object v5, p1

    move-object v7, p4

    move-object v4, p5

    move-object v8, p6

    move v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;)V

    .line 267
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {p1, v1, v4}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    .line 315
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;
    .locals 1

    .line 521
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/app/appsearch/AppSearchManager;

    .line 522
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    return-object p0
.end method

.method public getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 626
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 627
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageSigningInfo(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/content/pm/SigningInfo;
    .locals 6

    .line 506
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x8000000

    .line 516
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v1, p2

    move v4, p3

    .line 512
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSession;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .locals 1

    .line 445
    invoke-static {p1, p2}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 446
    new-instance p1, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    const-string v0, "app_functions_runtime"

    invoke-direct {p1, v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {p1, v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object p1

    .line 449
    invoke-virtual {p1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object p1

    .line 451
    invoke-interface {p3, p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchBatchResult;

    .line 452
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 453
    new-instance p2, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/GenericDocument;

    invoke-direct {p2, p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object p2

    .line 455
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Function "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .locals 2

    .line 639
    new-instance v0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V

    invoke-direct {v0, p2, v1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;)V

    return-object v0
.end method

.method public final synthetic lambda$executeAppFunction$0(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 1

    .line 197
    :try_start_0
    invoke-interface {p6}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p6

    .line 191
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    move-result-object p0

    .line 199
    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void
.end method

.method public final synthetic lambda$executeAppFunctionInternal$2(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;
    .locals 2

    .line 243
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller does not have permission to execute the appfunction"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;

    move-result-object p0

    sget-object p1, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 248
    invoke-static {v0, v1, p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Integer;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$executeAppFunctionInternal$3(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V
    .locals 10

    .line 270
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x4000001

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 277
    :goto_1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 278
    invoke-interface {v0, p1, p2}, Lcom/android/server/appfunctions/ServiceHelper;->resolveAppFunctionService(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 281
    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x7d0

    const-string p2, "Cannot find the target service."

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    .line 288
    :cond_1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 289
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 293
    invoke-virtual {p4}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    .line 291
    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 290
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x1

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    :cond_2
    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    move-object v2, p4

    move v9, p5

    move-object/from16 v5, p6

    move-object/from16 v8, p7

    .line 305
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->bindAppFunctionServiceUnchecked(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;ILandroid/os/IBinder;I)V

    return-void
.end method

.method public final synthetic lambda$executeAppFunctionInternal$4(Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    .line 318
    invoke-virtual {p0, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    move-result-object p0

    .line 317
    invoke-virtual {p1, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$setAppFunctionEnabled$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 1

    .line 364
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->setAppFunctionEnabledInternalLocked(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V

    .line 367
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :try_start_2
    invoke-interface {p5}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onSuccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 367
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 370
    :goto_0
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "Error in setAppFunctionEnabled: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    invoke-static {p5, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public final mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;
    .locals 1

    .line 526
    instance-of p0, p1, Ljava/util/concurrent/CompletionException;

    if-eqz p0, :cond_0

    .line 527
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 530
    :cond_0
    instance-of p0, p1, Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;

    if-eqz p0, :cond_1

    const/16 p0, 0x3eb

    goto :goto_0

    .line 536
    :cond_1
    instance-of p0, p1, Ljava/lang/SecurityException;

    if-eqz p0, :cond_2

    const/16 p0, 0x3e8

    goto :goto_0

    .line 538
    :cond_2
    instance-of p0, p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    if-eqz p0, :cond_3

    const/16 p0, 0x3ea

    goto :goto_0

    :cond_3
    const/16 p0, 0x7d0

    .line 541
    :goto_0
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->removeUserSyncAdapter(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->registerAppSearchObserver(Lcom/android/server/SystemService$TargetUser;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public final registerAppSearchObserver(Lcom/android/server/SystemService$TargetUser;)V
    .locals 5

    .line 562
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 563
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    .line 564
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    if-nez v0, :cond_0

    .line 566
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppSearch Manager not found for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_0
    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v3}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V

    .line 571
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;

    .line 573
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 574
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;-><init>(Landroid/os/UserHandle;Landroid/content/Context;)V

    .line 575
    new-instance p0, Landroid/app/appsearch/observer/ObserverSpec$Builder;

    invoke-direct {p0}, Landroid/app/appsearch/observer/ObserverSpec$Builder;-><init>()V

    .line 579
    invoke-virtual {p0}, Landroid/app/appsearch/observer/ObserverSpec$Builder;->build()Landroid/app/appsearch/observer/ObserverSpec;

    move-result-object p0

    .line 577
    const-string p1, "android"

    invoke-virtual {v1, p1, p0, v3, v0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->registerObserverCallbackAsync(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 8

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {v0, p1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    move-object v7, p5

    move-object p0, v0

    .line 358
    invoke-static {v7, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public final setAppFunctionEnabledInternalLocked(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V
    .locals 3

    .line 399
    invoke-virtual {p0, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    new-instance p3, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v1, "appfunctions-db"

    invoke-direct {p3, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p3}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object p3

    .line 408
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    sget-object v2, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v2, p3}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V

    .line 413
    :try_start_0
    new-instance p3, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    .line 415
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSession;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 419
    new-instance p0, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {p0, p3}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Landroid/app/appfunctions/AppFunctionRuntimeMetadata;)V

    .line 421
    invoke-virtual {p0, p4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setEnabled(I)Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object p0

    .line 423
    new-instance p1, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/app/appsearch/GenericDocument;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    .line 427
    invoke-virtual {p1, p2}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object p0

    .line 428
    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    .line 425
    invoke-interface {v1, p0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchBatchResult;

    .line 430
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 434
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V

    return-void

    .line 431
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed writing updated doc to AppSearch due to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 408
    :try_start_2
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    .line 402
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AppSearchManager not found for user:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 594
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 595
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 593
    invoke-static {v0, p0}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    :cond_0
    return-void
.end method
