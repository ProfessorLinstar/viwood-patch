.class public Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;
.super Ljava/lang/Object;
.source "StickyModifierStateController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IStickyModifierStateListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/StickyModifierStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/StickyModifierStateController;ILandroid/hardware/input/IStickyModifierStateListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->this$0:Lcom/android/server/input/StickyModifierStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p2, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    .line 112
    iput-object p3, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 117
    invoke-static {}, Lcom/android/server/input/StickyModifierStateController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sticky modifier state listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModifierStateController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->this$0:Lcom/android/server/input/StickyModifierStateController;

    iget p0, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/StickyModifierStateController;->-$$Nest$monStickyModifierStateListenerDied(Lcom/android/server/input/StickyModifierStateController;I)V

    return-void
.end method

.method public notifyStickyModifierStateChanged(II)V
    .locals 1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IStickyModifierStateListener;->onStickyModifierStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that sticky modifier state changed, assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ModifierStateController"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->binderDied()V

    return-void
.end method
