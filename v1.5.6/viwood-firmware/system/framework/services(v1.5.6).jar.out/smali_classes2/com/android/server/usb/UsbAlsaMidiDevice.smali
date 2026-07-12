.class public final Lcom/android/server/usb/UsbAlsaMidiDevice;
.super Ljava/lang/Object;
.source "UsbAlsaMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final BUFFER_SIZE:I = 0x200

.field public static final TAG:Ljava/lang/String; = "UsbAlsaMidiDevice"


# instance fields
.field public final mAlsaCard:I

.field public final mAlsaDevice:I

.field public final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field public mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field public mFileDescriptors:[Ljava/io/FileDescriptor;

.field public mInputStreams:[Ljava/io/FileInputStream;

.field public mIsOpen:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

.field public final mNumInputs:I

.field public final mNumOutputs:I

.field public mOutputStreams:[Ljava/io/FileOutputStream;

.field public mPipeFD:I

.field public mPollFDs:[Landroid/system/StructPollfd;

.field public mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

.field public mServer:Landroid/media/midi/MidiDeviceServer;

.field public mServerAvailable:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInputStreams(Lcom/android/server/usb/UsbAlsaMidiDevice;)[Ljava/io/FileInputStream;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/UsbAlsaMidiDevice;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPollFDs(Lcom/android/server/usb/UsbAlsaMidiDevice;)[Landroid/system/StructPollfd;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerBoostSetter(Lcom/android/server/usb/UsbAlsaMidiDevice;)Lcom/android/server/usb/PowerBoostSetter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcloseLocked(Lcom/android/server/usb/UsbAlsaMidiDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->closeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mopenLocked(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->openLocked()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPipeFD:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    .line 86
    new-instance v1, Lcom/android/server/usb/UsbAlsaMidiDevice$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbAlsaMidiDevice$1;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 165
    iput p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    .line 166
    iput p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    .line 167
    iput p3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    .line 168
    iput p4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumOutputs:I

    .line 172
    new-array p1, p4, [Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    .line 174
    iget-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    new-instance p3, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    invoke-direct {p3, p0, v0}, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;Lcom/android/server/usb/UsbAlsaMidiDevice-IA;)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Lcom/android/server/usb/PowerBoostSetter;

    invoke-direct {p1}, Lcom/android/server/usb/PowerBoostSetter;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;
    .locals 1

    .line 155
    new-instance v0, Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/UsbAlsaMidiDevice;-><init>(IIII)V

    .line 156
    invoke-virtual {v0, p0, p1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 157
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 158
    const-string p0, "UsbAlsaMidiDevice"

    const-string p1, "createDeviceServer failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private native nativeOpen(IIII)[Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->closeLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 333
    iput-boolean v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz p0, :cond_1

    .line 337
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    return-void

    .line 334
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final closeLocked()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 342
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 344
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    move v1, v0

    .line 348
    :goto_1
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 349
    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 351
    :cond_1
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    move v1, v0

    .line 353
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 354
    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 356
    :cond_2
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 359
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    .line 360
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 362
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    return-void
.end method

.method public dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 2

    .line 370
    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p3

    .line 372
    const-string p5, "device_address"

    const-wide v0, 0x10900000003L

    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v0, 0x10500000001L

    .line 373
    iget p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    const-string p5, "card"

    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000002L

    .line 374
    iget p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    const-string p1, "device"

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 376
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final openLocked()Z
    .locals 11

    .line 181
    iget v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_0
    iget v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumOutputs:I

    .line 189
    iget v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    iget v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->nativeOpen(IIII)[Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 192
    const-string p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "nativeOpen failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 195
    :cond_1
    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 197
    new-array v4, v0, [Landroid/system/StructPollfd;

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 198
    new-array v4, v0, [Ljava/io/FileInputStream;

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 201
    aget-object v5, v2, v4

    .line 202
    new-instance v6, Landroid/system/StructPollfd;

    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    .line 203
    iput-object v5, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 204
    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    .line 205
    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v6, v7, v4

    .line 206
    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    :cond_2
    new-array v4, v1, [Ljava/io/FileOutputStream;

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 210
    new-array v4, v1, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_3

    .line 214
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    add-int v7, v0, v4

    aget-object v7, v2, v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v6, v5, v4

    .line 215
    new-instance v5, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v5}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 216
    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v5, v6, v4

    .line 217
    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    aget-object v6, v6, v4

    invoke-virtual {v5}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v2

    if-lez v0, :cond_4

    .line 224
    new-instance v0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;

    const-string v4, "UsbAlsaMidiDevice input thread"

    invoke-direct {v0, p0, v4, v2}, Lcom/android/server/usb/UsbAlsaMidiDevice$2;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    move v10, v3

    :goto_2
    if-ge v10, v1, :cond_5

    .line 275
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v8, v0, v10

    .line 276
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v9, v0, v10

    .line 279
    new-instance v5, Lcom/android/server/usb/UsbAlsaMidiDevice$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbAlsaMidiDevice output thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/usb/UsbAlsaMidiDevice$3;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    .line 302
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object v6, p0

    const/4 p0, 0x1

    .line 305
    iput-boolean p0, v6, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    return p0
.end method

.method public final register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 10

    .line 310
    const-class v0, Landroid/media/midi/MidiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/media/midi/MidiManager;

    const/4 p1, 0x0

    if-nez v0, :cond_0

    .line 312
    const-string p0, "UsbAlsaMidiDevice"

    const-string p2, "No MidiManager in UsbAlsaMidiDevice.register()"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    const/4 v9, 0x1

    .line 316
    iput-boolean v9, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    .line 317
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    iget v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez p2, :cond_1

    return p1

    :cond_1
    return v9
.end method
