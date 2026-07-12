.class public Lcom/android/server/job/controllers/ConnectivityController$4;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "ConnectivityController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 1857
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$4;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .locals 2

    .line 1860
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRestrictBackgroundChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobScheduler.Connectivity"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$4;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .locals 1

    .line 1868
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1869
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUidPoliciesChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JobScheduler.Connectivity"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_0
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController$4;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$4;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmNetPolicyManager(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/net/NetworkPolicyManager;

    move-result-object p0

    .line 1872
    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackgroundStatus(I)I

    move-result p0

    const/4 v0, 0x3

    .line 1871
    invoke-virtual {p2, v0, p1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1873
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
