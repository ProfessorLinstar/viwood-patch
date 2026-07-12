.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"


# instance fields
.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

.field public final mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupRestoreProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/BackupRestoreProcessor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompanionAppBinder(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/CompanionAppBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemDataTransferRequestStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monPackageAddedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onPackageAddedInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageModifiedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onPackageModifiedInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onPackageRemoveOrDataClearedInternal(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 141
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 784
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 143
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 144
    const-class v2, Landroid/os/PowerExemptionManager;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/os/PowerExemptionManager;

    .line 146
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/AppOpsManager;

    .line 147
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 149
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/app/ActivityManagerInternal;

    .line 151
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 153
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/os/UserManager;

    .line 154
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/os/PowerManagerInternal;

    .line 156
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/app/NotificationManager;

    .line 159
    new-instance v2, Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-direct {v2}, Lcom/android/server/companion/association/AssociationDiskStore;-><init>()V

    .line 160
    new-instance v5, Lcom/android/server/companion/association/AssociationStore;

    invoke-direct {v5, v3, v13, v2}, Lcom/android/server/companion/association/AssociationStore;-><init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationDiskStore;)V

    iput-object v5, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 161
    new-instance v4, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-direct {v4}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;-><init>()V

    iput-object v4, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 162
    new-instance v7, Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-direct {v7}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;-><init>()V

    iput-object v7, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 165
    new-instance v8, Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-direct {v8, v3, v6, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V

    iput-object v8, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-object/from16 v16, v7

    move-object v7, v4

    move-object v4, v6

    move-object v6, v2

    .line 167
    new-instance v2, Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/companion/BackupRestoreProcessor;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/association/AssociationDiskStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/association/AssociationRequestsProcessor;)V

    move-object/from16 v17, v7

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 171
    new-instance v2, Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-direct {v2, v3}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    move-object v8, v2

    .line 173
    new-instance v2, Lcom/android/server/companion/CompanionExemptionProcessor;

    move-object v6, v4

    move-object v4, v9

    move-object v7, v11

    move-object v9, v5

    move-object v5, v10

    move-object v10, v8

    move-object v8, v12

    invoke-direct/range {v2 .. v9}, Lcom/android/server/companion/CompanionExemptionProcessor;-><init>(Landroid/content/Context;Landroid/os/PowerExemptionManager;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V

    move-object v11, v6

    move-object v5, v9

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    .line 177
    new-instance v7, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-object v9, v2

    move-object v6, v5

    move-object v2, v7

    move-object v4, v10

    move-object v5, v13

    move-object v8, v14

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v9}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;-><init>(Landroid/content/Context;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Landroid/os/PowerManagerInternal;Lcom/android/server/companion/CompanionExemptionProcessor;)V

    move-object v8, v4

    move-object v5, v6

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 181
    new-instance v10, Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-direct {v10, v3, v5}, Lcom/android/server/companion/transport/CompanionTransportManager;-><init>(Landroid/content/Context;Lcom/android/server/companion/association/AssociationStore;)V

    iput-object v10, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    move-object v7, v2

    .line 183
    new-instance v2, Lcom/android/server/companion/association/DisassociationProcessor;

    move-object v4, v0

    move-object v6, v11

    move-object v11, v15

    move-object/from16 v9, v17

    invoke-direct/range {v2 .. v11}, Lcom/android/server/companion/association/DisassociationProcessor;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/android/server/companion/association/AssociationStore;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/app/NotificationManager;)V

    move-object v4, v6

    move-object v7, v9

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 188
    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;)V

    iput-object v0, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 193
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v10}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;-><init>(Landroid/content/Context;Lcom/android/server/companion/transport/CompanionTransportManager;)V

    iput-object v0, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void

    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->init(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/companion/association/InactiveAssociationsRemovalService;->schedule(Landroid/content/Context;)V

    .line 229
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->onBootCompleted()V

    :cond_1
    return-void
.end method

.method public final onPackageAddedInternal(ILjava/lang/String;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/BackupRestoreProcessor;->restorePendingAssociations(ILjava/lang/String;)V

    return-void
.end method

.method public final onPackageModifiedInternal(ILjava/lang/String;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 280
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackage(ILjava/lang/String;Z)V

    .line 284
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->onPackageChanged(I)V

    :cond_0
    return-void
.end method

.method public final onPackageRemoveOrDataClearedInternal(ILjava/lang/String;)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 258
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package removed or data cleared for user=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], package=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]. Cleaning up CDM data..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDM_CompanionDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 264
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    const-string/jumbo v3, "pkg-data-cleared"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->onPackageChanged(I)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 272
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 274
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {v1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->removeObservableUuid(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->refreshCache()V

    .line 202
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->getRevokedAssociations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 203
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    const-string/jumbo v3, "revoked"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForUser(I)Ljava/util/List;

    .line 210
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 211
    const-string v1, "companiondevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 214
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService-IA;)V

    const-class p0, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked() user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->sendDevicePresenceEventOnUnlocked(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 235
    const-string v0, "CDM_CompanionDeviceManagerService"

    const-string/jumbo v1, "onUserUnlocking..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 237
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    .line 240
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAtm(ILjava/util/List;)V

    .line 243
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 244
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionExemptionProcessor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeInactiveSelfManagedAssociations()V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {p0}, Lcom/android/server/companion/association/DisassociationProcessor;->removeIdleSelfManagedAssociations()V

    return-void
.end method
