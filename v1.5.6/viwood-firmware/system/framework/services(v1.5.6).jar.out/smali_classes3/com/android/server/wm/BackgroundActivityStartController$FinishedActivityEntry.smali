.class public Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# instance fields
.field public mDebugInfo:Ljava/lang/String;

.field public mLaunchCount:I

.field public mTaskId:I

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/BackgroundActivityStartController;


# direct methods
.method public static synthetic $r8$lambda$ynGgZ1HotwBRwYgybi9MzOri2cg(Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->lambda$new$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 2182
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2183
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 2184
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2185
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 2186
    iput v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2187
    iget v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    add-int/2addr v2, v0

    :cond_1
    :goto_0
    iput v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    .line 2188
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$smgetDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    .line 2190
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final synthetic lambda$new$0(I)V
    .locals 3

    .line 2191
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2193
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2196
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fgetmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 2197
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fputmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V

    .line 2199
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
