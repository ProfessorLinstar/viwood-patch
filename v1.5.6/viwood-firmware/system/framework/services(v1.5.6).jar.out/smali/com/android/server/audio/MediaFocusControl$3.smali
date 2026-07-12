.class public Lcom/android/server/audio/MediaFocusControl$3;
.super Ljava/lang/Thread;
.source "MediaFocusControl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;

.field public final synthetic val$enteringRingOrCall:Z


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Z)V
    .locals 0

    .line 1475
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iput-boolean p2, p0, Lcom/android/server/audio/MediaFocusControl$3;->val$enteringRingOrCall:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1477
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$3;->val$enteringRingOrCall:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 1479
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1481
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1484
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1487
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmRingOrCallActive(Lcom/android/server/audio/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1488
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object p0

    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetUSAGES_TO_MUTE_IN_RING_OR_CALL()[I

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1490
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 1492
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
