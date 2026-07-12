.class public Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;
.super Ljava/lang/Object;
.source "KeyboardBacklightController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IKeyboardBacklightListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/input/IKeyboardBacklightListener;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput p2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    .line 453
    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 458
    invoke-static {}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyboard backlight listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KbdBacklightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$monKeyboardBacklightListenerDied(Lcom/android/server/input/KeyboardBacklightController;I)V

    return-void
.end method

.method public notifyKeyboardBacklightChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    .locals 1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IKeyboardBacklightListener;->onBrightnessChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to notify process "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " that keyboard backlight changed, assuming it died."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KbdBacklightController"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->binderDied()V

    return-void
.end method
