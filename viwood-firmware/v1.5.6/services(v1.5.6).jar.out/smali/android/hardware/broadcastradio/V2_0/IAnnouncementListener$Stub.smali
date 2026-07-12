.class public abstract Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;
.super Landroid/os/HwBinder;
.source "IAnnouncementListener.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 486
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 487
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 488
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 489
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 2

    .line 461
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    filled-new-array {v1, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_0
    .array-data 1
        0x3dt
        -0x72t
        -0x2at
        0x7dt
        -0x80t
        0x7et
        -0x61t
        0x15t
        -0x30t
        0x70t
        -0x7dt
        -0x70t
        -0x5ct
        0x16t
        -0x42t
        -0x20t
        0x9t
        0x20t
        -0xat
        -0x5et
        0x21t
        -0x6at
        -0x3ft
        0x4t
        -0x34t
        -0x62t
        0x44t
        0x3ct
        -0x73t
        0x21t
        0x7dt
        -0x8t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 2

    .line 441
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 455
    const-string p0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 496
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6

    const/4 p4, 0x0

    .line 526
    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 640
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->notifySyspropsChanged()V

    return-void

    .line 629
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 632
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 633
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 634
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 619
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->ping()V

    .line 622
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 606
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->setHALInstrumentation()V

    return-void

    .line 572
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 575
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 577
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 579
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 580
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 581
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 582
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge p4, p2, :cond_1

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 586
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    .line 588
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 592
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 589
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v1, 0x0

    .line 596
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 598
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 600
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 561
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 564
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 565
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 549
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 552
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 553
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 554
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 555
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 538
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 541
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 542
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 529
    :sswitch_8
    const-string p1, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/Announcement;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 532
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;->onListUpdated(Ljava/util/ArrayList;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 0
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 508
    const-string v0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
