.class public Lcom/android/server/usage/AppStandbyController$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppStandbyController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 686
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 687
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p4}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmSystemExemptionAppOpMode(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseIntArray;

    move-result-object p4

    monitor-enter p4

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmSystemExemptionAppOpMode(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 689
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object p0

    const/16 p4, 0xb

    invoke-virtual {p0, p4, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 692
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    .line 689
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
