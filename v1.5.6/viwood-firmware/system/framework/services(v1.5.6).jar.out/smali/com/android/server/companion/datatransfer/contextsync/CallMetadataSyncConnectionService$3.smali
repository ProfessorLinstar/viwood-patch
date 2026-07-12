.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$3;
.super Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;
.source "CallMetadataSyncConnectionService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$3;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    invoke-direct {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCallAction(ILjava/lang/String;I)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$3;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->-$$Nest$fgetmCdmsi(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    move-result-object p0

    .line 200
    invoke-static {p2, p3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(Ljava/lang/String;I)[B

    move-result-object p2

    .line 199
    invoke-interface {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->sendCrossDeviceSyncMessage(I[B)V

    return-void
.end method
