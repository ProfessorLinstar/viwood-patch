.class public Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
.super Ljava/lang/Object;
.source "KeyGestureController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureHandler;)V
    .locals 0

    .line 1381
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    iput p2, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    .line 1383
    iput-object p3, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1388
    invoke-static {}, Lcom/android/server/input/KeyGestureController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key gesture event handler for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyGestureController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    iget p0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$monKeyGestureHandlerRemoved(Lcom/android/server/input/KeyGestureController;I)V

    return-void
.end method

.method public handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .locals 1

    .line 1396
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IKeyGestureHandler;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send key gesture to process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyGestureController"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1400
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->binderDied()V

    return-void
.end method
