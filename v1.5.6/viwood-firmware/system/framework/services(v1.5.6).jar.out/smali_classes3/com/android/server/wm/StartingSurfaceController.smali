.class public Lcom/android/server/wm/StartingSurfaceController;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mDeferringAddStartActivities:Ljava/util/ArrayList;

.field public mDeferringAddStartingWindow:Z

.field public mInitNewTask:Z

.field public mInitProcessRunning:Z

.field public mInitTaskSwitch:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 80
    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    return-void
.end method

.method public static makeStartingWindowTypeParameter(ZZZZZZZZIZLjava/lang/String;I)I
    .locals 0

    if-eqz p1, :cond_0

    or-int/lit8 p0, p0, 0x2

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 p0, p0, 0x4

    :cond_1
    if-eqz p3, :cond_2

    or-int/lit8 p0, p0, 0x8

    :cond_2
    if-nez p4, :cond_3

    const/4 p1, 0x1

    if-ne p8, p1, :cond_4

    :cond_3
    or-int/lit8 p0, p0, 0x10

    :cond_4
    if-eqz p5, :cond_5

    or-int/lit8 p0, p0, 0x20

    :cond_5
    if-eqz p6, :cond_6

    const/high16 p1, -0x80000000

    or-int/2addr p0, p1

    :cond_6
    if-eqz p7, :cond_7

    or-int/lit8 p0, p0, 0x40

    :cond_7
    const/4 p1, 0x2

    if-ne p8, p1, :cond_8

    const-wide/32 p1, 0xc45e600

    .line 133
    invoke-static {p11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 132
    invoke-static {p1, p2, p10, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_8

    or-int/lit16 p0, p0, 0x80

    :cond_8
    if-eqz p9, :cond_9

    or-int/lit16 p0, p0, 0x200

    :cond_9
    return p0
.end method


# virtual methods
.method public final addDeferringRecord(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    .line 209
    iput-boolean p3, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    .line 210
    iput-boolean p4, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    invoke-direct {p3, p1, p2, p5}, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginDeferAddStartingWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    return-void
.end method

.method public createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 3

    .line 84
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    new-instance p1, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object p2

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    return-object p1

    :cond_0
    return-object v2
.end method

.method public createTaskSnapshotSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 5

    .line 143
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 145
    sget-object p0, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TaskSnapshotSurface.create: Failed to find task for activity="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopFullscreenMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 153
    sget-object p0, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TaskSnapshotSurface.create: no main window in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 156
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 161
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 166
    invoke-virtual {v2, v0, p1, v4, p2}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 167
    new-instance p1, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object p2

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/server/wm/StartingSurfaceController;->showStartingWindowFromDeferringActivities(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public isExceptionApp(Ljava/lang/String;ILjava/util/function/Supplier;)Z
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/SplashScreenExceptionList;->isException(Ljava/lang/String;ILjava/util/function/Supplier;)Z

    move-result p0

    return p0
.end method

.method public showStartingWindow(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/StartingSurfaceController;->addDeferringRecord(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_0
    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    const/4 p4, 0x1

    .line 194
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final showStartingWindowFromDeferringActivities(Landroid/app/ActivityOptions;)V
    .locals 11

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    .line 220
    iget-object v2, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_0

    .line 221
    sget-object v2, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No task exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    .line 222
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, p1

    goto :goto_1

    .line 225
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mPrev:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    iget-boolean v6, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    iget-boolean v7, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mSource:Lcom/android/server/wm/ActivityRecord;

    move-object v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 228
    iget-object p1, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    move-object p1, v10

    goto :goto_0

    .line 232
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
