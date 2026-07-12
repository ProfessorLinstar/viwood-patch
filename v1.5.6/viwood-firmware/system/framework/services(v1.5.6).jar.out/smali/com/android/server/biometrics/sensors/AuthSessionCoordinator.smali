.class public Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;
.super Ljava/lang/Object;
.source "AuthSessionCoordinator.java"


# instance fields
.field public final mAuthOperations:Ljava/util/Set;

.field public mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

.field public mIsAuthenticating:Z

.field public final mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

.field public final mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;-><init>(Ljava/time/Clock;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Clock;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 59
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 60
    new-instance v0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;-><init>(Ljava/time/Clock;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 61
    new-instance p1, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    return-void
.end method


# virtual methods
.method public final attemptToFinish(IILjava/lang/String;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AuthSessionCoordinator"

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unable to find auth operation : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    iget v3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    if-eq p1, v3, :cond_1

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error mismatched userId, expected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 207
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    if-eqz p1, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->endAuthSession()V

    :cond_3
    :goto_2
    return-void
.end method

.method public authEndedFor(IIIJZ)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authEndedFor(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,biometricStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sensorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", wasSuccessful="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 170
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p5, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 172
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-virtual {p5, p2}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->authenticatedFor(I)V

    .line 174
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V

    return-void
.end method

.method public authStartedFor(IIJ)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authStartedFor(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sensorId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 122
    iget-boolean p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    if-nez p3, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->onAuthSessionStarted(I)V

    .line 126
    :cond_0
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string p4, "AuthSessionCoordinator"

    if-eqz p3, :cond_1

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error, authStartedFor("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") without being finished"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_1
    iget p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    if-eq p3, p1, :cond_2

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error authStartedFor("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") Incorrect userId, expected"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ignoring..."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearSession()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    .line 106
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public endAuthSession()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->getResult()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xfff

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 87
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearPermanentLockOut(II)V

    .line 90
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearTimedLockout(II)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->setPermanentLockOut(II)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->setTimedLockout(II)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal : onAuthSessionEnded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->clearSession()V

    :cond_4
    return-void
.end method

.method public getLockoutStateFor(II)I
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getLockoutState(II)I

    move-result p0

    return p0
.end method

.method public lockOutTimed(IIIJJ)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lockOutTimedFor(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", biometricStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sensorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", requestId="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 158
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p5, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 159
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-virtual {p5, p2}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->lockOutTimed(I)V

    .line 160
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V

    return-void
.end method

.method public lockedOutFor(IIIJ)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lockOutFor(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", biometricStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sensorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 146
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p5, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 147
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-virtual {p5, p2}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->lockedOutFor(I)V

    .line 148
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V

    return-void
.end method

.method public onAuthSessionStarted(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 69
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    .line 71
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal : onAuthSessionStarted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    return-void
.end method

.method public resetLockoutFor(IIJ)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetLockoutFor(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,biometricStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 183
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p4, p3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    const/16 p3, 0xf

    if-ne p2, p3, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->clearSession()V

    .line 190
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearPermanentLockOut(II)V

    .line 191
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearTimedLockout(II)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
