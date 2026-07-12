.class public final Lcom/android/server/media/LegacyDeviceRouteController;
.super Ljava/lang/Object;
.source "LegacyDeviceRouteController.java"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioRoutesObserver:Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mBuiltInSpeakerSuitabilityStatus:I

.field public final mContext:Landroid/content/Context;

.field public mDeviceRoute:Landroid/media/MediaRoute2Info;

.field public mDeviceVolume:I

.field public final mOnDeviceRouteChangedListener:Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;


# direct methods
.method public static bridge synthetic -$$Nest$fputmDeviceRoute(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/MediaRoute2Info;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateRouteFromAudioInfo(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceRouteUpdate(Lcom/android/server/media/LegacyDeviceRouteController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/LegacyDeviceRouteController;->notifyDeviceRouteUpdate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;-><init>(Lcom/android/server/media/LegacyDeviceRouteController;Lcom/android/server/media/LegacyDeviceRouteController-IA;)V

    iput-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioRoutesObserver:Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mContext:Landroid/content/Context;

    .line 91
    iput-object p4, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;

    .line 93
    iput-object p2, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    iput-object p3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioService:Landroid/media/IAudioService;

    .line 97
    invoke-static {p1}, Lcom/android/server/media/DeviceRouteController;->getBuiltInSpeakerSuitabilityStatus(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    .line 101
    :try_start_0
    invoke-interface {p3, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    const-string p2, "LDeviceRouteController"

    const-string p3, "Cannot connect to audio service to start listen to routes"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/media/LegacyDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method


# virtual methods
.method public final createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_4

    .line 157
    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, p1, 0x2

    const v3, 0x104034c

    if-eqz v2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    const/16 p1, 0xd

    const v3, 0x104034a

    goto :goto_0

    :cond_2
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    const/16 p1, 0x9

    const v3, 0x104034b

    goto :goto_0

    :cond_3
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    const/16 p1, 0xb

    const v3, 0x104034d

    goto :goto_0

    :cond_4
    const v3, 0x1040349

    move p1, v1

    .line 175
    :goto_0
    monitor-enter p0

    .line 176
    :try_start_0
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    const-string v4, "DEVICE_ROUTE"

    iget-object v5, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 180
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I

    .line 184
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 186
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 185
    invoke-virtual {v2, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string v2, "android.media.route.feature.LIVE_AUDIO"

    .line 188
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string v2, "android.media.route.feature.LIVE_VIDEO"

    .line 189
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string v2, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 190
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    if-ne p1, v1, :cond_5

    .line 194
    iget p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 197
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 198
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized getAvailableRoutes()Ljava/util/List;
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final notifyDeviceRouteUpdate()V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;

    invoke-interface {p0}, Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;->onDeviceRouteChanged()V

    return-void
.end method

.method public start(Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 0
    return-void
.end method

.method public declared-synchronized transferTo(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 136
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateVolume(I)Z
    .locals 2

    monitor-enter p0

    .line 140
    :try_start_0
    iget v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 141
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 144
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I

    .line 145
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
