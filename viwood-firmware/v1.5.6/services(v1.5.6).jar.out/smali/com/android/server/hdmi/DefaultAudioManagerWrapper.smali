.class public Lcom/android/server/hdmi/DefaultAudioManagerWrapper;
.super Ljava/lang/Object;
.source "DefaultAudioManagerWrapper.java"

# interfaces
.implements Lcom/android/server/hdmi/AudioManagerWrapper;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStreamMaxVolume(I)I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getStreamMinVolume(I)I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0

    return p0
.end method

.method public getStreamVolume(I)I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public isStreamMute(I)Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result p0

    return p0
.end method

.method public setStreamMute(IZ)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    return-void
.end method

.method public setStreamVolume(III)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    return-void
.end method
