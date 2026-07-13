.class public Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;
.super Ljava/lang/Object;
.source "MultiBiometricLockoutState.java"


# instance fields
.field public mAuthenticatorType:Ljava/lang/Integer;

.field public mPermanentlyLockedOut:Z

.field public mTimedLockout:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;ZZ)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mAuthenticatorType:Ljava/lang/Integer;

    .line 184
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 185
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    return-void
.end method


# virtual methods
.method public toString(J)Ljava/lang/String;
    .locals 2

    .line 189
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    const-string p2, "false"

    const-string/jumbo v0, "true"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 190
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    if-eqz v1, :cond_1

    move-object p2, v0

    .line 191
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mAuthenticatorType:Ljava/lang/Integer;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricManager;->authenticatorToStr(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 191
    const-string p1, "(%s, permanentLockout=%s, timedLockout=%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
