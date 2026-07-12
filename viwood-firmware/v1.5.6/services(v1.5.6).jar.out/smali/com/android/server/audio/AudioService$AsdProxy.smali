.class public Lcom/android/server/audio/AudioService$AsdProxy;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAsd:Landroid/media/IAudioServerStateDispatcher;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    .locals 0

    .line 15519
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15520
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 15524
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioServerStateListeners(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 15525
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioServerStateListeners(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {p0}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15526
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public callback()Landroid/media/IAudioServerStateDispatcher;
    .locals 0

    .line 15530
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    return-object p0
.end method
