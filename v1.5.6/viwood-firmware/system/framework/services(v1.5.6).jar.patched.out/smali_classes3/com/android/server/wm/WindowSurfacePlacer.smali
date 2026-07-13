.class public Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# instance fields
.field public mDeferDepth:I

.field public mDeferredRequests:I

.field public mInLayout:Z

.field public mLayoutRepeatCount:I

.field public final mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTraversalScheduled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 46
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 59
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;Lcom/android/server/wm/WindowSurfacePlacer-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public continueLayout(Z)V
    .locals 5

    .line 84
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 89
    const-string v2, "WindowManager"

    if-nez p1, :cond_3

    iget v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    if-lez v3, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cancel continueLayout "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    .line 90
    :cond_3
    :goto_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continueLayout hasChanges="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " deferredRequests="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {v1, v0}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    return-void
.end method

.method public debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 1

    .line 199
    iget p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Layouts looping: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPendingLayoutChanges = 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public deferLayout()V
    .locals 1

    .line 71
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mTraversalScheduled="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isInLayout()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return p0
.end method

.method public isLayoutDeferred()Z
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTraversalScheduled()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    return p0
.end method

.method public final performSurfacePlacement()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    return-void
.end method

.method public final performSurfacePlacement(Z)V
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    .line 117
    iget p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    return-void

    :cond_0
    const/4 p1, 0x6

    :cond_1
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, -0x1

    .line 126
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v0, :cond_2

    if-gtz p1, :cond_1

    :cond_2
    return-void
.end method

.method public performSurfacePlacementIfScheduled()V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_0
    return-void
.end method

.method public final performSurfacePlacementLoop()V
    .locals 6

    .line 130
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_1

    .line 131
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-nez p0, :cond_0

    .line 134
    const-string p0, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 135
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Recursive call!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 141
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 155
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 159
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_0

    .line 162
    :cond_4
    const-string v0, "WindowManager"

    const-string v3, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 164
    monitor-enter v0

    const-wide/16 v3, 0xfa

    .line 166
    :try_start_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 169
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 173
    :cond_5
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 175
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    .line 181
    :cond_6
    const-string v0, "WindowManager"

    const-string v1, "Performed 6 layouts in a row. Skipping"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_4

    .line 185
    :cond_7
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 188
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 193
    :goto_5
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 194
    const-string p0, "WindowManager"

    const-string v1, "Unhandled exception while laying out windows"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_6
    return-void
.end method

.method public requestTraversal()V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 221
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_2

    .line 222
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    .line 223
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Defer requestTraversal "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
