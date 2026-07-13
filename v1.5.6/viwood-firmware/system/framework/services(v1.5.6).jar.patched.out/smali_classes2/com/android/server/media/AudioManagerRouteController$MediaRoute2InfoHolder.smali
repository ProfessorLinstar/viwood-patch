.class public Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;
.super Ljava/lang/Object;
.source "AudioManagerRouteController.java"


# instance fields
.field public final mAudioDeviceInfoType:I

.field public final mCorrespondsToInactiveBluetoothRoute:Z

.field public final mMediaRoute2Info:Landroid/media/MediaRoute2Info;


# direct methods
.method public constructor <init>(Landroid/media/MediaRoute2Info;IZ)V
    .locals 0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 583
    iput p2, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    .line 584
    iput-boolean p3, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    return-void
.end method

.method public static createForAudioManagerRoute(Landroid/media/MediaRoute2Info;I)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;
    .locals 2

    .line 562
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    return-object v0
.end method

.method public static createForInactiveBluetoothRoute(Landroid/media/MediaRoute2Info;)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;
    .locals 3

    .line 572
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    return-object v0
.end method


# virtual methods
.method public copyWithVolumeInfo(IIZ)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;
    .locals 2

    .line 589
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    xor-int/lit8 p3, p3, 0x1

    .line 591
    invoke-virtual {v0, p3}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p3

    .line 595
    invoke-virtual {p3, p1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 596
    invoke-virtual {p1, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 597
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    .line 598
    new-instance p2, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    iget p3, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    iget-boolean p0, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    invoke-direct {p2, p1, p3, p0}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    return-object p2
.end method
