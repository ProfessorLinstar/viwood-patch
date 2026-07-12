.class public Lcom/android/server/locksettings/RebootEscrowManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RebootEscrowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final synthetic val$rebootEscrowUsers:Ljava/util/List;

.field public final synthetic val$retryHandler:Landroid/os/Handler;

.field public final synthetic val$users:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$users:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$rebootEscrowUsers:Ljava/util/List;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 566
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->-$$Nest$mcompareAndSetLoadEscrowDataErrorCode(Lcom/android/server/locksettings/RebootEscrowManager;IILandroid/os/Handler;)V

    .line 569
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-static {p1}, Lcom/android/server/locksettings/RebootEscrowManager;->-$$Nest$fgetmLoadEscrowDataWithRetry(Lcom/android/server/locksettings/RebootEscrowManager;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->-$$Nest$fputmLoadEscrowDataWithRetry(Lcom/android/server/locksettings/RebootEscrowManager;Z)V

    .line 572
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$users:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$rebootEscrowUsers:Ljava/util/List;

    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 592
    const-string p1, "RebootEscrowManager"

    const-string v0, "Network lost, still attempting to load escrow key."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    const/16 v0, 0x8

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->-$$Nest$mcompareAndSetLoadEscrowDataErrorCode(Lcom/android/server/locksettings/RebootEscrowManager;IILandroid/os/Handler;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 4

    .line 582
    const-string v0, "RebootEscrowManager"

    const-string v1, "Failed to connect to network within timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->-$$Nest$mcompareAndSetLoadEscrowDataErrorCode(Lcom/android/server/locksettings/RebootEscrowManager;IILandroid/os/Handler;)V

    .line 585
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$users:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v3, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->-$$Nest$monGetRebootEscrowKeyFailed(Lcom/android/server/locksettings/RebootEscrowManager;Ljava/util/List;ILandroid/os/Handler;)V

    return-void
.end method
