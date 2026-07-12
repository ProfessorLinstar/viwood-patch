.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;
.super Ljava/lang/Object;
.source "VibratorControlService.java"


# instance fields
.field public final future:Ljava/util/concurrent/CompletableFuture;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final uptimeMs:J

.field public final usage:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    .line 541
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    .line 547
    iput p1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uid:I

    .line 548
    iput p2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->usage:I

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uptimeMs:J

    return-void
.end method


# virtual methods
.method public endRequest(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 554
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    return-void

    .line 556
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
