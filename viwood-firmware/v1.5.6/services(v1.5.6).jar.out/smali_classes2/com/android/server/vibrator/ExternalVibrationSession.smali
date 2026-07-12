.class public final Lcom/android/server/vibrator/ExternalVibrationSession;
.super Lcom/android/server/vibrator/Vibration;
.source "ExternalVibrationSession.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mExternalVibration:Landroid/os/ExternalVibration;

.field public final mManagerHooks:Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;

.field public final mScale:Landroid/os/ExternalVibrationScale;

.field public final mSessionId:J


# direct methods
.method public constructor <init>(Landroid/os/ExternalVibration;Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;)V
    .locals 6

    .line 55
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 56
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    .line 59
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/Vibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 48
    invoke-static {}, Lcom/android/server/vibrator/VibrationSession;->nextSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    .line 50
    new-instance v0, Landroid/os/ExternalVibrationScale;

    invoke-direct {v0}, Landroid/os/ExternalVibrationScale;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    .line 60
    iput-object p1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    .line 61
    iput-object p2, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 124
    const-string v0, "ExternalVibrationSession"

    const-string v1, "Binder died, cancelling external vibration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, v0}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 131
    iget-object p1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStats;->hasStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->mute()Z

    .line 138
    iget-object p1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStats;->getEndUptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStats;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibrationStats;->reportVibratorOn(J)V

    .line 140
    iget-object p1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-interface {p1, v0, v1}, Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;->onExternalVibrationReleased(J)V

    :cond_0
    return-void
.end method

.method public getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public getCallerToken()Landroid/os/IBinder;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p0}, Landroid/os/ExternalVibration;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getCreateUptimeMillis()J
    .locals 2

    .line 75
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStats;->getCreateUptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 9

    .line 90
    new-instance v0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget v7, p0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    iget v8, p0, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    return-object v0
.end method

.method public getScale()Landroid/os/ExternalVibrationScale;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    return-object p0
.end method

.method public getSessionId()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    return-wide v0
.end method

.method public isHoldingSameVibration(Landroid/os/ExternalVibration;)Z
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p0, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRepeating()Z
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public linkToDeath()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, p0}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    const/4 p0, 0x1

    return p0
.end method

.method public muteScale()V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    const/16 v0, -0x64

    iput v0, p0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    return-void
.end method

.method public notifySessionCallback()V
    .locals 0

    .line 0
    return-void
.end method

.method public notifySyncedVibratorsCallback(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyVibratorCallback(IJJ)V
    .locals 0

    .line 0
    return-void
.end method

.method public requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V
    .locals 0

    .line 147
    new-instance p3, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {p3, p1, p2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/ExternalVibrationSession;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    return-void
.end method

.method public scale(Lcom/android/server/vibrator/VibrationScaler;I)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result v1

    iput v1, v0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 181
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    move-result p1

    iput p1, v0, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    .line 182
    iget-object p1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget p0, p0, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    invoke-virtual {p1, p0}, Lcom/android/server/vibrator/VibrationStats;->reportAdaptiveScale(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalVibrationSession{sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vibrationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalVibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlinkToDeath()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, p0}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public wasEndRequested()Z
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result p0

    return p0
.end method
