.class public Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;
.super Landroid/service/attention/IAttentionCallback$Stub;
.source "AttentionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

.field public final synthetic val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field public final synthetic val$service:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$service:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/service/attention/IAttentionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final logStats(I)V
    .locals 0

    const/16 p0, 0x8f

    .line 652
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fputmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V

    .line 647
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {v0, p1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->logStats(I)V

    return-void
.end method

.method public onSuccess(IJ)V
    .locals 6

    .line 630
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fputmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V

    .line 634
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->logStats(I)V

    .line 636
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$service:Lcom/android/server/attention/AttentionManagerService;

    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;-><init>(JIJ)V

    .line 636
    invoke-static {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$mappendResultToAttentionCacheBuffer(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V

    return-void
.end method
