.class public Lcom/android/server/location/contexthub/ContextHubService$1;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishCallback()V
    .locals 4

    .line 382
    const-string v0, "ContextHubService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmDefaultClientMap(Lcom/android/server/location/contexthub/ContextHubService;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmDefaultClientMap(Lcom/android/server/location/contexthub/ContextHubService;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmDefaultClientMap(Lcom/android/server/location/contexthub/ContextHubService;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/IContextHubClient;

    .line 384
    invoke-interface {v1}, Landroid/hardware/location/IContextHubClient;->callbackFinished()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    .line 387
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default client not found for hub (ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v2}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmDefaultClientMap(Lcom/android/server/location/contexthub/ContextHubService;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "map was null"

    goto :goto_0

    .line 388
    :cond_1
    const-string v1, "map did not contain the hub"

    .line 386
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 391
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while finishing callback for hub (ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onClientAuthorizationChanged(JI)V
    .locals 0

    .line 448
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public onHubReset()V
    .locals 5

    const/4 v0, 0x1

    .line 416
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 417
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    const/4 v3, -0x1

    const/4 v4, 0x7

    invoke-static {v1, v4, v2, v3, v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I

    .line 418
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    .line 403
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 406
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v2

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    .line 409
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p1

    .line 405
    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I

    .line 411
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public onNanoAppAborted(JI)V
    .locals 0

    .line 423
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public onNanoAppDisabled(J)V
    .locals 0

    .line 443
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public onNanoAppEnabled(J)V
    .locals 0

    .line 438
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public onNanoAppLoaded(J)V
    .locals 0

    .line 428
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .locals 0

    .line 433
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method
