.class public final Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IInputSensorEventListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    .locals 0

    .line 3586
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3587
    iput p2, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    .line 3588
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 3593
    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensor event listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$monSensorEventListenerDied(Lcom/android/server/input/InputManagerService;I)V

    return-void
.end method

.method public getListener()Landroid/hardware/input/IInputSensorEventListener;
    .locals 0

    .line 3600
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    return-object p0
.end method

.method public notifySensorAccuracy(III)V
    .locals 1

    .line 3617
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputSensorEventListener;->onInputSensorAccuracyChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3619
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to notify process "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " that sensor accuracy notified, assuming it died."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "InputManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3621
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->binderDied()V

    return-void
.end method

.method public notifySensorEvent(IIIJ[F)V
    .locals 7

    .line 3606
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/input/IInputSensorEventListener;->onInputSensorChanged(IIIJ[F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 3609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to notify process "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " that sensor event notified, assuming it died."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "InputManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3611
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->binderDied()V

    return-void
.end method
