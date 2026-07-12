.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "BiometricService.java"


# instance fields
.field mAuthSession:Lcom/android/server/biometrics/AuthSession;

.field public final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

.field mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mEnabledOnKeyguardCallbacks:Ljava/util/List;

.field mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mHandler:Landroid/os/Handler;

.field final mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

.field public final mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

.field mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mRandom:Ljava/util/Random;

.field public final mRequestCounter:Ljava/util/function/Supplier;

.field public final mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$CmVOENY8IdAaMEf_QUxGOSguP4U(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/biometrics/BiometricService;->lambda$handleAuthenticate$2(ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CvTgGFu-J4JV962Mv6dITI6-xBY(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->lambda$createClientDeathReceiver$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBJAJrsZwlWaoxKYP2XZFmwTfLA(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->lambda$createClientDeathReceiver$0(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricContext(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/log/BiometricContext;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricNotificationLogger(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricNotificationLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabledOnKeyguardCallbacks(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestCounter(Lcom/android/server/biometrics/BiometricService;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/biometrics/BiometricService;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->createPreAuthInfo(Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSensorForId(Lcom/android/server/biometrics/BiometricService;I)Lcom/android/server/biometrics/BiometricSensor;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService;->getSensorForId(I)Lcom/android/server/biometrics/BiometricSensor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticate(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationRejected(Lcom/android/server/biometrics/BiometricService;JI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationRejected(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationSucceeded(Lcom/android/server/biometrics/BiometricService;JI[B)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(JI[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationTimedOut(Lcom/android/server/biometrics/BiometricService;JIIII)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationTimedOut(JIIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCancelAuthentication(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnAcquired(Lcom/android/server/biometrics/BiometricService;JIII)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(JIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDeviceCredentialPressed(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnDeviceCredentialPressed(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDialogAnimatedIn(Lcom/android/server/biometrics/BiometricService;JZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnDialogAnimatedIn(JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/BiometricService;JI[B)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(JI[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnError(Lcom/android/server/biometrics/BiometricService;JIIII)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService;->handleOnError(JIIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnReadyForAuthentication(Lcom/android/server/biometrics/BiometricService;JI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnStartFingerprintNow(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnStartFingerprintNow(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSystemEvent(Lcom/android/server/biometrics/BiometricService;JI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnSystemEvent(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnTryAgainPressed(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1433
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricService$Injector;-><init>()V

    invoke-static {}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getInstance()Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;Lcom/android/server/biometrics/BiometricHandlerProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;Lcom/android/server/biometrics/BiometricHandlerProvider;)V
    .locals 2

    .line 1439
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1441
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1442
    invoke-virtual {p3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 1443
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1444
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService-IA;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 1445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 1446
    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 1448
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getRequestGenerator()Ljava/util/function/Supplier;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Ljava/util/function/Supplier;

    .line 1449
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricContext(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 1450
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    .line 1451
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricCameraManager(Landroid/content/Context;)Lcom/android/server/biometrics/BiometricCameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    .line 1452
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getKeyStoreAuthorization()Landroid/security/KeyStoreAuthorization;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 1453
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

    .line 1454
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getNotificationLogger()Lcom/android/server/biometrics/BiometricNotificationLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

    .line 1457
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class p0, Lcom/android/server/biometrics/BiometricService;

    .line 1472
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1457
    invoke-interface {p1, p2, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1475
    const-string p1, "BiometricService"

    const-string p2, "Failed to register user switch observer"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v11, p2

    .line 1787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating authSession with authRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz v1, :cond_0

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing AuthSession: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    const/4 v1, 0x0

    .line 1797
    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1800
    :cond_0
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v15, p6

    invoke-virtual {v1, v3, v15}, Lcom/android/server/biometrics/BiometricService$Injector;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v20

    .line 1801
    new-instance v1, Lcom/android/server/biometrics/AuthSession;

    move-object v3, v2

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object v6, v5

    .line 1802
    invoke-virtual {v0, v11, v12}, Lcom/android/server/biometrics/BiometricService;->createSysuiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v5

    move-object v7, v6

    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    move-object v10, v8

    .line 1803
    invoke-virtual {v0, v11, v12}, Lcom/android/server/biometrics/BiometricService;->createClientDeathReceiver(J)Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    move-result-object v8

    .line 1804
    invoke-virtual {v0, v11, v12}, Lcom/android/server/biometrics/BiometricService;->createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v16

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1806
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/biometrics/BiometricService$Injector;->getFingerprintSensorProperties(Landroid/content/Context;)Ljava/util/List;

    move-result-object v21

    move-wide/from16 v13, p4

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v22, v10

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v21}, Lcom/android/server/biometrics/AuthSession;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;)V

    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1808
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->goToInitialState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1810
    const-string v1, "RemoteException"

    move-object/from16 v5, v22

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .locals 1

    .line 765
    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final createClientDeathReceiver(J)Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;
    .locals 1

    .line 836
    new-instance v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final createPreAuthInfo(Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 11

    .line 1308
    new-instance v5, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v5}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 1309
    invoke-virtual {v5, p3}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 1311
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    iget-object v10, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    const/4 v7, 0x0

    move-object v6, p1

    move v4, p2

    .line 1311
    invoke-static/range {v0 .. v10}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;Landroid/os/UserManager;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method public final createSysuiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .locals 1

    .line 801
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy Settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->-$$Nest$fgetmUseLegacyFaceOnlySettings(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1843
    const-string v0, "Sensors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1847
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;
    .locals 2

    .line 1515
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p0, :cond_0

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getRequestId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSensorForId(I)Lcom/android/server/biometrics/BiometricSensor;
    .locals 2

    .line 1831
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1832
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleAuthenticate(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .locals 12

    .line 1707
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v8, p1

    move-wide v6, p2

    move-wide/from16 v9, p4

    move/from16 v3, p6

    move-object/from16 v11, p7

    move-object/from16 v5, p8

    move-object/from16 v4, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleAuthenticationRejected(JI)V
    .locals 2

    .line 1536
    const-string v0, "handleAuthenticationRejected()"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1542
    const-string p0, "handleAuthenticationRejected: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1546
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationRejected(I)V

    return-void
.end method

.method public final handleAuthenticationSucceeded(JI[B)V
    .locals 2

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAuthenticationSucceeded(), sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1528
    const-string p0, "handleAuthenticationSucceeded: AuthSession is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1532
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService;->isStrongBiometric(I)Z

    move-result p0

    invoke-virtual {p1, p3, p0, p4}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationSucceeded(IZ[B)V

    return-void
.end method

.method public final handleAuthenticationTimedOut(JIIII)V
    .locals 2

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAuthenticationTimedOut(), sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1559
    const-string p0, "handleAuthenticationTimedOut: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1563
    :cond_0
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationTimedOut(IIII)V

    return-void
.end method

.method public final handleCancelAuthentication(J)V
    .locals 1

    .line 1815
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    .line 1816
    const-string p2, "BiometricService"

    if-nez p1, :cond_0

    .line 1817
    const-string p0, "handleCancelAuthentication: AuthSession is not current"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1822
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1824
    const-string p1, "handleCancelAuthentication: AuthSession finished"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1825
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :cond_1
    return-void
.end method

.method public final handleClientDied(J)V
    .locals 2

    .line 1651
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    .line 1652
    const-string p2, "BiometricService"

    if-nez p1, :cond_0

    .line 1653
    const-string p0, "handleClientDied: AuthSession is not current"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1657
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->onClientDied()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1660
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :cond_1
    return-void
.end method

.method public final handleOnAcquired(JIII)V
    .locals 0

    .line 1593
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1595
    const-string p0, "BiometricService"

    const-string/jumbo p1, "onAcquired: AuthSession is not current"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1599
    :cond_0
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/biometrics/AuthSession;->onAcquired(III)V

    return-void
.end method

.method public final handleOnDeviceCredentialPressed(J)V
    .locals 2

    .line 1628
    const-string/jumbo v0, "onDeviceCredentialPressed"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1631
    const-string p0, "handleOnDeviceCredentialPressed: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1635
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onDeviceCredentialPressed()V

    return-void
.end method

.method public final handleOnDialogAnimatedIn(JZ)V
    .locals 2

    .line 1665
    const-string v0, "handleOnDialogAnimatedIn"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1669
    const-string p0, "handleOnDialogAnimatedIn: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1673
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onDialogAnimatedIn(Z)V

    return-void
.end method

.method public final handleOnDismissed(JI[B)V
    .locals 0

    .line 1604
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1606
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onDismissed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", AuthSession is not current"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1610
    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/android/server/biometrics/AuthSession;->onDialogDismissed(I[B)V

    const/4 p1, 0x0

    .line 1611
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    return-void
.end method

.method public final handleOnError(JIIII)V
    .locals 2

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnError() sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1575
    const-string p0, "handleOnError: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1580
    :cond_0
    :try_start_0
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/android/server/biometrics/AuthSession;->onErrorReceived(IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1582
    const-string p1, "handleOnError: AuthSession finished"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1583
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1586
    const-string p1, "RemoteException"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final handleOnReadyForAuthentication(JI)V
    .locals 0

    .line 1693
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1698
    const-string p0, "BiometricService"

    const-string p1, "handleOnReadyForAuthentication: AuthSession is not current"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1702
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onCookieReceived(I)V

    return-void
.end method

.method public final handleOnStartFingerprintNow(J)V
    .locals 2

    .line 1677
    const-string v0, "handleOnStartFingerprintNow"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1681
    const-string p0, "handleOnStartFingerprintNow: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1685
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onStartFingerprint()V

    return-void
.end method

.method public final handleOnSystemEvent(JI)V
    .locals 2

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSystemEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1643
    const-string p0, "handleOnSystemEvent: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1647
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onSystemEvent(I)V

    return-void
.end method

.method public final handleOnTryAgainPressed(J)V
    .locals 2

    .line 1615
    const-string/jumbo v0, "onTryAgainPressed"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1620
    const-string p0, "handleOnTryAgainPressed: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1624
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onTryAgainPressed()V

    return-void
.end method

.method public final isStrongBiometric(I)Z
    .locals 2

    .line 1503
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1504
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_0

    .line 1505
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p0

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0

    return p0

    .line 1509
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensorId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$createClientDeathReceiver$0(J)V
    .locals 0

    .line 836
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleClientDied(J)V

    return-void
.end method

.method public final synthetic lambda$createClientDeathReceiver$1(J)V
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$handleAuthenticate$2(ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .locals 13

    .line 1709
    const-string v12, "BiometricService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1711
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    move-result v8

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    iget-object v11, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    .line 1709
    invoke-static/range {v1 .. v11}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;Landroid/os/UserManager;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object v10

    .line 1715
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1716
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401ad

    .line 1718
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1717
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 1722
    :cond_0
    :goto_0
    invoke-virtual {v10}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v1

    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    .line 1728
    :goto_2
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401ac

    .line 1731
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1730
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    .line 1733
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040442

    .line 1734
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1733
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 1736
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040407

    .line 1737
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1736
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1739
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104098f

    .line 1740
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1739
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1744
    :cond_6
    :goto_3
    invoke-virtual {v10}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    move-result-object v1

    .line 1746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAuthenticate: modality("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), status("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), preAuthInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " requestId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " promptInfo.isIgnoreEnrollmentState: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1746
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_8

    .line 1757
    iget-boolean v1, v10, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v10, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_7

    iget-object v1, v10, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 1758
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x8000

    .line 1759
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 1762
    :cond_7
    iget v6, v10, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    move-object v0, p0

    move-object v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p6

    move-object/from16 v7, p9

    move-wide v2, v3

    move-wide/from16 v4, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V

    return-void

    .line 1765
    :cond_8
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1766
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v7, p9

    .line 1765
    invoke-interface {v7, v0, v1, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1770
    :goto_4
    const-string v1, "Remote exception"

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1482
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 1483
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V

    .line 1484
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 1485
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricStrengthController;->startListening()V

    .line 1487
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$4;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricService$4;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
