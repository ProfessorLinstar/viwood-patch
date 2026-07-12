.class public Lcom/android/server/wm/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# static fields
.field public static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

.field static final STATUS_BAR_MASK_LOCKED:I = 0x7a60000

.field static final STATUS_BAR_MASK_PINNED:I = 0x69f0000

.field public static final TAG_LOCKTASK:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field public final mHandler:Landroid/os/Handler;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field public volatile mLockTaskModeState:I

.field public final mLockTaskModeTasks:Ljava/util/ArrayList;

.field public final mLockTaskPackages:Landroid/util/SparseArray;

.field public mPendingDisableFromDismiss:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mToken:Landroid/os/IBinder;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$0EwYtau8CJ5JfMLKyhM63yE65X0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 275
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$GXER2ih7y4L6_g7O3sR1W5NP7aM(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/LockTaskController;->lambda$setLockTaskMode$4(Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K0vRhNVqbns9lulMtyZvSAuD6rc(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->lambda$removeLockedTask$2(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iC0g0KPAlyNN3uLeUs7bOW4HXiw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 282
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    if-eq p2, p0, :cond_0

    .line 283
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$rygRzJglPDanflZTwIAhBr1Okb4(Lcom/android/server/wm/LockTaskController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->lambda$updateLockTaskFeatures$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z0Ljoht1WDN_LMU-StLjxnswYtQ(Lcom/android/server/wm/LockTaskController;ILcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->lambda$rebuildSystemLockTaskPinnedMode$3(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/LockTaskController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingDisableFromDismiss(Lcom/android/server/wm/LockTaskController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/wm/LockTaskController;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPendingDisableFromDismiss(Lcom/android/server/wm/LockTaskController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityTaskManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/LockTaskController;->TAG_LOCKTASK:Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 109
    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x800000

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 112
    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x60000

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x200000

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 120
    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x1000000

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    new-instance v1, Landroid/util/Pair;

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;Lcom/android/server/wm/TaskChangeNotificationController;)V
    .locals 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/LockTaskController$LockTaskToken;-><init>(Lcom/android/server/wm/LockTaskController-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 184
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/16 v0, -0x2710

    .line 207
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 211
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 213
    iput-object p3, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 214
    iput-object p4, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-void
.end method

.method public static isTaskAuthAllowlisted(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    .line 255
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 256
    iget v1, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 261
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne p1, v2, :cond_1

    if-eq p1, v1, :cond_4

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_5

    .line 267
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isDelayLastActivityRemoval()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 274
    :cond_2
    new-instance v2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 275
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    return v3

    .line 282
    :cond_3
    new-instance v2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_4

    return v3

    .line 293
    :cond_4
    const-string p1, "ActivityTaskManager"

    const-string v0, "Not finishing task in lock task mode"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v3
.end method

.method public canMoveTaskToBack(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public clearLockedTask(Lcom/android/server/wm/Task;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 558
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 566
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 567
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_3
    :goto_1
    return-void
.end method

.method public clearLockedTasks(Ljava/lang/String;)V
    .locals 4

    .line 536
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x7b660c7567323b13L    # 2.6229391831797296E286

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 538
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1120
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 1126
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1125
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 1088
    const-string v0, "device_policy"

    .line 1089
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1088
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 1091
    const-string v0, "ActivityTaskManager"

    const-string v1, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object p0
.end method

.method public final getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method public getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_3

    .line 852
    iget-object v2, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    goto :goto_0

    .line 853
    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 852
    :cond_3
    :goto_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_4

    .line 854
    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_2

    :cond_4
    iget p2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 856
    :goto_2
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v3, 0x3

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_8

    const/4 v4, 0x2

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_5

    return v0

    .line 871
    :cond_5
    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v4

    :cond_6
    return v1

    :cond_7
    const/4 p0, 0x4

    return p0

    :cond_8
    return v0

    .line 858
    :cond_9
    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v3

    :cond_a
    return v1
.end method

.method public final getLockTaskFeaturesForUser(I)I
    .locals 1

    .line 1068
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getLockTaskModeState()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    return p0
.end method

.method public getRootTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getStatusBarDisableFlags(I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1039
    sget-object p0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/high16 v0, 0x7ff0000

    const/16 v1, 0x1f

    :goto_0
    if-ltz p0, :cond_1

    .line 1040
    sget-object v2, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1041
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 1042
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    .line 1043
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x7a60000

    and-int/2addr p0, v0

    .line 1048
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 1075
    const-string v0, "statusbar"

    .line 1076
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1075
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 1078
    const-string v0, "StatusBarManager"

    const-string v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method public final getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 1110
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public isActivityAllowed(ILjava/lang/String;I)Z
    .locals 2

    .line 419
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isBlockingInTaskEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eq p3, v1, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isBaseOfLockedTask(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1056
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isBlockingInTaskEnabled(I)Z
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEmergencyCallIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 457
    :cond_0
    sget-object v1, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 462
    :cond_1
    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 468
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 469
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final isKeyguardAllowed(I)Z
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result p0

    return p0
.end method

.method public isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z
    .locals 2

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget p2, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v1, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z
    .locals 2

    .line 382
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->isRecentsAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 387
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/server/wm/LockTaskController;->isEmergencyCallIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 392
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 396
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/wm/LockTaskController;->isWirelessEmergencyAlert(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 400
    :cond_3
    invoke-static {p4}, Lcom/android/server/wm/LockTaskController;->isTaskAuthAllowlisted(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public isNewTaskLockTaskModeViolation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 357
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    .line 362
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageAllowlisted(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 883
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-nez p0, :cond_1

    return v0

    .line 887
    :cond_1
    array-length p1, p0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    .line 888
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final isRecentsAllowed(I)Z
    .locals 0

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRootTask(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTaskLocked(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isWirelessEmergencyAlert(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 437
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 438
    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastAlertDialogComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 444
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final synthetic lambda$rebuildSystemLockTaskPinnedMode$3(ILcom/android/server/wm/Task;)V
    .locals 2

    .line 706
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 708
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyLockTaskModeChanged(I)V

    .line 711
    iget v0, p2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 712
    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 714
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final synthetic lambda$removeLockedTask$2(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 582
    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method public final synthetic lambda$setLockTaskMode$4(Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .locals 0

    .line 742
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    .line 741
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method public final synthetic lambda$updateLockTaskFeatures$5(I)V
    .locals 2

    .line 910
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 911
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 912
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    :cond_0
    return-void
.end method

.method public final lockKeyguardIfNeeded(I)V
    .locals 1

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->shouldLockKeyguard(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1007
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 1008
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    :cond_0
    return-void
.end method

.method public final lockTaskModeToString()Ljava/lang/String;
    .locals 2

    .line 1132
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1136
    :cond_0
    const-string p0, "PINNED"

    return-object p0

    .line 1134
    :cond_1
    const-string p0, "LOCKED"

    return-object p0

    .line 1138
    :cond_2
    const-string p0, "NONE"

    return-object p0
.end method

.method public final performStartLockTask(Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    .line 777
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 782
    :cond_0
    iput p3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyLockTaskModeChanged(I)V

    .line 784
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 785
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 786
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    invoke-interface {p0, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 790
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final performStopLockTask(I)V
    .locals 5

    .line 593
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x0

    .line 594
    iput v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 595
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyLockTaskModeChanged(I)V

    .line 598
    :try_start_0
    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 599
    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 601
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->lockKeyguardIfNeeded(I)V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_1
    if-ne v0, v2, :cond_2

    .line 607
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 609
    invoke-interface {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 613
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public rebuildSystemLockTaskPinnedMode()V
    .locals 5

    .line 688
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 690
    sget-object p0, Lcom/android/server/wm/LockTaskController;->TAG_LOCKTASK:Ljava/lang/String;

    const-string v0, "rebuildSystemLockTaskPinnedMode: Attempt to rebuild pinned mode but not in pinned mode."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    sget-object p0, Lcom/android/server/wm/LockTaskController;->TAG_LOCKTASK:Ljava/lang/String;

    const-string v0, "rebuildSystemLockTaskPinnedMode: mLockTaskModeTasks empty, nothing to rebuild."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 702
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/RecentTasks;->onLockTaskModeStateChanged(II)V

    .line 704
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/LockTaskController;ILcom/android/server/wm/Task;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeLockedTask(Lcom/android/server/wm/Task;)V
    .locals 6

    .line 575
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x7c7e188c4a9a3415L    # 4.6927024816201397E291

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x793af378f8db3f7eL    # 9.331081252945195E275

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final setKeyguardState(II)V
    .locals 2

    const/16 v0, -0x2710

    .line 956
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    if-nez p1, :cond_0

    .line 958
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 960
    const-string v1, "Lock-to-App"

    if-ne p1, v0, :cond_3

    .line 961
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 962
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    return-void

    .line 966
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 967
    iput p2, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 968
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/LockTaskController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/LockTaskController$1;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    .line 992
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void

    .line 997
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public final setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V
    .locals 9

    .line 727
    iget v3, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 728
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x3bdeb0d322a5c7ebL    # -1.5964991373029582E20

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 732
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 733
    sget-object v0, Lcom/android/server/wm/LockTaskController;->TAG_LOCKTASK:Ljava/lang/String;

    const-string v1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 737
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 738
    iget-object v6, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 739
    iget-object v6, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v7, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v6, p2, v7}, Lcom/android/server/wm/RecentTasks;->onLockTaskModeStateChanged(II)V

    .line 741
    iget-object v6, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v3, p1, p2}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 746
    :cond_2
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x2e19af22b9253ba4L

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v7, v8, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 749
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 750
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_4
    iget v3, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 754
    iget v3, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iput v3, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    :cond_5
    if-eqz p4, :cond_7

    .line 758
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-eqz p2, :cond_6

    const/4 v5, 0x1

    :cond_6
    move v6, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 761
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 763
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 766
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 767
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 768
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v1, p1

    .line 766
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    :cond_8
    return-void
.end method

.method public final setStatusBarState(II)V
    .locals 5

    .line 923
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 924
    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_0

    .line 925
    const-string p0, "Can\'t find StatusBarService"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const/high16 p1, 0x69f0000

    move v4, v3

    move v3, p1

    move p1, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 937
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p1

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object p1

    .line 939
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 940
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v3

    .line 944
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, p2, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 945
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 947
    const-string p1, "Failed to set status bar flags"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public final shouldLockKeyguard(I)Z
    .locals 3

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 1018
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_exit_locked"

    const/4 v2, -0x2

    .line 1017
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 v0, -0x1

    .line 1022
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, "127605586"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public showLockTaskToast()V
    .locals 2

    .line 622
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 626
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 629
    const-string v0, "ActivityTaskManager"

    const-string v1, "Failed to send pinning escape toast"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    .locals 8

    .line 647
    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_0

    .line 648
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, 0xa3b08e3ba7535ecL

    invoke-static {p0, p1, p2, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p2, :cond_5

    .line 652
    iput p3, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    if-ne v0, v5, :cond_4

    .line 654
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 655
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, -0x74e6deb7b82cda8L

    invoke-static {p0, p1, p2, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 660
    :cond_1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p2, -0x62cd9f84c3e5c454L    # -4.869386163618263E-168

    invoke-static {p0, p2, p3, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 661
    :cond_2
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_3

    .line 664
    iget p2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-interface {p0, p2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(II)V

    :cond_3
    return-void

    .line 667
    :cond_4
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v0, v4, :cond_5

    .line 670
    const-string v0, "ActivityTaskManager"

    const-string v6, "Stop app pinning before entering full lock task mode"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0, v1, v5, p3}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V

    .line 676
    :cond_5
    iget-object p3, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    filled-new-array {v4}, [I

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 679
    sget-object p3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean p3, p3, v3

    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    const-string p3, "Locking pinned"

    goto :goto_0

    :cond_6
    const-string p3, "Locking fully"

    :goto_0
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x159d2505424ecde6L    # -2.955851137831249E204

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, v6, v7, v2, p3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    move v4, v5

    .line 680
    :goto_1
    const-string p2, "startLockTask"

    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V

    return-void
.end method

.method public stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    .locals 1

    .line 493
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 498
    iget p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 499
    const-string p1, "stopAppPinning"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    return-void

    .line 501
    :cond_1
    sget-object p1, Lcom/android/server/wm/LockTaskController;->TAG_LOCKTASK:Ljava/lang/String;

    const-string p2, "Attempted to stop app pinning while fully locked"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    return-void

    :cond_2
    if-eqz p1, :cond_5

    .line 518
    iget p2, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    if-eq p3, p2, :cond_4

    if-nez p2, :cond_3

    iget p2, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    if-ne p3, p2, :cond_3

    goto :goto_0

    .line 520
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid uid, expected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " callingUid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " effectiveUid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 525
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    return-void

    .line 508
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t stop LockTask for null task"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateLockTaskFeatures(II)V
    .locals 1

    .line 902
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Task;

    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p1, p2, :cond_1

    .line 909
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 8

    .line 801
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ltz p2, :cond_7

    .line 805
    iget-object v4, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 806
    iget v5, v4, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v6, 0x3

    if-eq v5, v3, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v0

    .line 808
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->setLockTaskAuth()V

    .line 809
    iget v7, v4, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v7, v3, :cond_3

    if-ne v7, v6, :cond_2

    goto :goto_3

    :cond_2
    move v3, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v3, v0

    .line 812
    :goto_4
    iget v6, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v6, v0, :cond_6

    iget v6, v4, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v6, p1, :cond_6

    if-eqz v5, :cond_6

    if-eqz v3, :cond_4

    goto :goto_5

    .line 819
    :cond_4
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x42e094cce40ac071L    # -2.7905454493532132E-14

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, v7, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 821
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    .line 822
    invoke-virtual {v4, v1}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    move v2, v0

    :cond_6
    :goto_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 826
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance p2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 828
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 829
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_6

    :cond_8
    const/4 p1, 0x0

    .line 830
    :goto_6
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    iget p2, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne p2, v3, :cond_a

    .line 833
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_9

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x1d6ade5d6cc338b5L    # 5.695576166508023E-167

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, v3, v4, v1, p2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 835
    :cond_9
    const-string p2, "package updated"

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V

    goto :goto_7

    :cond_a
    move v0, v2

    :goto_7
    if-eqz v0, :cond_b

    .line 840
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_b
    return-void
.end method
