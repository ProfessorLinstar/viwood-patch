.class public Lcom/android/server/job/controllers/BackgroundJobsController$2;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "BackgroundJobsController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAllJobs()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {p0}, Lcom/android/server/job/controllers/BackgroundJobsController;->-$$Nest$mupdateAllJobRestrictionsLocked(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    .line 428
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateJobsForUid(IZ)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->-$$Nest$mupdateJobRestrictionsForUidLocked(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V

    .line 435
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .locals 0

    .line 440
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 441
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {p0, p1, p3}, Lcom/android/server/job/controllers/BackgroundJobsController;->-$$Nest$mupdateJobRestrictionsForUidLocked(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V

    .line 442
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
