.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# static fields
.field public static final IS_MULTI_MODE:Z

.field public static final TAG:Ljava/lang/String; = "UsbAlsaManager"

.field public static final sDeviceDenylist:Ljava/util/List;


# instance fields
.field public final mAlsaCards:Ljava/util/HashSet;

.field public final mAlsaDevices:Ljava/util/ArrayList;

.field public final mAlsaObserver:Landroid/os/FileObserver;

.field public mAttachedDevices:Ljava/util/HashMap;

.field public mAudioService:Landroid/media/IAudioService;

.field public final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field public final mContext:Landroid/content/Context;

.field public final mHasMidiFeature:Z

.field public final mMidiDevices:Ljava/util/HashMap;

.field public mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;


# direct methods
.method public static bridge synthetic -$$Nest$malsaFileAdded(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$malsaFileRemoved(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 58
    const-string/jumbo v0, "ro.audio.multi_usb_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    .line 109
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v1, 0x54c

    const/16 v2, 0x5c4

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(III)V

    new-instance v2, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v4, 0x9cc

    invoke-direct {v2, v1, v4, v3}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(III)V

    new-instance v4, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v5, 0xce6

    invoke-direct {v4, v1, v5, v3}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(III)V

    filled-new-array {v0, v2, v4}, [Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 141
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$1;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/snd/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x300

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbAlsaManager$1;-><init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/io/File;I)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    .line 156
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.midi"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    return-void
.end method

.method public static isDeviceDenylisted(III)Z
    .locals 4

    .line 121
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 122
    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mVendorId:I

    if-ne v3, p0, :cond_0

    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mProductId:I

    if-ne v3, p1, :cond_0

    .line 124
    iget p0, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mFlags:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method


# virtual methods
.method public final addAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 226
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->getInputDeviceType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    .line 227
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->getOutputDeviceType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    return-void
.end method

.method public final addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V
    .locals 3

    if-nez p1, :cond_0

    .line 213
    sget-object p0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore caching device as the type is NONE, device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Stack;

    .line 221
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addMidiDevice(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)V
    .locals 9

    .line 365
    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    .line 367
    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->containsUniversalMidiDeviceEndpoint()Z

    move-result v1

    .line 372
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 373
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 374
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 378
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_0
    move-object v3, v0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v3, v1

    .line 385
    :goto_2
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v3, "manufacturer"

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string/jumbo v0, "product"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string/jumbo v0, "version"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string/jumbo v0, "serial_number"

    .line 390
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p4}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v0

    const-string v1, "alsa_card"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    const-string v0, "alsa_device"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string/jumbo v0, "usb_device"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 395
    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiInputs()I

    move-result v7

    .line 396
    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiOutputs()I

    move-result v8

    .line 402
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 403
    invoke-virtual {p4}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v5

    const/4 v6, 0x0

    .line 402
    invoke-static/range {v3 .. v8}, Lcom/android/server/usb/UsbAlsaMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 406
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final alsaFileAdded(Ljava/lang/String;)V
    .locals 4

    .line 526
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alsaFileAdded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->getCardNumberFromAlsaFilePath(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding ALSA device card="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 537
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final alsaFileRemoved(Ljava/lang/String;)V
    .locals 1

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->getCardNumberFromAlsaFilePath(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 547
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .locals 0

    monitor-enter p0

    .line 199
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
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

.method public final deselectCurrentDevice(I)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    if-eqz p0, :cond_3

    .line 281
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 285
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deselect current device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p1}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopInput()V

    return-void

    .line 289
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopOutput()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 7

    .line 569
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 571
    iget-object p4, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {p4}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanStatus()I

    move-result p4

    const-string v0, "cards_parser"

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 573
    iget-object p4, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/usb/UsbAlsaDevice;

    .line 574
    const-string v3, "alsa_devices"

    const-wide v4, 0x20b00000002L

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/usb/UsbAlsaDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object p4, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/usb/UsbAlsaMidiDevice;

    const-string v4, "alsa_midi_devices"

    const-wide v5, 0x20b00000004L

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbAlsaMidiDevice;->dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 583
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final getAlsaDeviceListIndexFor(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbAlsaDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getCardNumberFromAlsaFilePath(Ljava/lang/String;)I
    .locals 4

    .line 501
    const-string/jumbo p0, "pcmC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 502
    const-string/jumbo p0, "p"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    const-string p0, "c"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 507
    :cond_1
    const-string/jumbo p0, "midiC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/16 p0, 0x43

    .line 516
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/16 v1, 0x44

    .line 517
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 p0, p0, 0x1

    .line 518
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 520
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse ALSA file name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    .line 512
    :cond_2
    sget-object p0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type file("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") added."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public logDevices(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final removeAlsaDevice(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;
    .locals 1

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->getAlsaDeviceListIndexFor(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 245
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->getOutputDeviceType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    .line 246
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->getInputDeviceType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 237
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .locals 3

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "usb_audio_automatic_routing_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 185
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final selectDefaultDevice(I)Lcom/android/server/usb/UsbAlsaDevice;
    .locals 3

    .line 258
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    if-eqz p0, :cond_2

    .line 259
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 263
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select default device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {p1}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startInput()V

    return-object p0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startOutput()V

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setPeripheralMidiState(ZII)V
    .locals 7

    .line 444
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    if-nez v0, :cond_1

    .line 449
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 450
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040a7e

    .line 451
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x1040a7d

    .line 453
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x1040a7f

    .line 455
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "product"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string p1, "alsa_card"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string p1, "alsa_device"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/usb/UsbAlsaMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 461
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    if-eqz p1, :cond_2

    .line 462
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p1, 0x0

    .line 463
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    :cond_2
    :goto_0
    return-void
.end method

.method public systemReady()V
    .locals 1

    .line 161
    const-string v0, "audio"

    .line 162
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 163
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    invoke-virtual {p0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method public usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 13

    .line 301
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()I

    .line 304
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 305
    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v11

    if-nez v11, :cond_1

    .line 307
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usbDeviceAdded(): cannot find sound card for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(IZ)Z

    .line 316
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasInput()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    move-result v1

    if-nez v1, :cond_2

    move v7, v2

    goto :goto_0

    :cond_2
    move v7, v12

    .line 319
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasOutput()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    move-result v1

    if-nez v1, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v12

    :goto_1
    if-nez v7, :cond_5

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v2, p3

    goto :goto_5

    .line 326
    :cond_5
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v8

    .line 327
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v9

    .line 328
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isDock()Z

    move-result v10

    .line 330
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v1, :cond_6

    .line 331
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no AudioService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_6
    new-instance v1, Lcom/android/server/usb/UsbAlsaDevice;

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 336
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V

    .line 340
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardDescription()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v1, v2, v3}, Lcom/android/server/usb/UsbAlsaDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-boolean v2, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    if-eqz v2, :cond_7

    .line 342
    invoke-virtual {v1}, Lcom/android/server/usb/UsbAlsaDevice;->getInputDeviceType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->deselectCurrentDevice(I)V

    .line 343
    invoke-virtual {v1}, Lcom/android/server/usb/UsbAlsaDevice;->getOutputDeviceType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->deselectCurrentDevice(I)V

    goto :goto_4

    .line 346
    :cond_7
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 347
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 350
    :cond_8
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->addAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 351
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    goto :goto_2

    .line 354
    :goto_5
    invoke-virtual {p0, p1, p2, v2, v11}, Lcom/android/server/usb/UsbAlsaManager;->addMidiDevice(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)V

    .line 356
    const-string v1, "deviceAdded()"

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized usbDeviceRemoved(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 417
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeAlsaDevice(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;

    move-result-object v0

    .line 418
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB Audio Device Removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(IZ)Z

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 422
    sget-boolean v2, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getOutputDeviceType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice(I)Lcom/android/server/usb/UsbAlsaDevice;

    .line 424
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getInputDeviceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice(I)Lcom/android/server/usb/UsbAlsaDevice;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 434
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaMidiDevice;

    if-eqz v0, :cond_2

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB MIDI Device Removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 440
    :cond_2
    const-string/jumbo p1, "usbDeviceRemoved()"

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final waitForAlsaDevice(IZ)Z
    .locals 7

    .line 475
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    monitor-enter v0

    .line 476
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x9c4

    add-long/2addr v1, v3

    .line 477
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, p2

    if-eqz v3, :cond_1

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 482
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 484
    :catch_0
    :try_start_2
    sget-object v3, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "usb: InterruptedException while waiting for ALSA file."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_1
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int v3, p2, p0

    if-eqz v3, :cond_2

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 490
    sget-object p2, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForAlsaDevice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") timeout"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 492
    :cond_2
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForAlsaDevice for device card="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isAdded="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", found="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_1
    monitor-exit v0

    return p0

    .line 496
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
