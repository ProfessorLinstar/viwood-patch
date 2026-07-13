.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# instance fields
.field public final mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mFingerprintProvider:Ljava/util/function/Function;

.field public final mFingerprintProviderFunction:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;

.field public final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

.field final mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;


# direct methods
.method public static synthetic $r8$lambda$2dqdPrnRQF3k2uWjNXHSpd6EHTE()Landroid/hardware/biometrics/IBiometricService;
    .locals 1

    .line 1018
    const-string v0, "biometric"

    .line 1019
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1018
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$XDtt2AUszEsa9j5pwwmMw_9nEIs()[Ljava/lang/String;
    .locals 1

    .line 1020
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getDeclaredInstances()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$YPwvFsZyTxv31sAZsJbpW04iZ-Q(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->lambda$new$2(Ljava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oEJy3E8rNN13Qe2QWcgAJIKmT0A(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->lambda$new$3(Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuthenticationStateListeners(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getProviders(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1017
    invoke-static {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/IBiometricService;",
            ">;",
            "Ljava/util/function/Supplier<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;",
            ">;",
            "Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;",
            ")V"
        }
    .end annotation

    .line 1032
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;

    .line 1033
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 1034
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

    .line 1035
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1036
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    invoke-direct {p2}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 1037
    new-instance p2, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 1038
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1039
    new-instance p2, Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;-><init>(Landroid/os/UserManager;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 1040
    new-instance p1, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 1042
    :cond_0
    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    :goto_0
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintProvider:Ljava/util/function/Function;

    if-eqz p6, :cond_1

    goto :goto_1

    .line 1063
    :cond_1
    new-instance p6, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;

    invoke-direct {p6, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    :goto_1
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintProviderFunction:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;

    .line 1070
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 1071
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-direct {p1, v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;-><init>(Landroid/hardware/fingerprint/IFingerprintService;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 1072
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1200
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x37

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getDeclaredInstances()[Ljava/lang/String;
    .locals 4

    .line 1138
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before:getDeclaredInstances: IFingerprint instance found, a.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-string/jumbo v1, "virtual"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1145
    const-class v3, Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After:getDeclaredInstances: a.length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public final canUseFingerprint(Ljava/lang/String;Ljava/lang/String;ZIII)Z
    .locals 4

    .line 1172
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1177
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 1180
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1183
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p6

    const/4 v0, 0x0

    const-string v1, "Rejecting "

    const-string v3, "FingerprintService"

    if-nez p6, :cond_3

    .line 1184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; not a current user or profile"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1187
    :cond_3
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; permission denied"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    if-eqz p3, :cond_5

    .line 1191
    invoke-static {p4, p5}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    move-result p0

    if-nez p0, :cond_5

    .line 1192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; not in foreground"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    return v2
.end method

.method public final filterAvailableHalInstances(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Landroid/util/Pair;
    .locals 3

    .line 1096
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorInstance()Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->isSingleSensorConfigurationPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    new-instance p0, Landroid/util/Pair;

    .line 1099
    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 1103
    :cond_0
    const-string/jumbo v1, "virtual"

    invoke-virtual {p1, v1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->doesInstanceExist(Ljava/lang/String;)Z

    move-result v2

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFingerprintVirtualEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v2, :cond_1

    .line 1106
    new-instance p0, Landroid/util/Pair;

    .line 1107
    invoke-virtual {p1, v1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 1109
    :cond_1
    const-string p0, "FingerprintService"

    const-string v1, "Could not find virtual interface while it is enabled"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance p0, Landroid/util/Pair;

    .line 1111
    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    .line 1117
    invoke-virtual {p1, v1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorNameNotForInstance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1119
    new-instance v0, Landroid/util/Pair;

    .line 1120
    invoke-virtual {p1, p0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1124
    :cond_3
    new-instance p0, Landroid/util/Pair;

    .line 1125
    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1153
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for getEnrolledFingerprintsDeprecated, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1160
    :cond_0
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getProviders(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Ljava/util/List;
    .locals 2

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->filterAvailableHalInstances(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)Landroid/util/Pair;

    move-result-object v1

    .line 1087
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintProviderFunction:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;

    .line 1088
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getResetLockoutRequiresHardwareAuthToken()Z

    move-result p1

    .line 1087
    invoke-interface {p0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;->getFingerprintProvider(Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final synthetic lambda$new$2(Ljava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .locals 13

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getIFingerprint(Ljava/lang/String;)Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v1

    .line 1045
    const-string v2, "FingerprintService"

    if-eqz v1, :cond_0

    .line 1047
    :try_start_0
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 1049
    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    const/4 v12, 0x1

    move-object v8, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1053
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Remote exception in getSensorProps: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1056
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to get declared service: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$new$3(Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .locals 10

    .line 1064
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 1130
    const-string v0, "fingerprint"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public sendFingerprintReEnrollNotification()V
    .locals 3

    .line 1256
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermissionOrShell(Landroid/content/Context;Ljava/lang/String;)V

    .line 1257
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 1258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1260
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1262
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 1263
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->sendFingerprintReEnrollNotification()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1265
    :cond_0
    const-string p0, "FingerprintService"

    const-string v2, "Null provider for notification"

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    throw p0

    :cond_1
    return-void
.end method

.method public simulateVhalFingerDown()V
    .locals 2

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFingerprintVirtualEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    const-string v0, "FingerprintService"

    const-string v1, "Simulate virtual HAL finger down event"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1246
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 1247
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1246
    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->simulateVhalFingerDown(II)V

    :cond_0
    return-void
.end method

.method public syncEnrollmentsNow()V
    .locals 9

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermissionOrShell(Landroid/content/Context;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFingerprintVirtualEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1214
    const-string v0, "Sync virtual enrollments"

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1216
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1217
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1218
    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 1219
    iget v6, v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;

    invoke-direct {v7, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v8, 0x1

    invoke-interface {v4, v6, v0, v7, v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;Z)V

    goto :goto_0

    .line 1234
    :cond_1
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1236
    const-string v0, "Failed to wait for sync finishing"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method
