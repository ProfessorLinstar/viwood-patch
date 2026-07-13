.class public final Lcom/android/server/audio/PlaybackActivityMonitor$FadeOutEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "PlaybackActivityMonitor.java"


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .locals 0

    .line 1505
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    return-void
.end method


# virtual methods
.method public getVSAction()Ljava/lang/String;
    .locals 0

    .line 1500
    const-string p0, "fading out"

    return-object p0
.end method
