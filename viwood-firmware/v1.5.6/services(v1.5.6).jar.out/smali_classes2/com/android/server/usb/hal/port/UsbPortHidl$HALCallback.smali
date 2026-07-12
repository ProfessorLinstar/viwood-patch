.class public Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;
.super Landroid/hardware/usb/V1_2/IUsbCallback$Stub;
.source "UsbPortHidl.java"


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortHidl;)V
    .locals 0

    .line 397
    invoke-direct {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 399
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 400
    iput-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    return-void
.end method


# virtual methods
.method public notifyPortStatusChange(Ljava/util/ArrayList;I)V
    .locals 29

    move-object/from16 v0, p0

    .line 405
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 410
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "port status enquiry failed"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 414
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroid/hardware/usb/V1_0/PortStatus;

    .line 417
    new-instance v7, Lcom/android/server/usb/hal/port/RawPortInfo;

    iget-object v8, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v9, v6, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    iget v11, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v12, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v13, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v14, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v15, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v10, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v21

    move/from16 p2, v2

    new-array v2, v3, [I

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v16, v10

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v25, v2

    invoke-direct/range {v7 .. v28}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 430
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientCallback V1_0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v7, v2, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    move/from16 v2, p2

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V
    .locals 29

    move-object/from16 v0, p0

    .line 441
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 446
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "port status enquiry failed"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 450
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    move-object/from16 v5, p1

    .line 454
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 455
    new-instance v7, Lcom/android/server/usb/hal/port/RawPortInfo;

    iget-object v8, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v9, v8, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    move-object v10, v9

    iget v9, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v11, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-boolean v12, v8, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v13, v8, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v14, v8, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v15, v8, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v8, v8, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v21

    move/from16 p2, v2

    new-array v2, v3, [I

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v16, v8

    move-object v8, v10

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v25, v2

    invoke-direct/range {v7 .. v28}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 468
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientCallback V1_1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v6, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v7, v2, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p2

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public notifyPortStatusChange_1_2(Ljava/util/ArrayList;I)V
    .locals 30

    move-object/from16 v0, p0

    .line 477
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 482
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "port status enquiry failed"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 486
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    move-object/from16 v5, p1

    .line 490
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/V1_2/PortStatus;

    .line 491
    new-instance v7, Lcom/android/server/usb/hal/port/RawPortInfo;

    iget-object v8, v6, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v9, v8, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v10, v9, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v11, v8, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    move-object v12, v10

    iget v10, v6, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    iget v8, v8, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    move v13, v11

    move v11, v8

    move-object v8, v12

    iget-boolean v12, v9, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    move v14, v13

    iget v13, v9, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    move v15, v14

    iget-boolean v14, v9, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    move/from16 v16, v15

    iget v15, v9, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v9, v9, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    iget-boolean v3, v6, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v29, v2

    iget v2, v6, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    move/from16 v18, v2

    iget-boolean v2, v6, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v19, v2

    iget v2, v6, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v21

    move/from16 v20, v2

    move/from16 v17, v3

    const/4 v2, 0x0

    new-array v3, v2, [I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move/from16 v25, v16

    move/from16 v16, v9

    move/from16 v9, v25

    move-object/from16 v25, v3

    invoke-direct/range {v7 .. v28}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 510
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v3, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientCallback V1_2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v6, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v7, v3, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v29

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 519
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " role switch successful"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " role switch failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method
