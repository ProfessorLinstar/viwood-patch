.class public Lcom/android/server/audio/PlaybackActivityMonitor$1;
.super Landroid/os/Handler;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/PlaybackActivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor;Landroid/os/Looper;)V
    .locals 0

    .line 1704
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1707
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1736
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_1

    .line 1738
    const-string p0, "AS.PlaybackActivityMon"

    const-string p1, "Received format event with no extras"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1741
    :cond_1
    const-string v1, "android.media.extra.PLAYER_EVENT_SPATIALIZED"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1743
    const-string v3, "android.media.extra.PLAYER_EVENT_SAMPLE_RATE"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1745
    const-string v4, "android.media.extra.PLAYER_EVENT_CHANNEL_MASK"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1747
    new-instance v4, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-direct {v4, v1, v0, v3}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(ZII)V

    .line 1750
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerFormatEvent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v3, v4}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerFormatEvent;-><init>(ILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1753
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmPlayerLock(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1754
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmPlayers(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/util/HashMap;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 1755
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 1756
    invoke-virtual {p1, v4}, Landroid/media/AudioPlaybackConfiguration;->handleFormatEvent(Landroid/media/AudioPlaybackConfiguration$FormatInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1760
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$mdispatchPlaybackChange(Lcom/android/server/audio/PlaybackActivityMonitor;Z)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 1755
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1719
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmPlayerLock(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1720
    :try_start_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1721
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1724
    filled-new-array {p1}, [I

    move-result-object v3

    .line 1725
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;

    const/4 v6, 0x7

    invoke-direct {v5, v1, v6, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(II[I)V

    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1727
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmPlayers(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    if-eqz v1, :cond_6

    .line 1728
    invoke-virtual {v1, p1}, Landroid/media/AudioPlaybackConfiguration;->handleMutedEvent(I)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 1731
    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$mdispatchPlaybackChange(Lcom/android/server/audio/PlaybackActivityMonitor;Z)V

    .line 1732
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 1729
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    .line 1732
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 1709
    :cond_7
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout for muting waiting for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", unmuting"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AS.PlaybackActivityMon"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1712
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmPlayerLock(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1713
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$munmutePlayersExpectingDevice(Lcom/android/server/audio/PlaybackActivityMonitor;)V

    .line 1714
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1715
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmMuteAwaitConnectionTimeoutCb(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/util/function/Consumer;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception p0

    .line 1714
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
