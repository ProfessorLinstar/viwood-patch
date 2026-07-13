.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
.implements Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;


# instance fields
.field public mServiceRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 1

    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2088
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onComplete(IJJ)V
    .locals 6

    .line 2109
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2111
    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJJ)V

    :cond_0
    return-void
.end method

.method public onSyncedVibrationComplete(J)V
    .locals 0

    .line 2093
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_0

    .line 2095
    invoke-static {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V

    :cond_0
    return-void
.end method

.method public onVibrationSessionComplete(J)V
    .locals 0

    .line 2101
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_0

    .line 2103
    invoke-static {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monVibrationSessionComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V

    :cond_0
    return-void
.end method
