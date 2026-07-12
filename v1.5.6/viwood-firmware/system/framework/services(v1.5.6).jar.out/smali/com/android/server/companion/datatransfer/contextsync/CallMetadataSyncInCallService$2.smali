.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;
.super Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;
.source "CallMetadataSyncInCallService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-direct {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final processCallControlAction(Ljava/lang/String;I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    iget-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 81
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->getCallForId(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    move-result-object p1

    .line 82
    const-string v0, "CallMetadataIcs"

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->doTakeOffHold()V

    return-void

    .line 124
    :cond_0
    const-string p0, "Failed to process unhold action; no matching call"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->doPutOnHold()V

    return-void

    .line 117
    :cond_1
    const-string p0, "Failed to process hold action; no matching call"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->doEnd()V

    return-void

    .line 110
    :cond_2
    const-string p0, "Failed to process end action; no matching call"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->-$$Nest$mdoUnmute(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    return-void

    .line 101
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->-$$Nest$mdoMute(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    return-void

    .line 98
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->-$$Nest$mdoSilence(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    return-void

    :pswitch_6
    if-eqz p1, :cond_3

    .line 92
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->doReject()V

    return-void

    .line 94
    :cond_3
    const-string p0, "Failed to process reject action; no matching call"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7
    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->doAccept()V

    return-void

    .line 87
    :cond_4
    const-string p0, "Failed to process accept action; no matching call"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

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

.method public processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .locals 1

    .line 70
    invoke-virtual {p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->getCallControlRequests()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    .line 73
    invoke-virtual {p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->getControl()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->processCallControlAction(Ljava/lang/String;I)V

    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-virtual {v1}, Landroid/telecom/InCallService;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-static {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->-$$Nest$msync(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;Landroid/companion/AssociationInfo;)V

    :cond_0
    return-void
.end method

.method public updateNumberOfActiveSyncAssociations(IZ)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getUserId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 141
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    add-int/2addr p1, v0

    .line 143
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v0

    .line 145
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    :goto_1
    if-nez v1, :cond_2

    .line 147
    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez p1, :cond_2

    .line 148
    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->-$$Nest$minitializeCalls(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 149
    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-gtz p1, :cond_3

    .line 150
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_3
    return-void
.end method
