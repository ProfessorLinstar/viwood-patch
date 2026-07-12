.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method public static synthetic $r8$lambda$_BEBxLUTKEeIgd9BylFMy0pEZcM(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->lambda$registerAuthenticators$1(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g64zBxQcWdBvj9LH6t6Qh5SbgVw(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/content/DialogInterface;I)V
    .locals 0

    const/16 p1, 0xa

    const/4 p2, 0x0

    .line 379
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 382
    const-string p1, "FingerprintService"

    const-string p2, "Remote exception in negative button onClick()"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    .locals 0

    .line 898
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addAuthenticatorsRegisteredCallback_enforcePermission()V

    .line 900
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    return-void
.end method

.method public addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 0

    .line 869
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addClientActiveCallback_enforcePermission()V

    .line 871
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->registerCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 0

    .line 636
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addLockoutResetCallback_enforcePermission()V

    .line 638
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J
    .locals 22

    move-object/from16 v0, p0

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 275
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 276
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    move-result v8

    .line 280
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    move v7, v5

    move v5, v4

    const/4 v4, 0x1

    invoke-static/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result v1

    const-wide/16 v9, -0x1

    const-string v11, "FingerprintService"

    if-nez v1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authenticate rejecting package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v9

    .line 293
    :cond_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v21, :cond_1

    .line 298
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    const-string v0, "79776455"

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 302
    const-string v0, "Authenticate invoked when user is encrypted or lockdown"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v9

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    throw v0

    .line 306
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move/from16 v19, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move/from16 v19, v1

    :goto_0
    if-eqz v21, :cond_3

    :goto_1
    move/from16 v20, v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    goto :goto_1

    .line 315
    :goto_2
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 316
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 318
    :cond_4
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v3}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 319
    new-instance v1, Landroid/util/Pair;

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object v4

    .line 320
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    if-nez v1, :cond_5

    .line 324
    const-string v0, "Null provider for authenticate"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v9

    .line 327
    :cond_5
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p5

    invoke-virtual {v4, v3}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 329
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 330
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    if-nez v21, :cond_7

    .line 331
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v6}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v3, :cond_7

    .line 332
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v6

    if-nez v6, :cond_6

    .line 333
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 337
    :cond_6
    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->isIgnoreEnrollmentState()Z

    move-result v8

    move-object/from16 v6, p4

    move v4, v5

    move v5, v7

    move-object v7, v2

    move-wide/from16 v1, p2

    .line 335
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 339
    const-string v1, "Invalid package"

    invoke-static {v11, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v9

    .line 343
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 345
    :try_start_2
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const-class v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_8

    .line 348
    invoke-virtual {v0, v5}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onAuthenticationPrompt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 351
    :cond_8
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v6, p4

    invoke-direct {v0, v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    const/16 v16, 0x0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    invoke-interface/range {v12 .. v21}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;ZIZ)J

    move-result-wide v0

    return-wide v0

    .line 351
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw v0
.end method

.method public final authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Z)J
    .locals 7

    .line 366
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 368
    invoke-static {p4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p4

    .line 367
    invoke-virtual {v0, p7, v1, p4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p4

    .line 369
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 371
    new-instance p7, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {p7, p4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const p4, 0x10401ad

    .line 372
    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p7, p4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    const p7, 0x1040442

    .line 373
    invoke-virtual {v0, p7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p4, p7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    const/high16 p7, 0x1040000

    .line 375
    invoke-virtual {v0, p7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p7

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 374
    invoke-virtual {p4, p7, v3, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    iget p7, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 385
    invoke-virtual {p4, p7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setIsForLegacyFingerprintManager(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    .line 386
    invoke-virtual {p4, p8}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setIgnoreEnrollmentState(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    .line 387
    invoke-virtual {p4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v1

    .line 389
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;

    invoke-direct {v4, p0, p6, p3, p5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;I)V

    .line 444
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateForOperation(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 519
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 520
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 522
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v3, 0x1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p2

    const-string p3, "FingerprintService"

    if-nez p2, :cond_0

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cancelAuthentication rejecting package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 533
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_1

    .line 535
    const-string p0, "Null provider for cancelAuthentication"

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 539
    :cond_1
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .locals 1

    .line 569
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthenticationFromService_enforcePermission()V

    .line 571
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelAuthenticationFromService, sensorId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FingerprintService"

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 575
    const-string p0, "Null provider for cancelAuthenticationFromService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 579
    :cond_0
    invoke-interface {p0, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;J)V
    .locals 1

    .line 255
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment_enforcePermission()V

    .line 257
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    .line 259
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for cancelEnrollment"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelEnrollment(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 2

    .line 546
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelFingerprintDetect_enforcePermission()V

    .line 548
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FingerprintService"

    if-nez v0, :cond_0

    .line 549
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cancelFingerprintDetect called from non-sysui package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 556
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_1

    .line 558
    const-string p0, "Null provider for cancelFingerprintDetect"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 562
    :cond_1
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 0

    .line 152
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->createTestSession_enforcePermission()V

    .line 154
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Null provider for createTestSession, sensorId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public detectFingerprint(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J
    .locals 5

    .line 453
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->detectFingerprint_enforcePermission()V

    .line 455
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    const-string v4, "FingerprintService"

    if-nez v1, :cond_0

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "detectFingerprint called from non-sysui package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_1

    .line 463
    const-string p0, "Null provider for detectFingerprint"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 466
    :cond_1
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 468
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    const/4 p2, 0x1

    invoke-interface {p0, p1, v0, p3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleFingerDetect(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 652
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 658
    :try_start_0
    array-length v2, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "--proto"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v4, :cond_3

    :try_start_1
    aget-object v2, p3, v5

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "--state"

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 659
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 660
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 662
    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 663
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {p1, v2, p2, v5}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 666
    :cond_2
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto/16 :goto_3

    .line 667
    :cond_3
    array-length v2, p3

    if-lez v2, :cond_5

    aget-object p3, p3, v5

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 668
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 670
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 671
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {p2, v2, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->dumpProtoMetrics(ILjava/io/FileDescriptor;)V

    goto :goto_1

    .line 675
    :cond_5
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 677
    invoke-interface {p3}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dumping for sensorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fps state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v5

    .line 681
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->getBiometricState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    iget v3, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {p3, v3, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->dumpInternal(ILjava/io/PrintWriter;)V

    .line 683
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 688
    :cond_7
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    throw p0
.end method

.method public dumpSensorServiceStateProto(IZ)[B
    .locals 1

    .line 167
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->dumpSensorServiceStateProto_enforcePermission()V

    .line 169
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 170
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-eqz p0, :cond_0

    .line 172
    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 174
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 175
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J
    .locals 10

    .line 240
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll_enforcePermission()V

    .line 242
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    .line 244
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for enroll"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J

    move-result-wide p0

    return-wide p0
.end method

.method public generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 6

    .line 207
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->generateChallenge_enforcePermission()V

    .line 209
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez v0, :cond_0

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching sensor for generateChallenge, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v3, p1

    move v1, p2

    move v2, p3

    move-object v4, p4

    move-object v5, p5

    .line 215
    invoke-interface/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .locals 0

    .line 833
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId_enforcePermission()V

    .line 835
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 837
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for getAuthenticatorId"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0

    .line 840
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getAuthenticatorId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 753
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 757
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 758
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 759
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    .line 753
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p2

    if-nez p2, :cond_0

    .line 760
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 763
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 764
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {p2, p3}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 767
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLockoutModeForUser(II)I
    .locals 0

    .line 806
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getLockoutModeForUser_enforcePermission()V

    .line 808
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 810
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for getLockoutModeForUser"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 813
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getLockoutModeForUser(II)I

    move-result p0

    return p0
.end method

.method public getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 1

    .line 192
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorProperties_enforcePermission()V

    .line 194
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 196
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matching sensor for getSensorProperties, sensorId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.TEST_BIOMETRIC"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledFingerprints(IILjava/lang/String;)Z
    .locals 1

    .line 792
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints_enforcePermission()V

    .line 794
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 796
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for hasEnrolledFingerprints, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 800
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 773
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 778
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 779
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    .line 773
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 783
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 784
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {p2, p3}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 786
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 787
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 0

    .line 820
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->invalidateAuthenticatorId_enforcePermission()V

    .line 822
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 824
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for invalidateAuthenticatorId"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 827
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isClientActive()Z
    .locals 0

    .line 861
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isClientActive_enforcePermission()V

    .line 863
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->isAnySensorActive()Z

    move-result p0

    return p0
.end method

.method public isHardwareDetected(ILjava/lang/String;)Z
    .locals 0

    .line 721
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected_enforcePermission()V

    .line 723
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 725
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for isHardwareDetected, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 729
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->isHardwareDetected(I)Z

    move-result p0

    return p0
.end method

.method public isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 694
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 698
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 699
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 700
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 694
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 704
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 706
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_1

    .line 708
    const-string p0, "FingerprintService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null provider for isHardwareDetectedDeprecated, caller: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 712
    :cond_1
    :try_start_1
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->isHardwareDetected(I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    throw p0
.end method

.method public final synthetic lambda$registerAuthenticators$1(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Ljava/util/List;
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 932
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerDown_enforcePermission()V

    .line 933
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 935
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching provider for onFingerDown, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 938
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    return-void
.end method

.method public onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 944
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerUp_enforcePermission()V

    .line 945
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 947
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching provider for onFingerUp, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 950
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    return-void
.end method

.method public onPowerPressed()V
    .locals 1

    .line 994
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPowerPressed_enforcePermission()V

    .line 996
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 997
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPowerPressed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 646
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 647
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUdfpsUiEvent(IJI)V
    .locals 0

    .line 957
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onUdfpsUiEvent_enforcePermission()V

    .line 959
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 961
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching provider for onUdfpsUiEvent, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 964
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onUdfpsUiEvent(IJI)V

    return-void
.end method

.method public prepareForAuthentication(Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZZ)V
    .locals 12

    .line 480
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->prepareForAuthentication_enforcePermission()V

    .line 482
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez v0, :cond_0

    .line 484
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for prepareForAuthentication"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p10, :cond_1

    const/4 p0, 0x3

    :goto_0
    move v10, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    goto :goto_0

    .line 492
    :goto_1
    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 p0, p4

    invoke-direct {v5, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    const/4 v9, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v4, p8

    move/from16 v11, p9

    invoke-interface/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JZIZ)V

    return-void
.end method

.method public registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .locals 0

    .line 907
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticationStateListener_enforcePermission()V

    .line 909
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmAuthenticationStateListeners(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    return-void
.end method

.method public registerAuthenticators(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V
    .locals 2

    .line 886
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticators_enforcePermission()V

    .line 887
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->hasSensorConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    const-string p0, "FingerprintService"

    const-string p1, "No fingerprint sensors available."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->registerAll(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .locals 0

    .line 924
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerBiometricStateListener_enforcePermission()V

    .line 926
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 8

    .line 586
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove_enforcePermission()V

    .line 588
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    .line 590
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for remove"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p1

    move v5, p2

    move v6, p3

    move-object v4, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V

    return-void
.end method

.method public removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 6

    .line 602
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeAll_enforcePermission()V

    .line 604
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;

    invoke-direct {v3, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 623
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 624
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p3

    .line 625
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 626
    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 0

    .line 877
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeClientActiveCallback_enforcePermission()V

    .line 879
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->removeCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 1

    .line 735
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename_enforcePermission()V

    .line 737
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_1

    .line 743
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for rename"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 747
    :cond_1
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->rename(IIILjava/lang/String;)V

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .locals 0

    .line 847
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->resetLockout_enforcePermission()V

    .line 849
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 851
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for resetLockout, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 855
    :cond_0
    invoke-interface {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleResetLockout(II[B)V

    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .locals 7

    .line 222
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->revokeChallenge_enforcePermission()V

    .line 224
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez v0, :cond_0

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching sensor for revokeChallenge, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v3, p1

    move v1, p2

    move v2, p3

    move-object v4, p4

    move-wide v5, p5

    .line 230
    invoke-interface/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method public scheduleWatchdog()V
    .locals 1

    .line 1004
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->scheduleWatchdog_enforcePermission()V

    .line 1006
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1008
    const-string p0, "FingerprintService"

    const-string v0, "Null provider for scheduling watchdog"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleWatchdog(I)V

    return-void
.end method

.method public setIgnoreDisplayTouches(JIZ)V
    .locals 0

    .line 970
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setIgnoreDisplayTouches_enforcePermission()V

    .line 972
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 974
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching provider for setIgnoreDisplayTouches, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 978
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->setIgnoreDisplayTouches(JIZ)V

    return-void
.end method

.method public setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 1

    .line 984
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setUdfpsOverlayController_enforcePermission()V

    .line 986
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 987
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startPreparedClient(II)V
    .locals 0

    .line 501
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->startPreparedClient_enforcePermission()V

    .line 503
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-nez p0, :cond_0

    .line 505
    const-string p0, "FingerprintService"

    const-string p1, "Null provider for startPreparedClient"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 509
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->startPreparedClient(II)V

    return-void
.end method

.method public unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .locals 0

    .line 916
    invoke-super {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->unregisterAuthenticationStateListener_enforcePermission()V

    .line 918
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmAuthenticationStateListeners(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    return-void
.end method
