.class public final Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "AudioPlaybackDetector.java"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    .line 45
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public register(Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;

    .line 50
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;

    .line 56
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    :cond_0
    return-void
.end method
