.class public Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mCb:Landroid/os/IBinder;

.field public mDevice:Landroid/media/AudioDeviceAttributes;

.field public mDisabled:Z

.field public final mIsPrivileged:Z

.field public mPlaybackActive:Z

.field public mRecordingActive:Z

.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)V
    .locals 0

    .line 2742
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2743
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 2744
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2745
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 2746
    iput-boolean p5, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    .line 2747
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    .line 2748
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService;->isRecordingActiveForUid(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    const/4 p1, 0x0

    .line 2749
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 2773
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    return-void
.end method

.method public getAttributionSource()Landroid/content/AttributionSource;
    .locals 0

    .line 2781
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 0

    .line 2777
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    return-object p0
.end method

.method public getDevice()Landroid/media/AudioDeviceAttributes;
    .locals 0

    .line 2796
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 2785
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    return p0
.end method

.method public isActive()Z
    .locals 1

    .line 2808
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isDisabled()Z
    .locals 0

    .line 2815
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    return p0
.end method

.method public isPrivileged()Z
    .locals 0

    .line 2789
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    return p0
.end method

.method public registerDeathRecipient()Z
    .locals 3

    const/4 v0, 0x0

    .line 2755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 2758
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommunicationRouteClient could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " binder death"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 0

    .line 2793
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 2812
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    return-void
.end method

.method public setPlaybackActive(Z)V
    .locals 0

    .line 2800
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    return-void
.end method

.method public setRecordingActive(Z)V
    .locals 0

    .line 2804
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CommunicationRouteClient: mAttributionSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 2821
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsPrivileged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPlaybackActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRecordingActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterDeathRecipient()V
    .locals 2

    .line 2765
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2767
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommunicationRouteClient could not unlink to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " binder death"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.AudioDeviceBroker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
