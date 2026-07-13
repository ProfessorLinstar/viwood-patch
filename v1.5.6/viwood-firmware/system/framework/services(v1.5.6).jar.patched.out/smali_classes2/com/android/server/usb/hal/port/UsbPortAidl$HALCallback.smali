.class public Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;
.super Landroid/hardware/usb/IUsbCallback$Stub;
.source "UsbPortAidl.java"


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortAidl;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/hardware/usb/IUsbCallback$Stub;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 467
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 468
    iput-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

    return-void
.end method


# virtual methods
.method public final formatComplianceWarnings([I)[I
    .locals 5

    .line 591
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    new-instance p0, Landroid/util/IntArray;

    invoke-direct {p0}, Landroid/util/IntArray;-><init>()V

    .line 593
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 594
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 595
    invoke-virtual {p0, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    const/16 v4, 0x9

    if-le v2, v4, :cond_0

    .line 601
    invoke-virtual {p0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    .line 603
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public final formatDisplayPortAltModeInfo([Landroid/hardware/usb/AltModeData;)Landroid/hardware/usb/DisplayPortAltModeInfo;
    .locals 6

    .line 647
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 648
    invoke-virtual {v2}, Landroid/hardware/usb/AltModeData;->getTag()I

    move-result v3

    if-nez v3, :cond_0

    .line 650
    invoke-virtual {v2}, Landroid/hardware/usb/AltModeData;->getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    move-result-object p1

    .line 651
    new-instance v0, Landroid/hardware/usb/DisplayPortAltModeInfo;

    iget v1, p1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->partnerSinkStatus:I

    iget v2, p1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->cableStatus:I

    iget v3, p1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->pinAssignment:I

    .line 653
    invoke-virtual {p0, v3}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toDisplayPortAltModeNumLanesInt(I)I

    move-result v3

    iget-boolean v4, p1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->hpd:Z

    iget v5, p1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->linkTrainingStatus:I

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/DisplayPortAltModeInfo;-><init>(IIIZI)V

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 843
    const-string p0, "7fe46e9531884739d925b8caeee9dba5c411e228"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public notifyContaminantEnabledStatus(Ljava/lang/String;ZIJ)V
    .locals 1

    if-nez p3, :cond_0

    .line 759
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyContaminantEnabledStatus:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": opID:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " enable:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 763
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "notifyContaminantEnabledStatus: opID:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " failed. err:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public notifyEnableUsbDataStatus(Ljava/lang/String;ZIJ)V
    .locals 3

    if-nez p3, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyEnableUsbDataStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " enable:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, v0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_0
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "notifyEnableUsbDataStatus: opID:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " failed. err:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {v0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 745
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez p3, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-interface {p1, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 749
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p2, "notifyEnableUsbDataStatus: Failed to call onOperationComplete"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public notifyEnableUsbDataWhileDockedStatus(Ljava/lang/String;IJ)V
    .locals 2

    if-nez p2, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " successful"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v1, v0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "notifyEnableUsbDataWhileDockedStatus: opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " failed. err:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {v1, v0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 806
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/IUsbOperationInternal;

    if-eqz p1, :cond_2

    .line 808
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-interface {p1, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 813
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p2, "notifyEnableUsbDataWhileDockedStatus: Failed to call onOperationComplete"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public notifyLimitPowerTransferStatus(Ljava/lang/String;ZIJ)V
    .locals 1

    if-nez p3, :cond_0

    .line 773
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": opID:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " successful"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_0
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "notifyLimitPowerTransferStatus: opID:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " failed. err:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {v0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 781
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/IUsbOperationInternal;

    if-eqz p1, :cond_2

    .line 783
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez p3, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-interface {p1, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 788
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "enableLimitPowerTransfer: Failed to call onOperationComplete"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public notifyPortStatusChange([Landroid/hardware/usb/PortStatus;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 664
    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

    invoke-static {v2}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortAidl;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 669
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "port status enquiry failed"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 673
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 675
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 677
    aget-object v5, v1, v4

    .line 678
    new-instance v6, Lcom/android/server/usb/hal/port/RawPortInfo;

    iget-object v7, v5, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    iget-object v8, v5, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    .line 679
    invoke-virtual {v0, v8}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toSupportedModes([B)I

    move-result v8

    iget-object v9, v5, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    .line 680
    invoke-virtual {v0, v9}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toSupportedContaminantProtectionModes([B)I

    move-result v9

    iget-byte v10, v5, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 682
    invoke-virtual {v0, v10}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toPortMode(B)I

    move-result v10

    iget-boolean v11, v5, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    iget-byte v12, v5, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    iget-boolean v13, v5, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    iget-byte v14, v5, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    iget-boolean v15, v5, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    iget-boolean v1, v5, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v16, v1

    iget-byte v1, v5, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 689
    invoke-virtual {v0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toContaminantProtectionStatus(B)I

    move-result v17

    iget-boolean v1, v5, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v18, v1

    iget-byte v1, v5, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    move/from16 v19, v1

    iget-object v1, v5, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    .line 692
    invoke-virtual {v0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toUsbDataStatusInt([B)I

    move-result v20

    iget-boolean v1, v5, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    move/from16 v21, v1

    iget-byte v1, v5, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    move/from16 v22, v1

    iget-boolean v1, v5, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    move/from16 v23, v1

    iget-object v1, v5, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    .line 696
    invoke-virtual {v0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->formatComplianceWarnings([I)[I

    move-result-object v24

    iget v1, v5, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    move/from16 v25, v1

    iget-object v1, v5, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    .line 698
    invoke-virtual {v0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toSupportedAltModesInt([Landroid/hardware/usb/AltModeData;)I

    move-result v26

    iget-object v1, v5, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    .line 699
    invoke-virtual {v0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->formatDisplayPortAltModeInfo([Landroid/hardware/usb/AltModeData;)Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object v27

    invoke-direct/range {v6 .. v27}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 700
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientCallback AIDL V1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6, v1, v5}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 704
    :cond_2
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public notifyQueryPortStatus(Ljava/lang/String;IJ)V
    .locals 2

    .line 723
    const-string v0, ": opID:"

    if-nez p2, :cond_0

    .line 724
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " successful"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 727
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " failed. err:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public notifyResetUsbPortStatus(Ljava/lang/String;IJ)V
    .locals 3

    if-nez p2, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyResetUsbPortStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v1, v0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "notifyEnableUsbDataStatus: opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " failed. err:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {v1, v0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 831
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-interface {p1, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 835
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p2, "notifyResetUsbPortStatus: Failed to call onOperationComplete"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/PortRole;IJ)V
    .locals 0

    if-nez p3, :cond_0

    .line 711
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " role switch successful. opID:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 715
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " role switch failed. err:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final toContaminantProtectionStatus(B)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    .line 524
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized aidlContaminantProtection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {v1, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return v0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public final toDisplayPortAltModeNumLanesInt(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toPortMode(B)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 490
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized aidlPortMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {v1, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return v0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public final toSupportedAltModesInt([Landroid/hardware/usb/AltModeData;)I
    .locals 3

    .line 620
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v2, p1, v0

    .line 621
    invoke-virtual {v2}, Landroid/hardware/usb/AltModeData;->getTag()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final toSupportedContaminantProtectionModes([B)I
    .locals 4

    .line 534
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    .line 535
    invoke-virtual {p0, v3}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toContaminantProtectionStatus(B)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final toSupportedModes([B)I
    .locals 4

    .line 499
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    .line 500
    invoke-virtual {p0, v3}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toPortMode(B)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final toUsbDataStatusInt([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 543
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 544
    aget-byte v2, p1, v0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    or-int/lit16 v1, v1, 0x88

    goto :goto_1

    :pswitch_1
    or-int/lit8 v1, v1, 0x48

    goto :goto_1

    :pswitch_2
    or-int/lit8 v1, v1, 0x20

    goto :goto_1

    :pswitch_3
    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    :pswitch_4
    or-int/lit16 v1, v1, 0xc8

    goto :goto_1

    :pswitch_5
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    :pswitch_6
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_7
    or-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AIDL UsbDataStatus:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
