.class public Lcom/android/server/location/contexthub/ContextHubService$10;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    .line 901
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$10;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$10;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 2

    int-to-byte p1, p1

    const/4 p2, 0x1

    .line 908
    new-array p2, p2, [B

    const/4 v0, 0x0

    aput-byte p1, p2, v0

    .line 909
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$10;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$10;->val$contextHubId:I

    const/4 v0, -0x1

    const/4 v1, 0x5

    invoke-static {p1, v1, p0, v0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I

    return-void
.end method

.method public onTransactionComplete(I)V
    .locals 0

    .line 0
    return-void
.end method
