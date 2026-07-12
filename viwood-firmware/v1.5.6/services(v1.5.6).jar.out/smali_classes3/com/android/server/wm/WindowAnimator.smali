.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# instance fields
.field public mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

.field public final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public mAnimationFrameCallbackScheduled:Z

.field public mChoreographer:Landroid/view/Choreographer;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTime:J

.field public final mExecutor:Landroid/os/HandlerExecutor;

.field public mInitialized:Z

.field public mLastRootAnimating:Z

.field public mNotifyWhenNoAnimation:Z

.field public mPendingState:I

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic $r8$lambda$AS_wbK9i-bc6ocCFop7s9PnXP80(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->lambda$new$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$W57Ag5fzVY7lre5WxW-Fd7sotY8(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YA-_zT1Nyp9vmAAkWN_rtDVYlnE(Lcom/android/server/wm/WindowAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimator;->lambda$animate$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 104
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 105
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 106
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 107
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 109
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mExecutor:Landroid/os/HandlerExecutor;

    .line 111
    new-instance p1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    return-void
.end method

.method public final animate(J)V
    .locals 10

    .line 133
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide/32 v1, 0xf4240

    .line 142
    div-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 143
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const-string p2, "WindowManager"

    if-eqz p1, :cond_1

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!! animate: entry time="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v1, 0x2

    aget-boolean p1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x4a6312243002c0e8L    # -1.9330192995483828E-50

    invoke-static {p1, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 150
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    .line 152
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 154
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_3

    .line 156
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 159
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator()V

    .line 160
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move v6, v3

    goto :goto_4

    :cond_3
    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_7

    .line 164
    :try_start_1
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    .line 165
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 166
    iget v8, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 167
    invoke-virtual {p1, v8}, Lcom/android/server/wm/AccessibilityController;->recomputeMagnifiedRegionAndDrawMagnifiedRegionBorderIfNeeded(I)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_2
    const/4 v8, 0x4

    const/4 v9, -0x1

    .line 171
    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x1

    .line 173
    iget-boolean v8, v7, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    if-nez v8, :cond_6

    .line 174
    iput-boolean v6, v7, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    .line 175
    invoke-virtual {v7, v6}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V

    goto :goto_3

    .line 177
    :cond_5
    iget-boolean v8, v7, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    if-eqz v8, :cond_6

    .line 178
    iput-boolean v3, v7, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    .line 179
    invoke-virtual {v7, v3}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V

    .line 181
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->cancelAnimation()V

    .line 186
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p1}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 191
    :goto_4
    const-string v4, "Unhandled exception in Window Manager"

    invoke-static {p2, v4, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_8
    :goto_5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 199
    :cond_9
    const-string v0, "animating"

    const-wide/16 v4, 0x20

    if-eqz v6, :cond_a

    iget-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez v7, :cond_a

    .line 200
    invoke-static {v4, v5, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_a
    if-nez v6, :cond_b

    .line 202
    iget-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-eqz v7, :cond_b

    .line 203
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 204
    invoke-static {v4, v5, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 206
    :cond_b
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 210
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 211
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mExecutor:Landroid/os/HandlerExecutor;

    new-instance v8, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowAnimator;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 221
    :cond_c
    const-string v0, "applyTransaction"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 223
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 224
    iput v3, p0, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const-string v4, "WindowAnimator"

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowTracing;->logState(Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x376c11a3a0d0c7a2L    # -4.340608548080452E41

    invoke-static {v0, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 227
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    .line 231
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz p0, :cond_e

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!!! animate: exit hasPendingLayoutChanges="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    return-void
.end method

.method public applyPendingTransaction()V
    .locals 6

    .line 274
    const-string v0, "applyPendingTransaction"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    .line 275
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    .line 276
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 278
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v0, v3, :cond_1

    .line 281
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 285
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final cancelAnimation()V
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 242
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_1

    .line 250
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCurrentTime="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget-wide p2, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {p2, p3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isAnimationScheduled()Z
    .locals 0

    .line 270
    iget-boolean p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    return p0
.end method

.method public final synthetic lambda$animate$2(Ljava/util/ArrayList;)V
    .locals 3

    .line 212
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 215
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 218
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final synthetic lambda$new$0()V
    .locals 1

    .line 108
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public final synthetic lambda$new$1(J)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 113
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 115
    const-string v1, "wmAnimate"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animate(J)V

    .line 119
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 121
    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez p1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 124
    :cond_0
    :goto_0
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

.method public ready()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    return-void
.end method

.method public scheduleAnimation()V
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
