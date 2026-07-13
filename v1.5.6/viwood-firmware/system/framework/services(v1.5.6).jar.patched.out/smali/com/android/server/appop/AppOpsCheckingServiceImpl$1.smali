.class public Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;
.super Ljava/lang/Object;
.source "AppOpsCheckingServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 118
    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 119
    new-instance v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;)V

    .line 126
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
