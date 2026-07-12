.class public final Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final mUseStrongDuck:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;ZZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .locals 0

    .line 1492
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 1493
    iput-boolean p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mUseStrongDuck:Z

    return-void
.end method


# virtual methods
.method public getVSAction()Ljava/lang/String;
    .locals 0

    .line 1486
    iget-boolean p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mUseStrongDuck:Z

    if-eqz p0, :cond_0

    const-string p0, "ducking (strong)"

    return-object p0

    :cond_0
    const-string p0, "ducking"

    return-object p0
.end method
