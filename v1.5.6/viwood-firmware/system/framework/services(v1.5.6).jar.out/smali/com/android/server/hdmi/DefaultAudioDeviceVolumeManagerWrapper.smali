.class public Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;
.super Ljava/lang/Object;
.source "DefaultAudioDeviceVolumeManagerWrapper.java"

# interfaces
.implements Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;


# instance fields
.field public final mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

.field public final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {v0, p1}, Landroid/media/AudioDeviceVolumeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    .line 48
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioDeviceVolumeManager;->addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    return-void
.end method

.method public getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result p0

    return p0
.end method

.method public setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual/range {p0 .. p5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    return-void
.end method

.method public setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual/range {p0 .. p5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    return-void
.end method

.method public setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    .line 104
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioDeviceVolumeManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    return-void
.end method
