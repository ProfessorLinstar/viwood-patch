.class public Lcom/android/server/usb/UsbDirectMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbDirectMidiDevice.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$cableCountFinal:I

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;

.field public final synthetic val$portStartFinal:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    iput p7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portStartFinal:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 417
    const-string v1, "UsbDirectMidiDevice"

    new-instance v2, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 418
    new-instance v0, Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {v0}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>()V

    .line 419
    iget v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter;->createDecoders(I)V

    .line 421
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 422
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x1

    move v5, v4

    :cond_0
    :goto_0
    if-eqz v5, :cond_c

    .line 425
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 426
    const-string p0, "input thread interrupted"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    .line 429
    :cond_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 430
    invoke-virtual {v2, v6}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 431
    const-string p0, "Cannot queue request"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 434
    :cond_2
    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v7

    if-nez v7, :cond_3

    .line 436
    const-string p0, "Response is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_3
    if-eq v2, v7, :cond_4

    .line 440
    const-string v6, "Skipping response"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 447
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    if-lez v12, :cond_0

    .line 451
    const-string v6, "Input before conversion "

    const/4 v13, 0x0

    invoke-static {v6, v3, v13, v12}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(Ljava/lang/String;[BII)V

    .line 456
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 457
    invoke-virtual {v0, v3, v12}, Lcom/android/server/usb/UsbMidiPacketConverter;->decodeMidiPackets([BI)V

    :cond_5
    move v14, v13

    .line 461
    :goto_1
    iget v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    if-ge v14, v6, :cond_0

    .line 463
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 466
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v6, v3, v12}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v6

    :goto_2
    move-object v7, v6

    goto :goto_3

    .line 470
    :cond_6
    invoke-virtual {v0, v14}, Lcom/android/server/usb/UsbMidiPacketConverter;->pullDecodedMidiPackets(I)[B

    move-result-object v6

    goto :goto_2

    .line 475
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " after conversion "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    array-length v8, v7

    invoke-static {v6, v7, v13, v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(Ljava/lang/String;[BII)V

    .line 480
    array-length v6, v7

    if-nez v6, :cond_7

    goto :goto_4

    .line 484
    :cond_7
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    if-eqz v6, :cond_b

    iget v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portStartFinal:I

    add-int v9, v8, v14

    aget-object v9, v6, v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    add-int/2addr v8, v14

    .line 491
    aget-object v6, v6, v8

    array-length v9, v7

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 498
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmPowerBoostSetter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/PowerBoostSetter;

    move-result-object v6

    if-eqz v6, :cond_a

    array-length v6, v7

    if-le v6, v4, :cond_a

    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 501
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$misChannelVoiceMessage(Lcom/android/server/usb/UsbDirectMidiDevice;[B)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 502
    :cond_9
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmPowerBoostSetter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/PowerBoostSetter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/usb/PowerBoostSetter;->boostPower()V

    :cond_a
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 487
    :cond_b
    :goto_5
    const-string/jumbo v5, "outputReceivers is null"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v13

    goto/16 :goto_0

    .line 512
    :cond_c
    :goto_6
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_8

    .line 510
    :goto_7
    :try_start_1
    const-string v0, "input thread: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 508
    :catch_1
    const-string/jumbo p0, "reader thread exiting"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 514
    :goto_8
    const-string p0, "input thread exit"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 512
    :goto_9
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 513
    throw p0
.end method
