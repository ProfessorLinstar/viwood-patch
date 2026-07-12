.class public abstract Lcom/android/server/biometrics/sensors/AuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "AuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/AuthenticationConsumer;


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mAllowBackgroundAuthentication:Z

.field public mAuthAttempted:Z

.field public mAuthSuccess:Z

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mIsRestricted:Z

.field public final mIsStrongBiometric:Z

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mOperationId:J

.field public final mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

.field public final mRequireConfirmation:Z

.field public final mSensorStrength:I

.field public final mShouldUseLockoutTracker:Z

.field public mStartTimeMs:J

.field public mState:I

.field public final mTaskStackListener:Landroid/app/TaskStackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZI)V
    .locals 14

    move-object/from16 v0, p15

    .line 100
    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getUserId()I

    move-result v6

    .line 101
    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getSensorId()I

    move-result v9

    .line 102
    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->isMandatoryBiometrics()Z

    move-result v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v10, p17

    .line 100
    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    const/4 v3, 0x0

    .line 82
    iput v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 86
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    move/from16 v4, p13

    .line 103
    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    move-wide/from16 v4, p5

    .line 104
    iput-wide v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    move/from16 v4, p10

    .line 105
    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getActivityTaskManager()Landroid/app/ActivityTaskManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 107
    const-class v4, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    move-object/from16 p1, p14

    .line 108
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 109
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    move/from16 p1, p7

    .line 110
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    move/from16 p1, p16

    .line 111
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 112
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    move/from16 p1, p18

    .line 113
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    move-object/from16 p1, p8

    .line 114
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->binderDiedInternal(Z)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 369
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    .line 370
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_0

    .line 371
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    :cond_0
    return-void
.end method

.method public getActivityTaskManager()Landroid/app/ActivityTaskManager;
    .locals 0

    .line 140
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    return-object p0
.end method

.method public getLockoutTracker()Lcom/android/server/biometrics/sensors/LockoutTracker;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    return-object p0
.end method

.method public getOptions()Landroid/hardware/biometrics/AuthenticateOptions;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    return-object p0
.end method

.method public getProtoEnum()I
    .locals 0

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public getRequestReason()I
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isSettings()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0
.end method

.method public getSensorStrength()I
    .locals 0

    .line 413
    iget p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    return p0
.end method

.method public getStartTimeMs()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    return-wide v0
.end method

.method public final handleFailedAttempt(I)I
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->addFailedAttemptForUser(I)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getLockoutTracker()Lcom/android/server/biometrics/sensors/LockoutTracker;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    .line 125
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementPermanentLockoutForUser(I)V

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    :cond_2
    return v0
.end method

.method public abstract handleLifecycleAfterAuth(Z)V
.end method

.method public interruptsPrecedingClients()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isCryptoOperation()Z
    .locals 4

    .line 172
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguard()Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSettings()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onAcquired(II)V
    .locals 0

    .line 323
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 18

    move-object/from16 v1, p0

    .line 178
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v4

    iget-boolean v6, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 179
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v8

    move/from16 v5, p2

    .line 178
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnAuthenticated(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;ZZIZ)V

    .line 181
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticated("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), ID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Owner: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isBP: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", listener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requireConfirmation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", user: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", clientMonitor: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v8, "Biometrics/AuthenticationClient"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 195
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-virtual {v0, v3, v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementCryptoAuthForUser(IZ)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-virtual {v0, v3, v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAuthForUser(IZ)V

    .line 201
    :goto_0
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "Allowing background authentication, this is allowed only for platform or test invocations"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    const/4 v9, 0x0

    if-nez v0, :cond_2

    if-eqz v5, :cond_2

    .line 209
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v9

    :goto_1
    const/4 v3, -0x1

    .line 215
    const-string v4, "159249069"

    const v6, 0x534e4554

    if-eqz v0, :cond_4

    .line 216
    const-string v5, "Failing possible background authentication"

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 221
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "Attempted background authentication"

    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move v10, v9

    goto :goto_3

    :cond_4
    move v10, v5

    .line 225
    :goto_3
    const-string v11, "Unable to notify listener"

    if-eqz v10, :cond_d

    if-eqz v0, :cond_6

    .line 228
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 229
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "Successful background authentication!"

    filled-new-array {v4, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_6
    const/4 v0, 0x1

    .line 233
    iput-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    .line 234
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->markAlreadyDone()V

    .line 236
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_7

    .line 237
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v3, v0}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 240
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [B

    move v0, v9

    .line 241
    :goto_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    move-object/from16 v3, p3

    .line 242
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 246
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_b

    .line 247
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    if-eqz v0, :cond_9

    .line 248
    iget-object v12, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v13

    .line 249
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    .line 250
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v15

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v16

    move-object/from16 v17, v5

    .line 248
    invoke-virtual/range {v12 .. v17}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 253
    :cond_9
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    move-result v0

    if-eqz v0, :cond_a

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adding auth token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 257
    :cond_a
    const-string v0, "addAuthToken succeeded"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 260
    :cond_b
    const-string v0, "Skipping addAuthToken"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_5
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    if-nez v0, :cond_c

    .line 264
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v3

    .line 265
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v6

    iget-boolean v7, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    move-object/from16 v4, p1

    .line 264
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    .line 267
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v3

    .line 269
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v6

    iget-boolean v7, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    const/4 v4, 0x0

    .line 267
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 272
    :goto_6
    invoke-static {v8, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, v1, v9}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    :cond_d
    if-eqz v0, :cond_f

    .line 278
    const-string v0, "Sending cancel to client(Due to background auth)"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_e

    .line 280
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 282
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->sendCancelOnly(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    .line 283
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, v1, v9}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_7

    .line 286
    :cond_f
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    if-eqz v0, :cond_10

    .line 288
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result v0

    if-eqz v0, :cond_10

    .line 290
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->markAlreadyDone()V

    .line 295
    :cond_10
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    :goto_7
    invoke-virtual {v1, v10}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    return-void

    :catch_1
    move-exception v0

    .line 297
    invoke-static {v8, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, v1, v9}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    const/4 p1, 0x4

    .line 329
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    return-void
.end method

.method public final sendCancelOnly(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .locals 4

    .line 307
    const-string v0, "Biometrics/AuthenticationClient"

    if-nez p1, :cond_0

    .line 308
    const-string p0, "Unable to sendAuthenticationCanceled, listener null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 312
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    .line 313
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p0

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 312
    invoke-virtual {p1, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 317
    const-string p1, "Remote exception"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 4

    .line 337
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 340
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result p1

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object p1

    .line 344
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->getLockoutStateFor(II)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    .line 347
    const-string v1, "Biometrics/AuthenticationClient"

    if-eqz p1, :cond_2

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In lockout mode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ; disallowing authentication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    const/16 p1, 0x9

    :goto_1
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void

    .line 356
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz p1, :cond_3

    .line 357
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 360
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting auth for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    .line 363
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    .line 364
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    return-void
.end method

.method public wasAuthSuccessful()Z
    .locals 0

    .line 409
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    return p0
.end method
