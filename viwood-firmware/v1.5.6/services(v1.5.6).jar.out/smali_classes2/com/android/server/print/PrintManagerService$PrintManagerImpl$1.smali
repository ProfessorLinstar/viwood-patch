.class public Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;
.super Landroid/database/ContentObserver;
.source "PrintManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field public final synthetic val$enabledPrintServicesUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 853
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 854
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 855
    :try_start_0
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserStates(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserStates(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    .line 858
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ne p3, v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 859
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserStates(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState;

    invoke-virtual {v1}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    :cond_2
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method
