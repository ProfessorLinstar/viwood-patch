.class public Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;
.super Ljava/lang/Object;
.source "PrintManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1076
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserStates(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState;

    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {v1}, Lcom/android/server/print/UserState;->destroyLocked()V

    .line 1080
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserStates(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1082
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
