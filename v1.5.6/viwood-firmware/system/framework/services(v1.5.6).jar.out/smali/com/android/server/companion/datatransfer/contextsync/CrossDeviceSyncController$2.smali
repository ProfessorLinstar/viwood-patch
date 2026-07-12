.class public Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;
.super Landroid/companion/IOnMessageReceivedListener$Stub;
.source "CrossDeviceSyncController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-direct {p0}, Landroid/companion/IOnMessageReceivedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(I[B)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$misAssociationBlockedLocal(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v0, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processTelecomDataFromSync([B)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    move-result-object p2

    .line 206
    invoke-virtual {p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->getCallControlRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 207
    invoke-virtual {p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->getCallCreateRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 209
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmPhoneAccountManager(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->updateFacilitators(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    .line 210
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmCallManager(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->updateCalls(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    goto :goto_2

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mprocessCallCreateRequests(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    .line 214
    :goto_2
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmConnectionServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_4

    .line 216
    const-string p0, "CrossDeviceSyncController"

    const-string p1, "No callback to process context sync message"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_4
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v0, :cond_7

    .line 224
    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    goto :goto_4

    .line 229
    :cond_6
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fputmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;Ljava/lang/ref/WeakReference;)V

    .line 233
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmConnectionServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 234
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmConnectionServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    goto :goto_5

    :cond_8
    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_a

    if-nez v0, :cond_9

    .line 237
    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    :cond_9
    :goto_6
    return-void

    .line 242
    :cond_a
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {p0, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fputmConnectionServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
