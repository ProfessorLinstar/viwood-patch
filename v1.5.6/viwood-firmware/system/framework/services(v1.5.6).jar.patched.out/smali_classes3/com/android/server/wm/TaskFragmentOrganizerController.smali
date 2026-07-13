.class public Lcom/android/server/wm/TaskFragmentOrganizerController;
.super Landroid/window/ITaskFragmentOrganizerController$Stub;
.source "TaskFragmentOrganizerController.java"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCachedTaskFragmentOrganizerStates:Ljava/util/ArrayList;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

.field public final mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

.field public final mTmpTaskSet:Landroid/util/ArraySet;

.field public final mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;


# direct methods
.method public static synthetic $r8$lambda$S-Yr4xWQtkRyuWTVXvrkVC_151I(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    if-eq p2, p0, :cond_0

    .line 889
    iget-boolean p0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_0

    .line 890
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_fqy2svTHBcuLgFz_Y9y-MaCUwM([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .locals 2

    .line 864
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 865
    aput-object p1, p0, v1

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static bridge synthetic -$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowOrganizerController(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowOrganizerController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removeOrganizer(Landroid/window/ITaskFragmentOrganizer;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtrimIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->trimIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowOrganizerController;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroid/window/ITaskFragmentOrganizerController$Stub;-><init>()V

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mCachedTaskFragmentOrganizerStates:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTmpTaskSet:Landroid/util/ArraySet;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    return-void
.end method

.method public static isTaskVisible(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    .line 1273
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1276
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 1279
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1280
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    .line 1283
    :cond_2
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public static trimIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 1379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1380
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1381
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1382
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V
    .locals 1

    .line 936
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragmentOrg(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 728
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isValidTransaction(Landroid/window/WindowContainerTransaction;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 731
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskFragmentTransactionLocked(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V

    .line 733
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dispatchPendingEvents()V
    .locals 4

    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 1188
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1193
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 1194
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 1195
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingEvents(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final dispatchPendingEvents(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Ljava/util/List;)V
    .locals 8

    .line 1201
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1204
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->shouldDeferPendingEvents(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTmpTaskSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1208
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1209
    new-instance v1, Landroid/window/TaskFragmentTransaction;

    invoke-direct {v1}, Landroid/window/TaskFragmentTransaction;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 1211
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 1212
    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1214
    :cond_2
    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1215
    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTmpTaskSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1217
    new-instance v5, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v6, 0x3

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 1219
    invoke-virtual {v5, v4}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v4

    .line 1220
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v4

    .line 1217
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskFragmentOrganizerController;->prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/window/TaskFragmentTransaction;->addChange(Landroid/window/TaskFragmentTransaction$Change;)V

    .line 1223
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/window/TaskFragmentTransaction;->addChange(Landroid/window/TaskFragmentTransaction$Change;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1225
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTmpTaskSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 1226
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->dispatchTransaction(Landroid/window/TaskFragmentTransaction;)V

    .line 1227
    invoke-interface {p2}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    .locals 6

    const/4 v0, 0x2

    .line 1311
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1317
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    .line 1318
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v2

    .line 1319
    new-instance v3, Landroid/window/TaskFragmentTransaction;

    invoke-direct {v3}, Landroid/window/TaskFragmentTransaction;-><init>()V

    .line 1321
    new-instance v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 1323
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 1324
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 1321
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/window/TaskFragmentTransaction;->addChange(Landroid/window/TaskFragmentTransaction$Change;)V

    .line 1325
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/window/TaskFragmentTransaction;->addChange(Landroid/window/TaskFragmentTransaction$Change;)V

    .line 1326
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->dispatchTransaction(Landroid/window/TaskFragmentTransaction;)V

    .line 1327
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppThread(II)Landroid/app/IApplicationThread;
    .locals 2

    .line 1363
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1364
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v0, p2, :cond_0

    .line 1365
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 1368
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find process for pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLastPendingLifecycleEvent(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .locals 3

    .line 1159
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 1160
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 1161
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1162
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1163
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 1164
    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->isLifecycleEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLastPendingParentInfoChangedEvent(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .locals 3

    .line 923
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 924
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 925
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 926
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 927
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTask(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne p2, v1, :cond_0

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .locals 3

    .line 1174
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 1175
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 1176
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1177
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1178
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 1179
    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne p1, v2, :cond_0

    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v2

    if-ne p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReparentActivityFromTemporaryToken(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 528
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 527
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz p0, :cond_1

    .line 530
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmTemporaryActivityTokens(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final isOrganizerRegistered(Landroid/window/ITaskFragmentOrganizer;)Z
    .locals 0

    .line 944
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSystemOrganizer(Landroid/os/IBinder;)Z
    .locals 0

    .line 915
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 916
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz p0, :cond_0

    .line 917
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmIsSystemOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValidTransaction(Landroid/window/WindowContainerTransaction;)Z
    .locals 2

    .line 984
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 987
    :cond_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 988
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isOrganizerRegistered(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 991
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Caller organizer="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is no longer registered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskFragmentOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    .line 855
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 857
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 862
    new-array v1, v1, [Lcom/android/server/wm/TaskFragment;

    .line 863
    new-instance v2, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    const/4 v2, 0x0

    .line 870
    aget-object v1, v1, v2

    if-nez v1, :cond_1

    return-void

    .line 873
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    .line 875
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isOrganizerRegistered(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 876
    const-string p0, "TaskFragmentOrganizerController"

    const-string p1, "The last TaskFragmentOrganizer no longer exists"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 880
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLastEmbeddedParentTfTokenBeforePip()Landroid/os/IBinder;

    move-result-object v2

    .line 881
    new-instance v3, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 883
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v1

    .line 884
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLastEmbeddedParentTfTokenBeforePip()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragmentToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v1

    .line 888
    new-instance v3, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 891
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 892
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 893
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setOtherActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    .line 896
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    return-void
.end method

.method public onTaskFragmentAppeared(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .locals 2

    .line 762
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    .line 766
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onTaskFragmentAppeared failed because it is not attached tf="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskFragmentOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 770
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v0

    .line 771
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->addTaskFragment(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 777
    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 779
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 780
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 839
    iget-boolean v0, p3, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_0

    return-void

    .line 842
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 843
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 845
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 846
    invoke-virtual {p1, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 847
    invoke-virtual {p1, p5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setException(Ljava/lang/Throwable;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 848
    invoke-virtual {p1, p4}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setOpType(I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 849
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 843
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 851
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void
.end method

.method public onTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .locals 2

    .line 786
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 790
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getLastPendingLifecycleEvent(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 796
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 798
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    goto :goto_1

    .line 802
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removePendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    const-wide/16 p1, 0x0

    .line 806
    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fputmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;J)V

    .line 808
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    return-void
.end method

.method public onTaskFragmentParentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Task;)V
    .locals 2

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 902
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getLastPendingParentInfoChangedEvent(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 907
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 908
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 911
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void
.end method

.method public onTaskFragmentVanished(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .locals 5

    .line 813
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 816
    iput-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v1

    .line 818
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 819
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 821
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_0
    if-ltz v3, :cond_2

    .line 822
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 823
    invoke-static {v4}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-ne p2, v4, :cond_1

    .line 824
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 827
    :cond_2
    new-instance v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    invoke-direct {v2, v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 829
    invoke-virtual {v2, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 830
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 827
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 831
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->removeTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    .line 833
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void
.end method

.method public onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 701
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isValidTransaction(Landroid/window/WindowContainerTransaction;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {p0, p2, p3, p4, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 707
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 709
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    :cond_1
    if-eqz v2, :cond_2

    .line 712
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTransactionFinished(Landroid/os/IBinder;)V

    .line 713
    invoke-static {v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmInFlightTransactions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 714
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ReadyCondition;

    if-eqz p0, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 719
    :cond_2
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

.method public final prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;
    .locals 3

    .line 1333
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragmentOrg(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 1334
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 1335
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 1336
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1340
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1353
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmActivity(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmOtherActivity(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragmentToken(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->prepareActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0

    .line 1356
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown TaskFragmentEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1350
    :cond_2
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmErrorCallbackToken(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmOpType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmException(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->prepareTaskFragmentError(Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0

    .line 1348
    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTask(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->prepareTaskFragmentParentInfoChanged(Lcom/android/server/wm/Task;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0

    .line 1346
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->prepareTaskFragmentInfoChanged(Lcom/android/server/wm/TaskFragment;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0

    .line 1344
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->prepareTaskFragmentVanished(Lcom/android/server/wm/TaskFragment;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0

    .line 1342
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->prepareTaskFragmentAppeared(Lcom/android/server/wm/TaskFragment;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public registerOrganizer(Landroid/window/ITaskFragmentOrganizer;ZLandroid/os/Bundle;)V
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->registerOrganizerInternal(Landroid/window/ITaskFragmentOrganizer;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public final registerOrganizerInternal(Landroid/window/ITaskFragmentOrganizer;ZLandroid/os/Bundle;)V
    .locals 10

    if-eqz p2, :cond_0

    .line 545
    const-string v0, "registerSystemOrganizer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 547
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 549
    iget-object v7, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v7

    .line 550
    :try_start_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, v5

    int-to-long v8, v4

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x30b4e7aef22a3475L    # 4.621803974599916E-74

    const/16 v6, 0x14

    invoke-static {v3, v1, v2, v6, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 554
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isOrganizerRegistered(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v0

    if-nez v0, :cond_4

    if-lez v4, :cond_3

    .line 563
    invoke-virtual {p0, p1, v4, v5, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->restoreFromCachedStateIfPossible(Landroid/window/ITaskFragmentOrganizer;IILandroid/os/Bundle;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 564
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 567
    :cond_2
    :try_start_1
    iget-object p3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;-><init>(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;IIZ)V

    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object p0, v2, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-interface {v3}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 560
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot register from invalid pid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 555
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Replacing existing organizer currently unsupported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 570
    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;Landroid/view/RemoteAnimationDefinition;)V
    .locals 9

    .line 637
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 639
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 640
    :try_start_0
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v1

    int-to-long v6, v0

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x126d444cc0b531d9L    # 6.477215716303434E-220

    const/16 v6, 0x14

    invoke-static {v8, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 643
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 644
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz p0, :cond_2

    .line 648
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinition(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/view/RemoteAnimationDefinition;

    move-result-object p1

    if-nez p1, :cond_1

    .line 654
    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 655
    invoke-static {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fputmRemoteAnimationDefinition(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/view/RemoteAnimationDefinition;)V

    .line 656
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 649
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The organizer has already registered remote animations="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinition(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/view/RemoteAnimationDefinition;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 646
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The organizer hasn\'t been registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 656
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final removeOrganizer(Landroid/window/ITaskFragmentOrganizer;Ljava/lang/String;)V
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 950
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 949
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-nez v0, :cond_0

    .line 952
    const-string p0, "TaskFragmentOrganizerController"

    const-string p1, "The organizer has already been removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->dispose(Ljava/lang/String;)V

    .line 959
    iget-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->hasSavedState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 961
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mCachedTaskFragmentOrganizerStates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final removePendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V
    .locals 1

    .line 940
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragmentOrg(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final restoreFromCachedStateIfPossible(Landroid/window/ITaskFragmentOrganizer;IILandroid/os/Bundle;)Z
    .locals 6

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mCachedTaskFragmentOrganizerStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mCachedTaskFragmentOrganizerStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 579
    invoke-static {v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmOrganizerUid(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)I

    move-result v3

    if-ne v3, p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 p3, 0x0

    if-nez v2, :cond_2

    return p3

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mCachedTaskFragmentOrganizerStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->restore(Landroid/window/ITaskFragmentOrganizer;I)V

    .line 590
    invoke-static {v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmSavedState(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 593
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 594
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 595
    invoke-static {v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmOrganizedTaskFragments(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge p3, v3, :cond_4

    .line 597
    invoke-static {v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmOrganizedTaskFragments(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskFragment;

    .line 598
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 600
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 603
    :cond_4
    const-string p3, "key_restore_task_fragments_info"

    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 605
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_3
    if-ltz p3, :cond_5

    .line 607
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskFragmentParentInfo()Landroid/window/TaskFragmentParentInfo;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 609
    :cond_5
    const-string p3, "key_restore_task_fragment_parent_info"

    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 612
    iget-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public setSavedState(Landroid/window/ITaskFragmentOrganizer;Landroid/os/Bundle;)V
    .locals 7

    .line 680
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 682
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 683
    :try_start_0
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v1

    int-to-long v0, v0

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x28671d86fa5ac88dL    # -9.575248965060304E113

    const/16 v1, 0x14

    invoke-static {v6, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 685
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 686
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 685
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz p0, :cond_1

    .line 691
    invoke-static {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fputmSavedState(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/os/Bundle;)V

    .line 692
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 688
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The organizer hasn\'t been registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 692
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final shouldDeferPendingEvents(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Ljava/util/List;)Z
    .locals 11

    .line 1236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 1239
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 1240
    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v6

    if-eqz v6, :cond_0

    return v3

    .line 1249
    :cond_0
    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 1250
    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTask(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_1

    .line 1252
    :cond_1
    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 1254
    :goto_1
    iget-wide v7, v6, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 1255
    invoke-static {v6, v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isTaskVisible(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v3

    .line 1258
    :cond_2
    invoke-virtual {p0, v6, p1, v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v3

    .line 1264
    :cond_3
    iget-wide v6, v6, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-static {v5, v6, v7}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fputmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Z
    .locals 2

    .line 1291
    invoke-static {p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmLastSentTaskFragmentParentInfos(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object p0

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1292
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskFragmentParentInfo;

    const/4 p1, 0x1

    if-eqz p0, :cond_5

    .line 1293
    invoke-virtual {p0}, Landroid/window/TaskFragmentParentInfo;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 1299
    :cond_0
    invoke-static {p3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p0, v0, :cond_4

    .line 1302
    invoke-static {p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmLastSentTaskFragmentInfos(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    .line 1303
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskFragmentInfo;

    .line 1304
    invoke-static {p3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result p2

    if-nez p2, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p0, :cond_3

    .line 1305
    invoke-virtual {p0}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    move-result p0

    if-eq p0, p2, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return p1

    :cond_4
    return v1

    :cond_5
    :goto_2
    return p1
.end method

.method public unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .locals 9

    .line 619
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    .line 621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 623
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 624
    :try_start_1
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v7, 0x1

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v6, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v6, -0x5e0e610652dbce99L

    const/16 v2, 0x14

    invoke-static {v0, v6, v7, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 627
    :cond_0
    :goto_0
    const-string v0, "unregistered"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removeOrganizer(Landroid/window/ITaskFragmentOrganizer;Ljava/lang/String;)V

    .line 628
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 630
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 628
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 630
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    throw p0
.end method

.method public unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;)V
    .locals 7

    .line 661
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 662
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    .line 663
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 664
    :try_start_0
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-long v5, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0x23085545529bc887L    # -7.045950413716032E139

    const/16 v2, 0x14

    invoke-static {v0, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 667
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 668
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-nez p0, :cond_1

    .line 670
    const-string p0, "TaskFragmentOrganizerController"

    const-string p1, "The organizer hasn\'t been registered."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 674
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fputmRemoteAnimationDefinition(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/view/RemoteAnimationDefinition;)V

    .line 675
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    .locals 2

    .line 974
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 975
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz p0, :cond_0

    return-object p0

    .line 977
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentOrganizer has not been registered. Organizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
