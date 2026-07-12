.class public Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
.super Ljava/lang/Object;
.source "KeyGestureController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IKeyGestureEventListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureEventListener;)V
    .locals 0

    .line 1262
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    iput p2, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    .line 1264
    iput-object p3, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1269
    invoke-static {}, Lcom/android/server/input/KeyGestureController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key gesture event listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyGestureController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    iget p0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$monKeyGestureEventListenerDied(Lcom/android/server/input/KeyGestureController;I)V

    return-void
.end method

.method public onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 2

    .line 1277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/input/IKeyGestureEventListener;->onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that key gesture event occurred, assuming it died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyGestureController"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->binderDied()V

    return-void
.end method
