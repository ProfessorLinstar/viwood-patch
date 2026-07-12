.class public Lcom/android/server/companion/CompanionDeviceShellCommand;
.super Landroid/os/ShellCommand;
.source "CompanionDeviceShellCommand.java"


# instance fields
.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final mService:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 71
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 72
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 73
    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 74
    iput-object p5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 75
    iput-object p6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 76
    iput-object p7, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 77
    iput-object p8, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    return-void
.end method


# virtual methods
.method public final getNextBooleanArg()Z
    .locals 3

    .line 470
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 471
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean argument but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getNextBooleanArgRequired()Z
    .locals 3

    .line 461
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 462
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean argument but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getNextIntArgRequired()I
    .locals 0

    .line 457
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 82
    const-string v0, " | "

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const/4 v4, 0x1

    .line 86
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v5, "simulate-device-appeared"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :sswitch_1
    const-string/jumbo v5, "send-context-sync-call-control-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v5, "simulate-device-event-device-locked"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v5, "simulate-device-uuid-event"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "associate"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "disable-perm-sync"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v5, "refresh-cache"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "disable-context-sync"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v5, "stop-observing-device-presence-uuid"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "disassociate"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v5, "send-context-sync-empty-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "apply-restored-payload"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v5, "remove-perm-sync-state"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v5, "list"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v5, "simulate-device-disappeared"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v5, "send-context-sync-call-create-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v5, "simulate-device-event-device-unlocked"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v5, "start-observing-device-presence-uuid"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "disassociate-all"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v5, "simulate-device-event"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_14
    const-string v5, "get-perm-sync-state"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x18

    goto :goto_1

    :sswitch_15
    const-string v5, "create-emulated-transport"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    goto :goto_1

    :sswitch_16
    const-string v5, "enable-context-sync"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x17

    goto :goto_1

    :sswitch_17
    const-string/jumbo v5, "remove-inactive-associations"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    goto :goto_1

    :sswitch_18
    const-string v5, "enable-perm-sync"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1a

    goto :goto_1

    :sswitch_19
    const-string v5, "get-backup-payload"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xd

    goto :goto_1

    :sswitch_1a
    const-string/jumbo v5, "send-context-sync-call-facilitators-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x14

    goto :goto_1

    :sswitch_1b
    const-string/jumbo v5, "send-context-sync-call-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const/16 v5, 0x15

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v5, -0x1

    :goto_1
    const-string/jumbo v14, "shell"

    const-string v15, "UUID can not be null."

    move-object/from16 v17, v14

    const-wide v10, 0x10b00000004L

    const-wide v8, 0x10500000001L

    const-string v6, " -> "

    const-wide v12, 0x10900000001L

    const-string/jumbo v14, "null"

    packed-switch v5, :pswitch_data_0

    .line 444
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 433
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 434
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 435
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 436
    :cond_1
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_2
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 437
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->disablePermissionsSync(I)V

    .line 438
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_3
    const/16 v16, 0x0

    goto/16 :goto_11

    .line 422
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 423
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 424
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_4

    .line 425
    :cond_3
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_4
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 426
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->enablePermissionsSync(I)V

    .line 427
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 410
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 411
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 412
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v14

    goto :goto_5

    .line 413
    :cond_4
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_5
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 414
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->removePermissionSyncRequest(I)V

    .line 415
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_6
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 402
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 403
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 404
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_7

    .line 405
    :cond_6
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_7
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 395
    :pswitch_4
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 396
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 397
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->enableSystemDataSync(II)V

    goto/16 :goto_3

    .line 388
    :pswitch_5
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 389
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 390
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->disableSystemDataSync(II)V

    goto/16 :goto_3

    .line 326
    :pswitch_6
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 327
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v6

    .line 330
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v14

    .line 331
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v15

    .line 332
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v17

    .line 333
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v18

    .line 334
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v19

    .line 335
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v20

    .line 336
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v21

    .line 337
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v22

    .line 338
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 339
    invoke-virtual {v7, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 340
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x20b00000001L

    .line 341
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 342
    invoke-virtual {v7, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object v3, v5

    const-wide v4, 0x10b00000002L

    .line 343
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object/from16 v24, v3

    .line 344
    const-string v3, "Caller Name"

    invoke-virtual {v7, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 345
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 346
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v12, v24

    invoke-virtual {v3, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 345
    invoke-static {v3}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v3

    move/from16 v24, v14

    const-wide v13, 0x10c00000002L

    invoke-virtual {v7, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v13, 0x10b00000003L

    .line 348
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 350
    const-string v3, "Test App Name"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v25, v0

    const-wide v0, 0x10900000001L

    :try_start_2
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000002L

    .line 351
    invoke-virtual {v7, v0, v1, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 352
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 353
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10e00000003L

    .line 354
    invoke-virtual {v7, v0, v1, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x20e00000004L

    if-eqz v24, :cond_7

    const/4 v3, 0x1

    .line 356
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_12

    :cond_7
    :goto_8
    if-eqz v15, :cond_8

    const/4 v3, 0x2

    .line 359
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    if-eqz v17, :cond_9

    const/4 v3, 0x3

    .line 362
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_9
    if-eqz v18, :cond_a

    const/4 v3, 0x4

    .line 365
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a
    if-eqz v19, :cond_b

    const/4 v3, 0x5

    .line 368
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_b
    if-eqz v20, :cond_c

    const/4 v3, 0x6

    .line 371
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_c
    if-eqz v21, :cond_d

    const/4 v3, 0x7

    .line 374
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_d
    if-eqz v22, :cond_e

    const/16 v3, 0x8

    .line 377
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 379
    :cond_e
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 380
    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    .line 381
    :try_start_3
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    move/from16 v3, v25

    invoke-virtual {v0, v3}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 383
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    .line 382
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    goto/16 :goto_3

    .line 303
    :pswitch_7
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 304
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 305
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 307
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const/4 v7, 0x1

    .line 308
    invoke-virtual {v6, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 309
    invoke-virtual {v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v3, :cond_11

    const-wide v11, 0x20b00000003L

    .line 311
    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    if-ne v3, v7, :cond_f

    move-object v7, v4

    :goto_a
    const-wide v13, 0x10900000001L

    goto :goto_b

    .line 313
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 312
    :goto_b
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v7, 0x1

    if-ne v3, v7, :cond_10

    move-object v7, v5

    :goto_c
    const-wide v13, 0x10900000002L

    goto :goto_d

    .line 315
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    .line 314
    :goto_d
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 316
    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_9

    .line 318
    :cond_11
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 319
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 321
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    .line 320
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    goto/16 :goto_3

    .line 291
    :pswitch_8
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 292
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    .line 294
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 297
    invoke-static {v3, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(Ljava/lang/String;I)[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    .line 295
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    goto/16 :goto_3

    .line 278
    :pswitch_9
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 279
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 282
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v6, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 285
    invoke-static {v3, v4, v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    .line 283
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    goto/16 :goto_3

    .line 269
    :pswitch_a
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 270
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 273
    invoke-static {}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createEmptyMessage()[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    .line 271
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    goto/16 :goto_3

    .line 264
    :pswitch_b
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 265
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    goto/16 :goto_3

    .line 257
    :pswitch_c
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 257
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto/16 :goto_3

    .line 246
    :pswitch_d
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 247
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 248
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    goto/16 :goto_3

    .line 239
    :pswitch_e
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 240
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {v4, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    move-result-object v0

    const/4 v4, 0x2

    .line 241
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 222
    :pswitch_f
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 223
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 226
    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 229
    :cond_12
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 230
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 231
    invoke-virtual {v5, v3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v3

    .line 232
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 203
    :pswitch_10
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 204
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 207
    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 210
    :cond_13
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 211
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 212
    invoke-virtual {v5, v3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v3

    .line 213
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 195
    :pswitch_11
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 196
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventOnUserUnlocked(I)V

    goto/16 :goto_3

    .line 181
    :pswitch_12
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 182
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 183
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    .line 184
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v5, 0x0

    goto :goto_e

    :cond_14
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    .line 187
    :goto_e
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventOnDeviceLocked(IIILandroid/os/ParcelUuid;)V

    goto/16 :goto_3

    .line 167
    :pswitch_13
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    .line 170
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 171
    new-instance v6, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 172
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v4, v0, v3, v7}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    goto/16 :goto_3

    .line 158
    :pswitch_14
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 159
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 160
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    goto/16 :goto_3

    .line 152
    :pswitch_15
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 153
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    goto/16 :goto_3

    .line 147
    :pswitch_16
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 148
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    goto/16 :goto_3

    .line 143
    :pswitch_17
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->refreshCache()V

    goto/16 :goto_3

    .line 133
    :pswitch_18
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 134
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 135
    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 137
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    move-object/from16 v5, v17

    invoke-virtual {v4, v3, v5}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    move-object/from16 v17, v5

    goto :goto_f

    :pswitch_19
    move-object/from16 v5, v17

    .line 118
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 119
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 121
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 122
    invoke-virtual {v7, v0, v4, v6}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-nez v0, :cond_15

    .line 125
    const-string v0, "Association doesn\'t exist."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 127
    :cond_15
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {v3, v0, v5}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 104
    :pswitch_1a
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    .line 105
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArg()Z

    move-result v10

    .line 109
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    .line 110
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v7

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    goto/16 :goto_3

    .line 88
    :pswitch_1b
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    .line 89
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 90
    invoke-virtual {v5, v4}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v4

    .line 91
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v5}, Lcom/android/server/companion/association/AssociationStore;->getMaxId()I

    move-result v5

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v5, "Association ID | Package Name | Mac Address"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/AssociationInfo;

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_10

    :goto_11
    return v16

    .line 447
    :goto_12
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while executing \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\':"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const/16 v23, 0x1

    return v23

    :sswitch_data_0
    .sparse-switch
        -0x78de6919 -> :sswitch_1b
        -0x76d9e39f -> :sswitch_1a
        -0x7196e026 -> :sswitch_19
        -0x6ee6a072 -> :sswitch_18
        -0x6e9ef255 -> :sswitch_17
        -0x48f877fd -> :sswitch_16
        -0x3aaa3162 -> :sswitch_15
        -0x2d23c69b -> :sswitch_14
        -0x25c83694 -> :sswitch_13
        -0x25b7ef5c -> :sswitch_12
        -0x20ae7cab -> :sswitch_11
        -0x1ed53de7 -> :sswitch_10
        -0x13014aaa -> :sswitch_f
        -0xb6faf2c -> :sswitch_e
        0x32b09e -> :sswitch_d
        0x13b98693 -> :sswitch_c
        0x20e05ad6 -> :sswitch_b
        0x27a53e18 -> :sswitch_a
        0x2ebfca50 -> :sswitch_9
        0x2f25cbb5 -> :sswitch_8
        0x3fc236be -> :sswitch_7
        0x545c8610 -> :sswitch_6
        0x5b04a2b3 -> :sswitch_5
        0x5e900f1e -> :sswitch_4
        0x72009e76 -> :sswitch_3
        0x761c1fc0 -> :sswitch_2
        0x77005277 -> :sswitch_1
        0x774e28e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
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

.method public onHelp()V
    .locals 11

    .line 482
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 483
    const-string v0, "Companion Device Manager (companiondevice) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    const-string v0, "  list USER_ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    const-string v0, "      List all Associations for a user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    const-string v0, "  associate USER_ID PACKAGE MAC_ADDRESS [DEVICE_PROFILE] [SELF_MANAGED]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    const-string v0, "      Create a new Association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    const-string v0, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    const-string v0, "      Remove an existing Association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    const-string v0, "  disassociate-all USER_ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    const-string v0, "      Remove all Associations for a user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    const-string v0, "  refresh-cache"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    const-string v0, "      Clear the in-memory association cache and reload all association "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    const-string v0, "      information from disk. USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    const-string v0, "  simulate-device-appeared ASSOCIATION_ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    const-string v0, "      Make CDM act as if the given companion device has appeared."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    const-string v1, "      I.e. bind the associated companion application\'s"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    const-string v2, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    const-string v3, "      The CDM will consider the devices as present for 60 seconds and then"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    const-string v3, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    const-string v3, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    const-string v3, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    const-string v4, "  simulate-device-disappeared ASSOCIATION_ID"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    const-string v4, "      Make CDM act as if the given companion device has disappeared."

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    const-string v5, "      I.e. unbind the associated companion application\'s"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    const-string v6, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    const-string v6, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    const-string v7, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    const-string v8, "      60 seconds ago."

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    const-string v9, "  get-backup-payload USER_ID"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    const-string v9, "      Generate backup payload for the given user and print its content"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    const-string v9, "      encoded to a Base64 string."

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    const-string v9, "  apply-restored-payload USER_ID PAYLOAD"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    const-string v9, "      Apply restored backup payload for the given user."

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    const-string v9, "  simulate-device-event ASSOCIATION_ID EVENT"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    const-string v9, "  Simulate the companion device event changes:"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    const-string v10, "    Case(0): "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    const-string v0, "      The CDM will consider the devices as present for60 seconds and then"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    const-string v0, "      will act as if device disappeared, unless\'simulate-device-disappeared\'"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    const-string v0, "      or \'simulate-device-appeared\' is called again before 60 secondsrun out."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    const-string v0, "    Case(1): "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    const-string v0, "      CompanionDeviceService(s) and trigger onDeviceDisappeared()callback."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    const-string v0, "    Case(2): "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    const-string v1, "      Make CDM act as if the given companion device is BT connected "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    const-string v1, "    Case(3): "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    const-string v2, "      Make CDM act as if the given companion device is BT disconnected "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    const-string v2, "  simulate-device-uuid-event UUID PACKAGE USERID EVENT"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    const-string v0, "      Make CDM act as if the given DEVICE is BT connected baseon the UUID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string v0, "      Make CDM act as if the given DEVICE is BT disconnected baseon the UUID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const-string v0, "  simulate-device-event-device-locked ASSOCIATION_ID USER_ID DEVICE_EVENT PARCEL_UUID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v0, "  Simulate device event when the device is locked"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v0, "  USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v1, "  simulate-device-event-device-unlocked USER_ID"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const-string v1, "  Simulate device unlocked for given user. This will send corresponding"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string v1, "  callback after simulate-device-event-device-locked"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    const-string v1, "  command has been called."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const-string v1, "  start-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string v1, "  Start observing device presence base on the UUID."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v1, "  stop-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string v1, "  Stop observing device presence base on the UUID."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v0, "  remove-inactive-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string v0, "      Remove self-managed associations that have not been active "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string v0, "      for a long time (90 days or as configured via "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    const-string v0, "      \"debug.cdm.cdmservice.removal_time_window\" system property). "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const-string v0, "  create-emulated-transport <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    const-string v0, "      Create an EmulatedTransport for testing purposes only"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v0, "  enable-perm-sync <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    const-string v0, "      Enable perm sync for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const-string v0, "  disable-perm-sync <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const-string v0, "      Disable perm sync for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v0, "  get-perm-sync-state <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string v0, "      Get perm sync state for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const-string v0, "  remove-perm-sync-state <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const-string v0, "      Remove perm sync state for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
