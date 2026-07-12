.class public Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;
.super Lcom/android/server/audio/AudioVolumeGroupHelperBase;
.source "AudioService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1241
    invoke-direct {p0}, Lcom/android/server/audio/AudioVolumeGroupHelperBase;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioVolumeGroups()Ljava/util/List;
    .locals 0

    .line 1244
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
