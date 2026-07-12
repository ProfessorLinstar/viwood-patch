.class public final Lcom/android/server/usb/UsbAlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaDevice.java"


# static fields
.field public static final DIRECTION_STR:[Ljava/lang/String;


# instance fields
.field public final mAlsaCardDeviceString:Ljava/lang/String;

.field public mAudioService:Landroid/media/IAudioService;

.field public final mCardNum:I

.field public final mDeviceAddress:Ljava/lang/String;

.field public mDeviceDescription:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public final mDeviceNum:I

.field public final mDeviceType:[I

.field public final mHasDevice:[Z

.field public mHasJackDetect:Z

.field public final mIsDock:Z

.field public final mIsHeadset:[Z

.field public mIsSelected:[Z

.field public mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

.field public mState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "INPUT"

    const-string v1, "OUTPUT"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 50
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 52
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    .line 54
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 55
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    .line 56
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z

    .line 68
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 69
    iput p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 70
    iput p3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    .line 71
    iput-object p4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    .line 72
    aput-boolean p5, v1, v0

    const/4 p1, 0x0

    .line 73
    aput-boolean p6, v1, p1

    .line 74
    aput-boolean p7, v2, p1

    .line 75
    aput-boolean p8, v2, v0

    .line 76
    iput-boolean p9, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->initDeviceType()V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    return-void
.end method

.method private native nativeSetVolume(IF)V
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 3

    monitor-enter p0

    .line 360
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 362
    const-string p4, "card"

    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 363
    const-string p4, "device"

    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 364
    const-string/jumbo p4, "name"

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 365
    const-string p4, "has_output"

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 366
    const-string p4, "has_input"

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 367
    const-string p4, "address"

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    const-wide v1, 0x10900000006L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 369
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 391
    instance-of v0, p1, Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 394
    :cond_0
    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 395
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iget v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    iget v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    iget-object v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 397
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    iget-object v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    .line 398
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    iget-boolean p1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getAlsaCardDeviceString()Ljava/lang/String;
    .locals 2

    .line 106
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-gez v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alsaDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsbAlsaDevice"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCardNum()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    return p0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getInputDeviceType()I
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getOutputDeviceType()I
    .locals 1

    .line 271
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public hashCode()I
    .locals 5

    .line 409
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 410
    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 411
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v3, 0x1

    aget-boolean v4, v2, v3

    xor-int/2addr v4, v3

    add-int/2addr v0, v4

    mul-int/2addr v0, v1

    const/4 v4, 0x0

    .line 412
    aget-boolean v2, v2, v4

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 413
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    aget-boolean v4, v2, v4

    xor-int/2addr v4, v3

    add-int/2addr v0, v4

    mul-int/2addr v0, v1

    .line 414
    aget-boolean v2, v2, v3

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 415
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    xor-int/2addr p0, v3

    add-int/2addr v0, p0

    return v0
.end method

.method public final initDeviceType()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    const/high16 v3, -0x7e000000

    goto :goto_0

    :cond_0
    const v3, -0x7ffff000

    goto :goto_0

    :cond_1
    move v3, v2

    .line 257
    :goto_0
    aput v3, v0, v2

    const/4 v3, 0x1

    .line 258
    aget-boolean v1, v1, v3

    if-eqz v1, :cond_4

    .line 259
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-eqz v1, :cond_2

    const/16 v2, 0x1000

    goto :goto_1

    .line 260
    :cond_2
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_3

    const/high16 v2, 0x4000000

    goto :goto_1

    :cond_3
    const/16 v2, 0x4000

    .line 262
    :cond_4
    :goto_1
    aput v2, v0, v3

    return-void
.end method

.method public final declared-synchronized isInputJackConnected()Z
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 154
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 156
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isInputJackConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isOutputJackConnected()Z
    .locals 1

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 164
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 166
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isOutputJackConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 382
    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 383
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startOutput()V

    .line 195
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final startDevice(I)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 212
    aput-boolean v1, v0, p1

    .line 213
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    const/4 v2, 0x0

    aput v2, v0, p1

    .line 214
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startJackDetect()V

    if-ne p1, v1, :cond_1

    .line 216
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v2}, Lcom/android/server/usb/UsbAlsaDevice;->nativeSetVolume(IF)V

    .line 218
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z

    return-void
.end method

.method public declared-synchronized startInput()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized startJackDetect()V
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 172
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaJackDetector;->startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized startOutput()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 205
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopOutput()V

    .line 224
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopInput()V
    .locals 3

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 230
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 232
    :try_start_1
    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopJackDetect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 236
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateInputWiredDeviceConnectionState(Z)Z

    .line 237
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aput-boolean v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stopJackDetect()V
    .locals 1

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopOutput()V
    .locals 3

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    const/4 v1, 0x1

    aget-boolean v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 243
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 245
    :try_start_1
    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopJackDetect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaDevice;->updateOutputWiredDeviceConnectionState(Z)Z

    .line 250
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aput-boolean v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 349
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAlsaDevice: [card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasOutput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
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

.method public declared-synchronized updateInputWiredDeviceConnectionState(Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 330
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateOutputWiredDeviceConnectionState(Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 341
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final updateWiredDeviceConnectionState(IZ)Z
    .locals 7

    .line 284
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x0

    const-string v2, "UsbAlsaDevice"

    if-nez v0, :cond_0

    .line 285
    const-string p0, "Updating wired device connection state on unselected device"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to set device connection state as "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " device type is none"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 295
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " device connection state failed as alsa card device string is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-nez p1, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isInputJackConnected()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isOutputJackConnected()Z

    move-result v0

    .line 305
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " JACK connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    move p2, v1

    .line 307
    :goto_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    aget v4, v0, p1

    if-eq p2, v4, :cond_5

    .line 308
    aput p2, v0, p1

    .line 309
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v4, v4, p1

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 312
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, v0, p2, v2}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 314
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException in setWiredDeviceConnectionState for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_2
    return v3
.end method
