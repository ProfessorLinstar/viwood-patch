.class public Lcom/android/server/companion/devicepresence/BleDeviceProcessor;
.super Ljava/lang/Object;
.source "BleDeviceProcessor.java"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# static fields
.field public static final SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field public mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;

.field public final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field public mScanning:Z


# direct methods
.method public static bridge synthetic -$$Nest$fputmScanning(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckBleState(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->checkBleState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->nameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 300
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x6

    .line 301
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    .line 261
    new-instance v0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 82
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 83
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;

    return-void
.end method

.method public static nameForBleScanCallbackType(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 295
    const-string v0, "Unknown"

    goto :goto_0

    .line 294
    :cond_0
    const-string v0, "MATCH_LOST"

    goto :goto_0

    .line 293
    :cond_1
    const-string v0, "FIRST_MATCH"

    goto :goto_0

    .line 292
    :cond_2
    const-string v0, "ALL_MATCHES"

    .line 297
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkBleState()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->enforceInitialized()V

    .line 125
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    return-void

    .line 140
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-void
.end method

.method public final enforceInitialized()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 93
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->checkBleState()V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V

    .line 96
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, p0}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already initialized"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 227
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 228
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;->onBleCompanionDeviceFound(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 235
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 236
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;->onBleCompanionDeviceLost(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 0

    .line 114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->restartScan()V

    return-void

    .line 117
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V
    .locals 2

    .line 241
    new-instance v0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    .line 249
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final restartScan()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->enforceInitialized()V

    .line 103
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    return-void
.end method

.method public startScan()V
    .locals 5

    .line 147
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->enforceInitialized()V

    .line 149
    const-string/jumbo v0, "startBleScan()"

    const-string v1, "CDM_BleDeviceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    if-eqz v0, :cond_0

    .line 152
    const-string p0, "Scan is already in progress."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_1

    .line 158
    const-string p0, "BLE is not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 164
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 165
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 171
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 178
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 180
    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 181
    invoke-virtual {v4, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    .line 183
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    sget-object v3, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 193
    const-string v0, "Exception while starting BLE scanning"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    .line 196
    :cond_7
    const-string p0, "BLE scanning is not turned on"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopScanIfNeeded()V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->enforceInitialized()V

    .line 203
    const-string/jumbo v0, "stopBleScan()"

    const-string v1, "CDM_BleDeviceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    const-string v2, "Exception while stopping BLE scanning"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    :cond_1
    const-string v0, "BLE scanning is not turned on"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    return-void
.end method
