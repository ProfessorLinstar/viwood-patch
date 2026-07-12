.class final Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# instance fields
.field public final mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field public final mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

.field public mIsDispatched:Z

.field public mIsFulfilled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIAttentionCallback(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    return-void
.end method

.method public constructor <init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
    .locals 1

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 627
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

    return-void
.end method


# virtual methods
.method public cancelInternal()V
    .locals 1

    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 661
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 665
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is dispatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is fulfilled:="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method
