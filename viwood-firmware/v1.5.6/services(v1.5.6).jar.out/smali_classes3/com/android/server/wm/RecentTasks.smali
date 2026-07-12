.class public Lcom/android/server/wm/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# static fields
.field public static final FREEZE_TASK_LIST_TIMEOUT_MS:J

.field public static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field public static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field public static final TAG_RECENTS:Ljava/lang/String;

.field public static final TAG_TASKS:Ljava/lang/String;

.field public static final TASK_ID_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public mActiveTasksSessionDurationMs:J

.field public final mCallbacks:Ljava/util/ArrayList;

.field public mCheckTrimmableTasksOnIdle:Z

.field public mFeatureId:Ljava/lang/String;

.field public mFreezeTaskListReordering:Z

.field public mFreezeTaskListTimeoutMs:J

.field public mGlobalMaxNumTasks:I

.field public mHasVisibleRecentTasks:Z

.field public final mHiddenTasks:Ljava/util/ArrayList;

.field public final mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field public mMaxNumVisibleTasks:I

.field public mMinNumVisibleTasks:I

.field public final mPersistedTaskIds:Landroid/util/SparseArray;

.field public mRecentsComponent:Landroid/content/ComponentName;

.field public mRecentsUid:I

.field public final mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field public final mTaskPersister:Lcom/android/server/wm/TaskPersister;

.field public final mTasks:Ljava/util/ArrayList;

.field public final mTmpAvailActCache:Ljava/util/HashMap;

.field public final mTmpAvailAppCache:Ljava/util/HashMap;

.field public final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field public final mTmpRecents:Ljava/util/ArrayList;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mUsersWithRecentsLoaded:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$77Kxk7wXIqud8tL5Lzt0j0ZjKDs(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 0

    .line 135
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static bridge synthetic -$$Nest$fgetmFreezeTaskListReordering(Lcom/android/server/wm/RecentTasks;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentTasks;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityTaskManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentTasks;->TAG_TASKS:Ljava/lang/String;

    .line 131
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    .line 134
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 139
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 140
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 7

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 169
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 211
    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 217
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    .line 221
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 268
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 282
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 283
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 285
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 286
    new-instance v1, Lcom/android/server/wm/TaskPersister;

    iget-object v6, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    move-object v5, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V

    iput-object v1, v5, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 288
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p0

    iput p0, v5, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 289
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    iput-object p0, v5, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    const p0, 0x11101be

    .line 290
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v5, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 291
    invoke-virtual {v5, v0}, Lcom/android/server/wm/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskPersister;)V
    .locals 2

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 169
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 211
    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 217
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    .line 221
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 268
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 273
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 274
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 275
    iput-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 276
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 p2, 0x1

    .line 277
    iput-boolean p2, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 278
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-void
.end method

.method public static shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 646
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public add(Lcom/android/server/wm/Task;)V
    .locals 8

    .line 1125
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_2

    iget v0, p1, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v3, :cond_2

    iget v0, p1, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    .line 1131
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1135
    iget-object v6, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_3

    .line 1136
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz p0, :cond_f

    .line 1137
    sget-object p0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRecent: not adding voice interaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v0, :cond_4

    if-lez v2, :cond_4

    .line 1143
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_4

    .line 1144
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz p0, :cond_f

    sget-object p0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRecent: already at top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz v0, :cond_5

    if-lez v2, :cond_5

    .line 1149
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_5

    iget v2, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1150
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget v6, v6, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v2, v6, :cond_5

    .line 1151
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_f

    .line 1152
    sget-object v0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRecent: affiliated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " at top when adding "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1162
    :cond_5
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_9

    .line 1163
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_8

    if-nez v0, :cond_9

    .line 1166
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_7

    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->findIndexToAdd(Lcom/android/server/wm/Task;)I

    move-result v0

    .line 1170
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1171
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v2, :cond_6

    .line 1174
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    .line 1177
    :cond_6
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v1, :cond_7

    .line 1178
    sget-object v1, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: moving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_7
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return-void

    .line 1186
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task with inRecent not in recents: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_2

    :cond_9
    move v1, v5

    .line 1191
    :goto_2
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: trimming tasks for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeForAddTask(Lcom/android/server/wm/Task;)I

    move-result v2

    .line 1194
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_13

    if-eqz v1, :cond_b

    goto/16 :goto_4

    :cond_b
    if-eqz v0, :cond_15

    .line 1206
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_c

    .line 1208
    iget-object v0, p1, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    :cond_c
    if-eqz v0, :cond_12

    .line 1211
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_10

    .line 1215
    iget-object v2, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-ne v0, v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    .line 1224
    :cond_d
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_e

    .line 1225
    sget-object v0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecent: new affiliated task added at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1230
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    .line 1233
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    return-void

    .line 1242
    :cond_10
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v1, :cond_11

    .line 1243
    sget-object v1, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecent: couldn\'t find other affiliation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_3
    move v1, v4

    goto :goto_6

    .line 1249
    :cond_12
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_11

    .line 1250
    sget-object v0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRecent: adding affiliated task without next/prev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1199
    :cond_13
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v0, :cond_14

    if-eq v2, v3, :cond_14

    goto :goto_5

    :cond_14
    move v2, v5

    .line 1200
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    .line 1202
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecent: adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_6
    if-eqz v1, :cond_17

    .line 1258
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    const-string v1, "addRecent: regrouping affiliations"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_16
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 1262
    :cond_17
    iput-boolean v4, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 1263
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public addToBottom(Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 1306
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final canAddTaskWithoutTrim(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 922
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 6

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 786
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    .line 787
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v3, p3, :cond_0

    goto :goto_2

    .line 791
    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 792
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    .line 793
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 795
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v4, 0x0

    const-string v5, "disabled-package"

    invoke-virtual {v3, v2, v4, v1, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public cleanupLocked(I)V
    .locals 12

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 815
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 817
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_10

    .line 819
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    .line 820
    iget v5, v4, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v5, p1, :cond_1

    goto/16 :goto_3

    .line 824
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_2

    .line 826
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing auto-remove without activity: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 831
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_f

    .line 832
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_4

    .line 838
    :try_start_0
    iget-object v5, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const-wide/32 v7, 0x10000400

    invoke-interface {v1, v5, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_3

    .line 846
    sget-object v5, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 848
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v8, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_4
    sget-object v7, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const-string v8, "Making recent unavailable: "

    const/high16 v9, 0x800000

    if-ne v5, v7, :cond_a

    .line 854
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 855
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_6

    .line 858
    :try_start_1
    iget-object v5, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v10, 0x2000

    invoke-interface {v1, v5, v10, v11, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v5, :cond_5

    .line 865
    sget-object v5, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 867
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v10, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :cond_6
    sget-object v7, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v5, v7, :cond_9

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v9

    if-nez v5, :cond_7

    goto :goto_1

    .line 877
    :cond_7
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    if-eqz v5, :cond_8

    .line 878
    sget-object v5, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_8
    iput-boolean v3, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    goto/16 :goto_3

    .line 872
    :cond_9
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing no longer valid recent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 884
    :cond_a
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_d

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_d

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v9

    if-nez v6, :cond_b

    goto :goto_2

    .line 898
    :cond_b
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v3, :cond_c

    .line 899
    sget-object v3, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making recent available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_c
    iput-boolean v2, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    goto :goto_3

    .line 887
    :cond_d
    :goto_2
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_e

    iget-boolean v6, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    if-eqz v6, :cond_e

    .line 888
    sget-object v6, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 893
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 888
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_e
    iput-boolean v3, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    :catch_0
    :cond_f
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 910
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge v3, p1, :cond_11

    .line 912
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_4

    :cond_11
    :goto_5
    return-void
.end method

.method public containsTaskId(II)Z
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_0

    .line 594
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2

    .line 2028
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 2031
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2032
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    goto :goto_0

    .line 2033
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 2034
    :goto_0
    invoke-virtual {p1, v0, p2, p0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    .line 2036
    iget-boolean p0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz p0, :cond_1

    iget p0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    iput p0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 2037
    iget p0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput p0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-nez p3, :cond_2

    .line 2039
    invoke-static {p1, v0}, Lcom/android/server/wm/Task;->trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V

    :cond_2
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 13

    move-object/from16 v6, p3

    .line 1908
    const-string v1, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRecentsUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRecentsComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFreezeTaskListReordering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFreezeTaskListReorderingPendingTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 1913
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1912
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHiddenTasks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_d

    .line 1924
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x0

    move v2, v7

    move v3, v2

    move v8, v3

    .line 1925
    :goto_0
    const-string v9, "    "

    const-string v10, ": "

    const/4 v11, 0x1

    if-ge v2, v1, :cond_d

    .line 1926
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    if-eqz v6, :cond_a

    .line 1928
    iget-object v5, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 1929
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1931
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1930
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v11

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    if-nez v5, :cond_4

    .line 1933
    iget-object v12, v4, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v12, :cond_3

    .line 1934
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, v4, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 1936
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1935
    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v11

    goto :goto_2

    :cond_3
    move v12, v7

    :goto_2
    or-int/2addr v5, v12

    :cond_4
    if-nez v5, :cond_6

    .line 1939
    iget-object v12, v4, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_5

    .line 1940
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v11

    goto :goto_3

    :cond_5
    move v12, v7

    :goto_3
    or-int/2addr v5, v12

    :cond_6
    if-nez v5, :cond_8

    .line 1943
    iget-object v12, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_7

    .line 1944
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v11

    goto :goto_4

    :cond_7
    move v12, v7

    :goto_4
    or-int/2addr v5, v12

    :cond_8
    if-nez v5, :cond_9

    .line 1947
    iget-object v12, v4, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v5, v12

    :cond_9
    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    if-nez v3, :cond_b

    .line 1955
    const-string v3, "  Recent tasks:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v11

    move v8, v3

    .line 1959
    :cond_b
    const-string v5, "  * Recent #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1961
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_c

    .line 1964
    invoke-virtual {v4, p1, v9}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1969
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-eqz v1, :cond_1a

    .line 1972
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1973
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v4

    const/16 v5, 0x3e8

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    .line 1972
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object v0

    move v1, v7

    move v2, v1

    .line 1974
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1a

    .line 1975
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v6, :cond_17

    .line 1977
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_e

    .line 1978
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1980
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1979
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v11

    goto :goto_7

    :cond_e
    move v4, v7

    :goto_7
    if-nez v4, :cond_10

    .line 1982
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_f

    .line 1983
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v11

    goto :goto_8

    :cond_f
    move v5, v7

    :goto_8
    or-int/2addr v4, v5

    :cond_10
    if-nez v4, :cond_12

    .line 1986
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_11

    .line 1987
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v11

    goto :goto_9

    :cond_11
    move v5, v7

    :goto_9
    or-int/2addr v4, v5

    :cond_12
    if-nez v4, :cond_14

    .line 1990
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_13

    .line 1991
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v11

    goto :goto_a

    :cond_13
    move v5, v7

    :goto_a
    or-int/2addr v4, v5

    :cond_14
    if-nez v4, :cond_16

    .line 1994
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_15

    .line 1995
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v11

    goto :goto_b

    :cond_15
    move v5, v7

    :goto_b
    or-int/2addr v4, v5

    :cond_16
    if-nez v4, :cond_17

    goto :goto_c

    :cond_17
    if-nez v2, :cond_19

    if-eqz v8, :cond_18

    .line 2004
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2006
    :cond_18
    const-string v2, "  Visible recent tasks (most recent first):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v11

    move v8, v2

    .line 2011
    :cond_19
    const-string v4, "  * RecentTaskInfo #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2013
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v3, p1, v9}, Landroid/app/ActivityManager$RecentTaskInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_1a
    if-nez v8, :cond_1b

    .line 2019
    const-string v0, "  (nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    :goto_d
    return-void
.end method

.method public final findIndexToAdd(Lcom/android/server/wm/Task;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1270
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1271
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-ne p1, v2, :cond_0

    goto :goto_2

    .line 1276
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 1281
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1286
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 1293
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v1
.end method

.method public final findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I
    .locals 13

    .line 1663
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1664
    iget-object v1, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1665
    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1666
    :goto_0
    iget v5, p1, Lcom/android/server/wm/Task;->maxRecents:I

    sub-int/2addr v5, v3

    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_d

    .line 1668
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    if-eq p1, v7, :cond_c

    .line 1670
    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget v8, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v9, v7, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v8, v9, :cond_1

    goto/16 :goto_8

    .line 1674
    :cond_1
    iget-object v8, v7, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1675
    iget-object v9, p1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v10, v7, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 1676
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 1677
    invoke-virtual {v1, v8}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move v10, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 1679
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v11

    goto :goto_4

    :cond_4
    move v11, v2

    :goto_4
    const/high16 v12, 0x10080000

    and-int/2addr v12, v11

    if-eqz v12, :cond_5

    const/high16 v12, 0x8000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_5

    move v11, v3

    goto :goto_5

    :cond_5
    move v11, v2

    :goto_5
    if-eqz v8, :cond_6

    .line 1684
    invoke-virtual {v8}, Landroid/content/Intent;->isDocument()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v3

    goto :goto_6

    :cond_6
    move v8, v2

    :goto_6
    if-eqz v4, :cond_7

    if-eqz v8, :cond_7

    move v12, v3

    goto :goto_7

    :cond_7
    move v12, v2

    :goto_7
    if-nez v9, :cond_8

    if-nez v10, :cond_8

    if-nez v12, :cond_8

    goto :goto_8

    :cond_8
    if-eqz v12, :cond_9

    .line 1692
    iget-object v8, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_b

    iget-object v7, v7, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_b

    .line 1694
    invoke-virtual {v8, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-lez v5, :cond_c

    add-int/lit8 v5, v5, -0x1

    if-eqz v10, :cond_b

    if-eqz v11, :cond_c

    goto :goto_8

    :cond_9
    if-nez v4, :cond_b

    if-eqz v8, :cond_a

    goto :goto_8

    :cond_a
    if-eqz v11, :cond_c

    :cond_b
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_c
    return v6

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public flush()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 665
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 666
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPersister;->flush()V

    return-void

    :catchall_0
    move-exception p0

    .line 665
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 930
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 932
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 936
    iget v4, v3, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v4, p1, :cond_0

    goto :goto_1

    .line 939
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 942
    :cond_1
    new-instance v4, Lcom/android/server/wm/AppTaskImpl;

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct {v4, v5, v3, p1}, Lcom/android/server/wm/AppTaskImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    .line 943
    invoke-virtual {v4}, Landroid/app/IAppTask$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCurrentProfileIds()[I
    .locals 0

    .line 965
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object p0
.end method

.method public getPersistableTaskIds(Landroid/util/ArraySet;)V
    .locals 5

    .line 1062
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1064
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1069
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1070
    iget-boolean v4, v2, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    .line 1071
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1073
    :cond_1
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getProfileIds(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 950
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 951
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object p0

    .line 952
    :goto_0
    array-length p1, p0

    if-ge v1, p1, :cond_0

    .line 953
    aget p1, p0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRawTasks()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 1085
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRecentTasks(IIZII)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 973
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getRecentTasksImpl(IIZII)Ljava/util/ArrayList;
    .locals 10

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 983
    :goto_0
    invoke-virtual {p0, p4}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v3

    .line 984
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 986
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 987
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v1, v4, :cond_9

    .line 990
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 992
    invoke-virtual {p0, v6}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    .line 994
    invoke-virtual {p0, v6, v1, v5, v0}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1006
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, p1, :cond_1

    goto/16 :goto_2

    .line 1011
    :cond_1
    iget v7, v6, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1012
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping, not user: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1016
    :cond_2
    iget-boolean v7, v6, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eqz v7, :cond_3

    .line 1017
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping, activity suspended: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    if-nez p3, :cond_4

    .line 1024
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, v6, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v7, p5, :cond_4

    .line 1025
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping, not allowed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1030
    :cond_4
    iget-boolean v7, v6, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1032
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_8

    .line 1033
    sget-object v7, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping, auto-remove without activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_6

    .line 1037
    iget-boolean v7, v6, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v7, :cond_6

    .line 1038
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_8

    .line 1039
    sget-object v7, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping, unavail real act: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1044
    :cond_6
    iget-boolean v7, v6, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    if-nez v7, :cond_7

    .line 1049
    sget-object v7, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping, user setup not complete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1053
    :cond_7
    invoke-virtual {p0, v6, v2, p3}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    return-object p4
.end method

.method public getRecentsComponent()Landroid/content/ComponentName;
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getRecentsComponentFeatureId()Ljava/lang/String;
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public getRecentsComponentUid()I
    .locals 0

    .line 481
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    return p0
.end method

.method public getTask(I)Lcom/android/server/wm/Task;
    .locals 4

    .line 1111
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1113
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1114
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTaskIdsForLoadedUser(I)Landroid/util/SparseBooleanArray;
    .locals 1

    .line 599
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_0

    .line 601
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loaded user without loaded tasks, userId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance p0, Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .locals 7

    .line 2050
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p0

    .line 2051
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 2054
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v4

    .line 2055
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    if-nez v4, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-nez p2, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    if-eq p0, v4, :cond_5

    if-nez v2, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move p0, v0

    goto :goto_5

    :cond_5
    :goto_4
    move p0, v1

    :goto_5
    if-eq p1, p2, :cond_9

    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    if-eq p2, v1, :cond_9

    :cond_6
    if-ne p1, v1, :cond_7

    if-eq p2, v2, :cond_9

    :cond_7
    if-nez v3, :cond_9

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    move p1, v0

    goto :goto_7

    :cond_9
    :goto_6
    move p1, v1

    :goto_7
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public final isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 1424
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActiveRecentTask: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " globalMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1431
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz p0, :cond_1

    const-string p0, "\tisQuietProfileTask=true"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 1435
    :cond_2
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_4

    .line 1437
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1439
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1440
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz p0, :cond_3

    .line 1441
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\taffiliatedWithTask="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not active"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public isCallerRecents(I)Z
    .locals 0

    .line 441
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public isFreezeTaskListReorderingSet()Z
    .locals 0

    .line 382
    iget-boolean p0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return p0
.end method

.method public final isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_3

    .line 1525
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 1526
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 v2, 0x800000

    and-int/2addr p4, v2

    if-ne p4, v2, :cond_3

    .line 1529
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz p0, :cond_0

    .line 1530
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\texcludeFromRecents=true, taskIndex: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " getTopVisibleActivity: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " isOnHomeDisplay: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1530
    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    .line 1539
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0

    .line 1543
    :cond_3
    iget p2, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz p2, :cond_4

    if-gt p3, p2, :cond_4

    return v1

    .line 1550
    :cond_4
    iget-object p2, p1, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_5

    return v1

    .line 1552
    :cond_5
    iget p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz p2, :cond_7

    if-gt p3, p2, :cond_6

    return v1

    :cond_6
    return v0

    .line 1557
    :cond_7
    iget-wide p2, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-lez p2, :cond_8

    .line 1560
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long p0, p1, p3

    if-gtz p0, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final isRecentTasksLoaded(I)Z
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p0, :cond_0

    .line 586
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRecentsComponent(Landroid/content/ComponentName;I)Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p2, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRecentsComponentHomeActivity(I)Z
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 457
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTrimmable(Lcom/android/server/wm/Task;)Z
    .locals 2

    .line 1571
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1576
    :cond_0
    iget-boolean p0, p1, Lcom/android/server/wm/Task;->mIsTrimmableFromRecents:Z

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 1582
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    .line 1586
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    .line 1592
    :cond_3
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    if-gez p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public isVisibleRecentTask(Lcom/android/server/wm/Task;)Z
    .locals 4

    .line 1458
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_0

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVisibleRecentTask: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isForceExcludedFromRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isForceExcludedFromRecents()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " minVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " inactiveDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " activityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAlwaysOnTopWhenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTopWhenVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " intentFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1459
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    goto :goto_0

    .line 1484
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    return v2

    .line 1492
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 1497
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTopWhenVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 1504
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_5

    return v2

    .line 1510
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1511
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->canShowTasksInHostDeviceRecents()Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    return v2
.end method

.method public loadParametersFromResources(Landroid/content/res/Resources;)V
    .locals 3

    .line 390
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10e00d7

    .line 391
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e00c9

    .line 393
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    :cond_0
    const v0, 0x10e00d6

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e00c8

    .line 398
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    :goto_0
    const v0, 0x10e0012

    .line 401
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-lez p1, :cond_1

    .line 404
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    .line 405
    :goto_1
    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    return-void
.end method

.method public loadRecentTasksIfNeeded(I)V
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 525
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 526
    monitor-enter v1

    .line 527
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 533
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->readPersistedTaskIdsFromFileForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 534
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->loadTasksForUser(I)Lcom/android/server/wm/TaskPersister$RecentTaskFiles;

    move-result-object v2

    .line 535
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 536
    :try_start_2
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/RecentTasks;->restoreRecentTasksLocked(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/TaskPersister$RecentTaskFiles;)V

    .line 537
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x1

    .line 538
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_2
    move-exception p0

    .line 537
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 539
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 525
    :goto_2
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public loadRecentsComponent(Landroid/content/res/Resources;)V
    .locals 5

    const v0, 0x10402c2

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 422
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 423
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 426
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const-wide/16 v3, 0x2200

    .line 422
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 429
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 432
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not load application info for recents component: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final moveAffiliatedTasksToFront(Lcom/android/server/wm/Task;I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1798
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v4, v1

    move v5, v2

    .line 1801
    :goto_0
    iget-object v6, v4, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_0

    if-lez v5, :cond_0

    add-int/lit8 v5, v5, -0x1

    move-object v4, v6

    goto :goto_0

    .line 1805
    :cond_0
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_1

    .line 1806
    sget-object v6, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: adding affiliates starting at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from initial "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_1
    iget v6, v4, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v7, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move-object v10, v4

    move v7, v5

    .line 1813
    :goto_2
    const-string v11, " @"

    const-string v12, "Bad chain @"

    const-string v13, "ActivityTaskManager"

    if-ge v7, v3, :cond_d

    .line 1814
    iget-object v14, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Task;

    .line 1815
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v15, :cond_3

    .line 1816
    sget-object v15, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    const/16 v16, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    const-string v9, "addRecent: looking at next chain @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_3
    const/4 v8, -0x1

    if-ne v14, v4, :cond_5

    .line 1821
    iget-object v9, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v9, :cond_4

    iget v9, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-eq v9, v8, :cond_6

    .line 1822
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": first task has next affiliate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move/from16 v6, v17

    goto/16 :goto_6

    .line 1829
    :cond_5
    iget-object v9, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-ne v9, v10, :cond_c

    iget v9, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    iget v15, v10, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v9, v15, :cond_6

    goto/16 :goto_5

    .line 1840
    :cond_6
    iget v9, v14, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string v10, " has previous affiliate "

    const-string v15, ": last task "

    if-ne v9, v8, :cond_8

    .line 1842
    iget-object v3, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_7

    .line 1843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .line 1848
    :cond_7
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: end of chain @"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1852
    :cond_8
    iget-object v8, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v9, ": task "

    if-nez v8, :cond_9

    .line 1853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but should be id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1861
    :cond_9
    iget v8, v14, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v10, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v8, v10, :cond_a

    .line 1862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has affiliated id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_b

    .line 1872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad chain ran off index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    move-object v10, v14

    goto/16 :goto_2

    .line 1831
    :cond_c
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": middle task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has bad next affiliate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    const/16 v16, 0x1

    const/16 v17, 0x0

    :cond_e
    :goto_6
    if-eqz v6, :cond_f

    if-ge v7, v2, :cond_f

    .line 1880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": did not extend to task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    :cond_f
    if-eqz v6, :cond_13

    move v2, v5

    .line 1888
    :goto_7
    const-string v3, " to "

    if-gt v2, v7, :cond_11

    .line 1889
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_10

    .line 1890
    sget-object v4, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: moving affiliated "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v3, v2, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_10
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1894
    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v6, v2, v5

    invoke-virtual {v4, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1896
    :cond_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_12

    .line 1897
    sget-object v0, Lcom/android/server/wm/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRecent: done moving tasks  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v16

    :cond_13
    return v17
.end method

.method public final notifyTaskAdded(Lcom/android/server/wm/Task;)V
    .locals 2

    const/4 v0, 0x0

    .line 493
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    return-void
.end method

.method public notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 611
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 617
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister;->wakeup(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public final notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZZ)V

    return-void
.end method

.method public final notifyTaskRemoved(Lcom/android/server/wm/Task;ZZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    if-eqz p4, :cond_1

    .line 506
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyRecentTaskRemovedForAddTask(I)V

    :cond_1
    return-void
.end method

.method public onActivityIdle(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeUnreachableHiddenTasks(I)V

    .line 1334
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1335
    iput-boolean p1, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    :cond_1
    return-void
.end method

.method public onLockTaskModeStateChanged(II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 752
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_2

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 754
    iget v1, v0, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    iget v1, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-static {v1}, Lcom/android/server/wm/LockTaskController;->isTaskAuthAllowlisted(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 756
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 6

    .line 732
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 734
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 735
    iget-object v3, v2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 736
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, p3, :cond_1

    iget-boolean v3, v2, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eq v3, p2, :cond_1

    .line 739
    iput-boolean p2, v2, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 741
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v5, "suspended-package"

    invoke-virtual {v4, v2, v3, v1, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 743
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSystemReadyLocked()V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 651
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final processNextAffiliateChainLocked(I)I
    .locals 10

    .line 1726
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1727
    iget v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1730
    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_0

    .line 1735
    iput-boolean v3, v0, Lcom/android/server/wm/Task;->inRecents:Z

    add-int/2addr p1, v3

    return p1

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1741
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-lt v0, p1, :cond_2

    .line 1742
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1743
    iget v4, v2, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v4, v1, :cond_1

    .line 1744
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1745
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1751
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1755
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1756
    iput-boolean v3, v0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1757
    iget-object v2, v0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    const-string v5, "ActivityTaskManager"

    if-eqz v2, :cond_3

    .line 1758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link error 1 first.next="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1760
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1763
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_6

    .line 1765
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 1766
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 1767
    iget-object v8, v6, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eq v8, v7, :cond_4

    .line 1768
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 2 next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " setting prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1771
    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1773
    :cond_4
    iget-object v8, v7, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eq v8, v6, :cond_5

    .line 1774
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 3 prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " setting next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-virtual {v7, v6}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1777
    invoke-virtual {p0, v7, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1779
    :cond_5
    iput-boolean v3, v7, Lcom/android/server/wm/Task;->inRecents:Z

    goto :goto_1

    .line 1782
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1783
    iget-object v3, v2, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_7

    .line 1784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link error 4 last.prev="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1786
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1790
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1791
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    add-int/2addr p1, v0

    return p1
.end method

.method public registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1321
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    return-void
.end method

.method public removeAllVisibleTasks(I)V
    .locals 4

    .line 772
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object p1

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 774
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 775
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 776
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 777
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 778
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeForAddTask(Lcom/android/server/wm/Task;)I
    .locals 6

    .line 1627
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1629
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    .line 1638
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2

    .line 1640
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v3

    const-string v4, "ActivityTaskManager"

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to hidden list because adding "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    const/4 v3, 0x1

    .line 1647
    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZZ)V

    .line 1649
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_2

    .line 1650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trimming task="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for addition of task="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return v0
.end method

.method public removeTasksByPackageName(Ljava/lang/String;I)V
    .locals 5

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 763
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 764
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v3, p2, :cond_0

    goto :goto_1

    .line 765
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 767
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v4, "remove-package-task"

    invoke-virtual {v3, v2, v1, v1, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeTasksForUserFromMemoryLocked(I)V
    .locals 8

    if-gtz p1, :cond_0

    .line 709
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t remove recent task on user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 715
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 716
    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v4, p1, :cond_2

    .line 717
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v4, 0x2

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-long v4, p1

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v4, 0x2de8dfeb552d3e8fL    # 1.563035543413058E-87

    const/4 v7, 0x4

    invoke-static {v6, v4, v5, v7, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 719
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 720
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v2, v2, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 721
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    move v2, v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 727
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    :cond_4
    return-void
.end method

.method public final removeUnreachableHiddenTasks(I)V
    .locals 6

    .line 1597
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v1, :cond_5

    .line 1602
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1603
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1608
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 1609
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 1615
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1616
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v4, "remove-hidden-task"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v5, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_2

    .line 1605
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V
    .locals 3

    .line 343
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 349
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 360
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 361
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListFrozen(Z)V

    return-void
.end method

.method public resetFreezeTaskListReorderingOnTimeout()V
    .locals 7

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 375
    :goto_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x381393610cf534bfL    # 1.4381952701529872E-38

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 376
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final restoreRecentTasksLocked(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/TaskPersister$RecentTaskFiles;)V
    .locals 6

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskPersister;->setPersistedTaskIds(ILandroid/util/SparseBooleanArray;)V

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 548
    new-instance p2, Landroid/util/IntArray;

    invoke-direct {p2}, Landroid/util/IntArray;-><init>()V

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 550
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 551
    iget v2, v1, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v1}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restoring recents for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILcom/android/server/wm/TaskPersister$RecentTaskFiles;Landroid/util/IntArray;)Ljava/util/ArrayList;

    move-result-object p3

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 563
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 564
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 566
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 567
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    int-to-long v4, v2

    sub-long v4, v0, v4

    .line 571
    iput-wide v4, v3, Lcom/android/server/wm/Task;->lastActiveTime:J

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 578
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 579
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 581
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    return-void
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public setFreezeTaskListReordering()V
    .locals 5

    .line 322
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListFrozen(Z)V

    .line 324
    iput-boolean v1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 327
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, -0x7a2d6bd90944c3a1L

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 331
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    goto :goto_0

    .line 333
    :cond_2
    iget-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 334
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setFreezeTaskListTimeout(J)V
    .locals 0

    .line 309
    iput-wide p1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    return-void
.end method

.method public setGlobalMaxNumTasks(I)V
    .locals 0

    .line 304
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    return-void
.end method

.method public setParameters(IIJ)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 298
    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 299
    iput-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    return-void
.end method

.method public final syncPersistentTaskIdsLocked()V
    .locals 6

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 622
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 623
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->isRecentTasksLoaded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    .line 630
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 631
    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 634
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No task ids found for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mPersistedTaskIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final trimInactiveRecentTasks()V
    .locals 10

    .line 1344
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1352
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_2

    .line 1353
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1354
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    add-int/lit8 v0, v0, -0x1

    .line 1356
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_1

    .line 1357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trimming over max-recents task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " max="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1363
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->getCurrentProfileIds()[I

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1365
    array-length v1, v0

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_5

    aget v6, v0, v5

    .line 1366
    invoke-virtual {p0, v6}, Lcom/android/server/wm/RecentTasks;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1367
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1368
    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1370
    :cond_3
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v8, :cond_4

    .line 1371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " quiet="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 1372
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1371
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move v0, v3

    move v1, v0

    .line 1378
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 1379
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 1381
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1382
    iget-boolean v6, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v6, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1388
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 1394
    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1395
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->isTrimmable(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    .line 1402
    :cond_9
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v6, :cond_b

    .line 1403
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trimming out-of-range visible task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1410
    :cond_a
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trimming inactive task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_b
    :goto_4
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1415
    invoke-virtual {p0, v5, v4, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 1416
    invoke-virtual {p0, v5, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    goto :goto_2

    :cond_c
    :goto_5
    return-void
.end method

.method public unloadUserDataFromMemoryLocked(I)V
    .locals 2

    .line 697
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->isRecentTasksLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unloading recents for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from memory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeTasksForUserFromMemoryLocked(I)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 703
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->unloadUserDataFromMemory(I)V

    return-void
.end method

.method public unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public usersWithRecentsLoadedLocked()[I
    .locals 6

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 678
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 679
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 680
    aput v4, v1, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v0, :cond_2

    .line 685
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method
