.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# instance fields
.field public final synthetic val$hubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field public final synthetic val$message:Landroid/hardware/contexthub/Message;

.field public final synthetic val$sessionId:I

.field public final synthetic val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/contexthub/Message;Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 0

    .line 454
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$message:Landroid/hardware/contexthub/Message;

    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$hubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iput p9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$sessionId:I

    iput-object p10, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move p1, p2

    move p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public onTransact()I
    .locals 2

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$message:Landroid/hardware/contexthub/Message;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/Message;->sequenceNumber:I

    .line 459
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$hubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$sessionId:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$message:Landroid/hardware/contexthub/Message;

    invoke-interface {v0, v1, p0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageToEndpoint(ILandroid/hardware/contexthub/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 462
    const-string v0, "ContextHubTransactionManager"

    const-string v1, "RemoteException while trying to send a session message"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onTransactionComplete(I)V
    .locals 1

    .line 470
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 472
    const-string p1, "ContextHubTransactionManager"

    const-string v0, "RemoteException while calling client onTransactionComplete"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
