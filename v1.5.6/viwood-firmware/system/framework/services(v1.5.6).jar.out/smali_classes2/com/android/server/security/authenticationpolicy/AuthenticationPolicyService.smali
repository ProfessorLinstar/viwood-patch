.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;
.super Lcom/android/server/SystemService;
.source "AuthenticationPolicyService.java"


# static fields
.field public static final DEBUG:Z

.field static final MAX_ALLOWED_FAILED_AUTH_ATTEMPTS:I = 0x5


# instance fields
.field public final mAuthenticationStateListener:Landroid/hardware/biometrics/AuthenticationStateListener;

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field final mFailedAttemptsForUser:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLastLockedTimestamp:Landroid/util/SparseLongArray;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockSettings:Lcom/android/internal/widget/LockSettingsInternal;

.field public final mLockSettingsStateListener:Lcom/android/internal/widget/LockSettingsStateListener;

.field public mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

.field public final mService:Landroid/os/IBinder;

.field public final mUserManager:Lcom/android/server/pm/UserManagerInternal;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleReportBiometricAuthAttempt(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;ZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->handleReportBiometricAuthAttempt(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReportPrimaryAuthAttempt(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;ZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->handleReportPrimaryAuthAttempt(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 70
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "AuthenticationPolicyService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    .line 90
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    .line 132
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$1;-><init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockSettingsStateListener:Lcom/android/internal/widget/LockSettingsStateListener;

    .line 151
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;

    invoke-direct {v0, p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;-><init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mAuthenticationStateListener:Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 185
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;-><init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mHandler:Landroid/os/Handler;

    .line 326
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;

    invoke-direct {v0, p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;-><init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mService:Landroid/os/IBinder;

    .line 99
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 100
    const-class p2, Lcom/android/internal/widget/LockSettingsInternal;

    .line 101
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/LockSettingsInternal;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockSettings:Lcom/android/internal/widget/LockSettingsInternal;

    .line 102
    const-class p2, Landroid/hardware/biometrics/BiometricManager;

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/biometrics/BiometricManager;

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 104
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 105
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 106
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 107
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public static collectTimeElapsedSinceLastLocked(JJI)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    if-eq p4, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 282
    :goto_1
    sget-boolean p4, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    if-eqz p4, :cond_2

    .line 283
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collectTimeElapsedSinceLastLockedForUser: lastLockedTime="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", authTime="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", unlockType="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AuthenticationPolicyService"

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    cmp-long p4, p0, p2

    if-lez p4, :cond_3

    return-void

    :cond_3
    const/16 v1, 0x334

    move-wide v2, p0

    move-wide v4, p2

    .line 295
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJI)V

    return-void
.end method


# virtual methods
.method public final handleReportBiometricAuthAttempt(ZI)V
    .locals 2

    .line 208
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReportBiometricAuthAttempt: success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthenticationPolicyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->reportAuthAttempt(IZI)V

    return-void
.end method

.method public final handleReportPrimaryAuthAttempt(ZI)V
    .locals 2

    .line 200
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReportPrimaryAuthAttempt: success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthenticationPolicyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->reportAuthAttempt(IZI)V

    return-void
.end method

.method public init()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockSettings:Lcom/android/internal/widget/LockSettingsInternal;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockSettingsStateListener:Lcom/android/internal/widget/LockSettingsStateListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockSettingsInternal;->registerLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mAuthenticationStateListener:Landroid/hardware/biometrics/AuthenticationStateListener;

    invoke-virtual {v0, p0}, Landroid/hardware/biometrics/BiometricManager;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    return-void
.end method

.method public final lockDevice(I)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x200

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 311
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockDevice: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", parentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuthenticationPolicyService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p1, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    .line 323
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->init()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 116
    const-string v0, "authentication_policy"

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final reportAuthAttempt(IZI)V
    .locals 4

    .line 217
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 223
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 226
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_1

    .line 227
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 228
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->collectTimeElapsedSinceLastLocked(JJI)V

    .line 233
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseLongArray;->delete(I)V

    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportAuthAttempt: numFailedAttempts="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", userId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AuthenticationPolicyService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p2, p3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 246
    const-string p0, "Not locking the device because the device is already locked."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p2, 0x5

    if-ge p1, p2, :cond_4

    .line 251
    const-string p0, "Not locking the device because the number of failed attempts is below the threshold."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 268
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->lockDevice(I)V

    return-void
.end method
