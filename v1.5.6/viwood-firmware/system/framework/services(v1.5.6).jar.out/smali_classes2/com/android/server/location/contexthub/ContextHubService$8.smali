.class public Lcom/android/server/location/contexthub/ContextHubService$8;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->val$contextHubId:I

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

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
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->val$contextHubId:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    invoke-static {v0, v1, p1, p0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleLoadResponseOldApi(Lcom/android/server/location/contexthub/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method
