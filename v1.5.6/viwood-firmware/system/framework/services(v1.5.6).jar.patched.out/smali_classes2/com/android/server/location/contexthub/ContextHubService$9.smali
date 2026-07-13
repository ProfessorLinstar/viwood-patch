.class public Lcom/android/server/location/contexthub/ContextHubService$9;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTransactionComplete(I)V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->val$contextHubId:I

    invoke-static {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleUnloadResponseOldApi(Lcom/android/server/location/contexthub/ContextHubService;II)V

    return-void
.end method
