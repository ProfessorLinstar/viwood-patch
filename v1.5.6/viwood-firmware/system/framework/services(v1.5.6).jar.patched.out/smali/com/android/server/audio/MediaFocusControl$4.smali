.class public Lcom/android/server/audio/MediaFocusControl$4;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0

    .line 1576
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1579
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 1596
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->-$$Nest$fgetmUid(Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;)I

    move-result p1

    .line 1597
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1598
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSL_L_FORGET_UID uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    return-void

    .line 1581
    :cond_2
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1582
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_L_FOCUS_LOSS_AFTER_FADE loser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 1583
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1582
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_3
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1586
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 1587
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isInFocusLossLimbo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1588
    const-string/jumbo v1, "loss after fade"

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(ILjava/lang/String;)I

    .line 1589
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 1590
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mpostForgetUidLater(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/FocusRequester;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1592
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
