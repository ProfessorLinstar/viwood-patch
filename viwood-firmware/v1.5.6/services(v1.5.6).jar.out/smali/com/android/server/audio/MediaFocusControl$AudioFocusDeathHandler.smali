.class public Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCb:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 682
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusPolicy(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v1, p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mremoveFocusEntryForExtPolicyOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mremoveFocusStackEntryOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 687
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmMultiAudioFocusEnabled(Lcom/android/server/audio/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 688
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 689
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 691
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 693
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_0

    .line 698
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
