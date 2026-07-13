.class public abstract Landroid/gsi/IGsiService$Stub;
.super Landroid/os/Binder;
.source "IGsiService.java"

# interfaces
.implements Landroid/gsi/IGsiService;


# static fields
.field static final TRANSACTION_cancelGsiInstall:I = 0x8

.field static final TRANSACTION_closeInstall:I = 0x13

.field static final TRANSACTION_closePartition:I = 0x15

.field static final TRANSACTION_commitGsiChunkFromAshmem:I = 0x4

.field static final TRANSACTION_commitGsiChunkFromStream:I = 0x1

.field static final TRANSACTION_createPartition:I = 0x14

.field static final TRANSACTION_disableGsi:I = 0xc

.field static final TRANSACTION_dumpDeviceMapperDevices:I = 0x18

.field static final TRANSACTION_enableGsi:I = 0x5

.field static final TRANSACTION_enableGsiAsync:I = 0x6

.field static final TRANSACTION_getActiveDsuSlot:I = 0xf

.field static final TRANSACTION_getAvbPublicKey:I = 0x19

.field static final TRANSACTION_getInstallProgress:I = 0x2

.field static final TRANSACTION_getInstalledDsuSlots:I = 0x11

.field static final TRANSACTION_getInstalledGsiImageDir:I = 0x10

.field static final TRANSACTION_isGsiEnabled:I = 0x7

.field static final TRANSACTION_isGsiInstallInProgress:I = 0x9

.field static final TRANSACTION_isGsiInstalled:I = 0xd

.field static final TRANSACTION_isGsiRunning:I = 0xe

.field static final TRANSACTION_openImageService:I = 0x17

.field static final TRANSACTION_openInstall:I = 0x12

.field static final TRANSACTION_removeGsi:I = 0xa

.field static final TRANSACTION_removeGsiAsync:I = 0xb

.field static final TRANSACTION_setGsiAshmem:I = 0x3

.field static final TRANSACTION_suggestScratchSize:I = 0x1a

.field static final TRANSACTION_zeroPartition:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 256
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 257
    const-string v0, "android.gsi.IGsiService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 268
    :cond_0
    const-string v0, "android.gsi.IGsiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    instance-of v1, v0, Landroid/gsi/IGsiService;

    if-eqz v1, :cond_1

    .line 270
    check-cast v0, Landroid/gsi/IGsiService;

    return-object v0

    .line 272
    :cond_1
    new-instance v0, Landroid/gsi/IGsiService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/gsi/IGsiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    const-string v0, "android.gsi.IGsiService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 282
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 285
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 518
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 511
    :pswitch_0
    invoke-interface {p0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    move-result-wide p0

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 501
    :pswitch_1
    new-instance p1, Landroid/gsi/AvbPublicKey;

    invoke-direct {p1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result p0

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 493
    :pswitch_2
    invoke-interface {p0}, Landroid/gsi/IGsiService;->dumpDeviceMapperDevices()Ljava/lang/String;

    move-result-object p0

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;

    move-result-object p0

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 474
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->zeroPartition(Ljava/lang/String;)I

    move-result p0

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 466
    :pswitch_5
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closePartition()I

    move-result p0

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 453
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-interface {p0, p1, v2, v3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    move-result p0

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 445
    :pswitch_7
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closeInstall()I

    move-result p0

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 436
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    move-result p0

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 428
    :pswitch_9
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstalledDsuSlots()Ljava/util/List;

    move-result-object p0

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 421
    :pswitch_a
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstalledGsiImageDir()Ljava/lang/String;

    move-result-object p0

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :pswitch_b
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object p0

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :pswitch_c
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiRunning()Z

    move-result p0

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 400
    :pswitch_d
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiInstalled()Z

    move-result p0

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 393
    :pswitch_e
    invoke-interface {p0}, Landroid/gsi/IGsiService;->disableGsi()Z

    move-result p0

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 386
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object p1

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    goto/16 :goto_0

    .line 378
    :pswitch_10
    invoke-interface {p0}, Landroid/gsi/IGsiService;->removeGsi()Z

    move-result p0

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 371
    :pswitch_11
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiInstallInProgress()Z

    move-result p0

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 364
    :pswitch_12
    invoke-interface {p0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result p0

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 357
    :pswitch_13
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result p0

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 346
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object p4

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-interface {p0, p1, p3, p4}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    goto :goto_0

    .line 334
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-interface {p0, p1, p4}, Landroid/gsi/IGsiService;->enableGsi(ZLjava/lang/String;)I

    move-result p0

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 324
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-interface {p0, v2, v3}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    move-result p0

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 312
    :pswitch_17
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-interface {p0, p1, v2, v3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p0

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 304
    :pswitch_18
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object p0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 293
    :pswitch_19
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-interface {p0, p1, v2, v3}, Landroid/gsi/IGsiService;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p0

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
