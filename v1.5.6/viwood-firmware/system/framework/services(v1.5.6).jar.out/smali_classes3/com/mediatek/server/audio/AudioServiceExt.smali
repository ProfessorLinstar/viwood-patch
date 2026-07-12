.class public Lcom/mediatek/server/audio/AudioServiceExt;
.super Ljava/lang/Object;
.source "AudioServiceExt.java"


# static fields
.field public static final LOGD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userdebug"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/mediatek/server/audio/AudioServiceExt;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBleIntentFilters(Landroid/content/IntentFilter;)V
    .locals 0

    .line 143
    const-string p1, "[Default] getBleIntentFilters"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public getLeAudioDevice()Landroid/media/AudioDeviceAttributes;
    .locals 1

    .line 170
    const-string v0, "[Default] getLeAudioDevice()"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModeCb()Landroid/os/IBinder;
    .locals 1

    .line 267
    const-string v0, "[Default] getModeCb()"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessageExt(Landroid/os/Message;)V
    .locals 1

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid message "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioServiceExt"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 73
    const-string p1, "[Default] setBluetoothLeAudioDeviceConnectionState()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public isBleAudioFeatureSupported()Z
    .locals 1

    .line 106
    const-string v0, "[Default] isBleAudioFeatureSupported() false"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isBluetoothLeCgOn()Z
    .locals 1

    .line 147
    const-string v0, "[Default] isBluetoothLeCgOn"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isBluetoothLeCgStateOn()Z
    .locals 1

    .line 152
    const-string v0, "[Default] isBluetoothLeCgStateOn"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isBluetoothLeTbsDeviceActive()Z
    .locals 1

    .line 157
    const-string v0, "[Default] isBluetoothLeTbsDeviceActive()"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isSystemReady()Z
    .locals 1

    .line 214
    const-string v0, "[Default] isSystemReady() false"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final logd(Ljava/lang/String;)V
    .locals 0

    .line 64
    sget-boolean p0, Lcom/mediatek/server/audio/AudioServiceExt;->LOGD:Z

    if-eqz p0, :cond_0

    .line 65
    const-string p0, "AS.AudioServiceExt"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public notifyCgState(Z)V
    .locals 0

    .line 283
    const-string p1, "[Default] notifyCgState()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveExt(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 122
    const-string p1, "[Default] onReceiveExt"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onSystemReadyExt()V
    .locals 1

    .line 136
    const-string v0, "[Default] onSystemReadyExt"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 1

    .line 165
    const-string v0, "[Default] preferredCommunicationDevice()"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public restartBleRecord()V
    .locals 1

    .line 275
    const-string v0, "[Default] restartBleRecord()"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public restartScoInVoipCall()V
    .locals 1

    .line 251
    const-string v0, "[Default] restartScoInVoipCall()"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public setCommunicationDeviceExt(Landroid/os/IBinder;ILandroid/media/AudioDeviceInfo;Ljava/lang/String;)Z
    .locals 0

    .line 232
    const-string p1, "[Default] setCommunicationDeviceExt()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setPreferredDeviceForHfpInbandRinging(IIILandroid/os/IBinder;Z)V
    .locals 0

    .line 260
    const-string p1, "[Default] setPreferredDevicesForHfpInbandRinging()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public startBluetoothLeCg(IIILandroid/os/IBinder;)V
    .locals 0

    .line 179
    const-string p1, "[Default] startBluetoothLeCg()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public startBluetoothLeCg(Landroid/os/IBinder;I)V
    .locals 0

    .line 175
    const-string p1, "[Default] startBluetoothLeCg()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public startBluetoothLeCgForRecord(Landroid/os/IBinder;II)V
    .locals 0

    .line 183
    const-string p1, "[Default] startBluetoothLeCgForRecord()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public stopBluetoothLeCg(Landroid/os/IBinder;)Z
    .locals 0

    .line 192
    const-string p1, "[Default] stopBluetoothLeCg()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public stopBluetoothLeCgForRecord(Landroid/os/IBinder;I)Z
    .locals 0

    .line 187
    const-string p1, "[Default] stopBluetoothLeCgForRecord()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public stopBluetoothLeCgLater(Landroid/os/IBinder;)V
    .locals 0

    .line 197
    const-string p1, "[Default] stopBluetoothLeCgLater()"

    invoke-virtual {p0, p1}, Lcom/mediatek/server/audio/AudioServiceExt;->logd(Ljava/lang/String;)V

    return-void
.end method
