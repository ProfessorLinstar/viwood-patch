.class public Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    return-void
.end method


# virtual methods
.method public addSelfOwnedCallId(Ljava/lang/String;)V
    .locals 1

    .line 857
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->addSelfOwnedCallId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public crossDeviceSync(ILjava/util/Collection;)V
    .locals 1

    .line 824
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncToAllDevicesForUserId(ILjava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public crossDeviceSync(Landroid/companion/AssociationInfo;Ljava/util/Collection;)V
    .locals 1

    .line 833
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncToSingleDevice(Landroid/companion/AssociationInfo;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V
    .locals 1

    .line 816
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V

    :cond_0
    return-void
.end method

.method public removeInactiveSelfManagedAssociations()V
    .locals 0

    .line 810
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/companion/association/DisassociationProcessor;->removeIdleSelfManagedAssociations()V

    return-void
.end method

.method public removeSelfOwnedCallId(Ljava/lang/String;)V
    .locals 1

    .line 865
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->removeSelfOwnedCallId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendCrossDeviceSyncMessage(I[B)V
    .locals 1

    .line 841
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    :cond_0
    return-void
.end method

.method public sendCrossDeviceSyncMessageToAllDevices(I[B)V
    .locals 1

    .line 849
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToAllDevicesForUserId(I[B)V

    :cond_0
    return-void
.end method
