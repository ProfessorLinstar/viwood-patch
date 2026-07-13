.class public final Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;
.super Ljava/lang/Object;
.source "SupervisionService.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/supervision/SupervisionService;Lcom/android/server/supervision/SupervisionService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    return-void
.end method


# virtual methods
.method public onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mgetLockObject(Lcom/android/server/supervision/SupervisionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {p0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$fgetmUserData(Lcom/android/server/supervision/SupervisionService;)Landroid/util/SparseArray;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 478
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
