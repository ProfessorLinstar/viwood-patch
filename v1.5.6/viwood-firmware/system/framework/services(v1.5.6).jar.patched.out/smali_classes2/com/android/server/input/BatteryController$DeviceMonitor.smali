.class public Lcom/android/server/input/BatteryController$DeviceMonitor;
.super Ljava/lang/Object;
.source "BatteryController.java"


# instance fields
.field public mBluetoothBatteryLevel:I

.field public mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public mBluetoothEventTime:J

.field public mBluetoothMetadataBatteryLevel:I

.field public mBluetoothMetadataBatteryStatus:I

.field public mBluetoothMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

.field public mHasBattery:Z

.field public final mState:Lcom/android/server/input/BatteryController$State;

.field public mUEventBatteryListener:Lcom/android/server/input/BatteryController$UEventBatteryListener;

.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public static synthetic $r8$lambda$7buFpLtmMejcI7cgEwRdymEhidA(Lcom/android/server/input/BatteryController$DeviceMonitor;ILjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->lambda$onBluetoothBatteryChanged$0(ILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9x1owp5vGvnTX-D3xFonFX8_0oc(Lcom/android/server/input/BatteryController$DeviceMonitor;I[BLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->lambda$onBluetoothMetadataChanged$1(I[BLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HAsKSnuizKaoaR_8D1ZrX4MoiKs(Lcom/android/server/input/BatteryController;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/BatteryController;->-$$Nest$mhandleBluetoothMetadataChange(Lcom/android/server/input/BatteryController;Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLiOczRFkxi39agDP6yaXv7ai5M(Lcom/android/server/input/BatteryController$DeviceMonitor;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->configureDeviceMonitor(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWVmBVahkgMiVfp5hOJbzxUexHI(Lcom/android/server/input/BatteryController$DeviceMonitor;)Lcom/android/server/input/BatteryController$State;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->lambda$getBatteryStateForReporting$2()Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothDevice(Lcom/android/server/input/BatteryController$DeviceMonitor;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/input/BatteryController;I)V
    .locals 2

    .line 573
    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 556
    iput-boolean p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    const-wide/16 v0, 0x0

    .line 560
    iput-wide v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    const/4 p1, -0x1

    .line 563
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    .line 565
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    const/4 p1, 0x1

    .line 566
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    .line 574
    new-instance p1, Lcom/android/server/input/BatteryController$State;

    invoke-direct {p1, p2}, Lcom/android/server/input/BatteryController$State;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->configureDeviceMonitor(J)V

    return-void
.end method


# virtual methods
.method public final configureDeviceMonitor(J)V
    .locals 5

    .line 595
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v0, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 596
    iget-boolean v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v2, v0}, Lcom/android/server/input/BatteryController;->-$$Nest$mhasBattery(Lcom/android/server/input/BatteryController;I)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 597
    iget-boolean v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    if-nez v1, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->startNativeMonitoring()V

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->stopNativeMonitoring()V

    .line 603
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBatteryStateFromNative(J)V

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v1, v0}, Lcom/android/server/input/BatteryController;->-$$Nest$mgetBluetoothDevice(Lcom/android/server/input/BatteryController;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 607
    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 608
    invoke-static {}, Lcom/android/server/input/BatteryController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 609
    invoke-static {}, Lcom/android/server/input/BatteryController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth device is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 610
    const-string v4, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "not"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " present for deviceId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, -0x1

    .line 614
    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    .line 615
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->stopBluetoothMetadataMonitoring()V

    .line 617
    iput-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 618
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$mupdateBluetoothBatteryMonitoring(Lcom/android/server/input/BatteryController;)V

    .line 620
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    .line 621
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmBluetoothBatteryManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 622
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-interface {v0, v1}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getBatteryLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    .line 623
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->startBluetoothMetadataMonitoring(J)V

    :cond_4
    return-void
.end method

.method public final formatDevPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 646
    const-string p0, "/sys"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;
    .locals 2

    .line 766
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;

    move-result-object v0

    new-instance v1, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;)V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$State;

    return-object p0
.end method

.method public isPersistent()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getBatteryStateForReporting$2()Lcom/android/server/input/BatteryController$State;
    .locals 1

    .line 767
    new-instance v0, Lcom/android/server/input/BatteryController$State;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(Landroid/hardware/input/IInputDeviceBatteryState;)V

    return-object v0
.end method

.method public final synthetic lambda$onBluetoothBatteryChanged$0(ILjava/lang/Long;)V
    .locals 0

    .line 706
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    .line 707
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    return-void
.end method

.method public final synthetic lambda$onBluetoothMetadataChanged$1(I[BLjava/lang/Long;)V
    .locals 2

    .line 713
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(JI[B)V

    return-void
.end method

.method public onBluetoothBatteryChanged(JI)V
    .locals 1

    .line 705
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onBluetoothMetadataChanged(JI[B)V
    .locals 1

    .line 712
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I[B)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onConfiguration(J)V
    .locals 1

    .line 591
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onMonitorDestroy()V
    .locals 1

    .line 685
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->stopNativeMonitoring()V

    .line 686
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->stopBluetoothMetadataMonitoring()V

    const/4 v0, 0x0

    .line 687
    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 688
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {p0}, Lcom/android/server/input/BatteryController;->-$$Nest$mupdateBluetoothBatteryMonitoring(Lcom/android/server/input/BatteryController;)V

    return-void
.end method

.method public onPoll(J)V
    .locals 1

    .line 697
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onStylusGestureStarted(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTimeout(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUEvent(J)V
    .locals 1

    .line 701
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public processChangesAndNotify(JLjava/util/function/Consumer;)V
    .locals 1

    .line 582
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    move-result-object v0

    .line 583
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 584
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    move-result-object p1

    .line 585
    invoke-virtual {v0, p1}, Lcom/android/server/input/BatteryController$State;->equalsIgnoringUpdateTime(Landroid/hardware/input/IInputDeviceBatteryState;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 586
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->-$$Nest$mnotifyAllListenersForDevice(Lcom/android/server/input/BatteryController;Lcom/android/server/input/BatteryController$State;)V

    :cond_0
    return-void
.end method

.method public requiresPolling()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;
    .locals 8

    .line 775
    iget v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    const/16 v1, 0x64

    if-ltz v0, :cond_0

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    iget v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    if-ltz v0, :cond_1

    if-gt v0, v1, :cond_1

    .line 782
    :goto_0
    new-instance v1, Lcom/android/server/input/BatteryController$State;

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v2, v2, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-wide v3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    iget v6, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    int-to-float p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v7, p0, v0

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/input/BatteryController$State;-><init>(IJZIF)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final startBluetoothMetadataMonitoring(J)V
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    new-instance v1, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController;)V

    iput-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    .line 660
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmBluetoothBatteryManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->addMetadataListener(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    .line 662
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmBluetoothBatteryManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 663
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getMetadata(Ljava/lang/String;I)[B

    move-result-object v0

    .line 662
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(JI[B)V

    .line 665
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmBluetoothBatteryManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 666
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getMetadata(Ljava/lang/String;I)[B

    move-result-object v0

    .line 665
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(JI[B)V

    return-void
.end method

.method public final startNativeMonitoring()V
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmNative(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v1, v1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryDevicePath(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v1, v1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 634
    new-instance v2, Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor$1;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    iput-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$UEventBatteryListener;

    .line 640
    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v1}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmUEventManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/UEventManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$UEventBatteryListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVPATH="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->formatDevPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 640
    invoke-interface {v1, v2, p0}, Lcom/android/server/input/UEventManager;->addListener(Lcom/android/server/input/UEventManager$UEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public final stopBluetoothMetadataMonitoring()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmBluetoothBatteryManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 677
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    .line 676
    invoke-interface {v0, v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->removeMetadataListener(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    const/4 v0, 0x0

    .line 678
    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    const/4 v0, -0x1

    .line 679
    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    const/4 v0, 0x1

    .line 680
    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    return-void
.end method

.method public final stopNativeMonitoring()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$UEventBatteryListener;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmUEventManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/UEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$UEventBatteryListener;

    invoke-interface {v0, v1}, Lcom/android/server/input/UEventManager;->removeListener(Lcom/android/server/input/UEventManager$UEventListener;)V

    const/4 v0, 0x0

    .line 652
    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$UEventBatteryListener;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v1, v1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v2, v2, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 789
    invoke-static {v1, v2}, Lcom/android/server/input/BatteryController;->-$$Nest$mgetInputDeviceName(Lcom/android/server/input/BatteryController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', NativeBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", UEventListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$UEventBatteryListener;

    if-eqz v1, :cond_0

    const-string v1, "added"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BluetoothState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBatteryStateFromNative(J)V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    iget v2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-boolean p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    .line 693
    invoke-static {v1, v2, p1, p2, p0}, Lcom/android/server/input/BatteryController;->-$$Nest$mqueryBatteryStateFromNative(Lcom/android/server/input/BatteryController;IJZ)Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    .line 692
    invoke-virtual {v0, p0}, Lcom/android/server/input/BatteryController$State;->updateIfChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V

    return-void
.end method

.method public final updateBluetoothMetadataState(JI[B)V
    .locals 1

    const/16 v0, 0x12

    if-eq p3, v0, :cond_3

    const/16 v0, 0x13

    if-eq p3, v0, :cond_0

    goto :goto_1

    .line 736
    :cond_0
    iput-wide p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    if-eqz p4, :cond_2

    .line 738
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 741
    :goto_0
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 743
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    return-void

    .line 720
    :cond_3
    iput-wide p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    const/4 p1, -0x1

    .line 721
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    if-eqz p4, :cond_4

    .line 724
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 727
    :catch_0
    invoke-static {}, Lcom/android/server/input/BatteryController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse bluetooth METADATA_MAIN_BATTERY with value \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' for device "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
