.class public final Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioServiceEvents.java"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mDeviceAddress:Ljava/lang/String;

.field public final mDeviceForStream:I

.field public final mDeviceNativeType:Ljava/lang/String;

.field public final mSkipped:Z

.field public final mStream:I

.field public final mVolIndex:I


# direct methods
.method public constructor <init>(IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;Z)V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 187
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mStream:I

    .line 188
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mVolIndex:I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceNativeType:Ljava/lang/String;

    .line 190
    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceAddress:Ljava/lang/String;

    .line 191
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceForStream:I

    .line 192
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mCaller:Ljava/lang/String;

    .line 193
    iput-boolean p6, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mSkipped:Z

    .line 195
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string p4, "audio.volume.event"

    invoke-direct {p0, p4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p4, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo p6, "setDeviceVolume"

    .line 196
    invoke-virtual {p0, p4, p6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p4, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 198
    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p0, p4, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 200
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 201
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 202
    invoke-virtual {p0, p1, p5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDeviceVolume(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mStream:I

    .line 209
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index:"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mVolIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device:"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceNativeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addr:"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") from "

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-boolean v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mSkipped:Z

    if-eqz v1, :cond_0

    .line 215
    const-string p0, " skipped [device in use]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 217
    :cond_0
    const-string v1, " currDevForStream:Ox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceForStream:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
