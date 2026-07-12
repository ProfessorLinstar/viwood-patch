.class public final Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "ImeInsetsSourceProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImeInsetsSourceProvider"


# instance fields
.field public mFrozen:Z

.field public mGivenInsetsReady:Z

.field public mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

.field public mImeShowing:Z

.field public mLastDrawn:Z

.field public final mLastSource:Landroid/view/InsetsSource;

.field public mServerVisible:Z

.field public mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;


# direct methods
.method public static synthetic $r8$lambda$wOvc9YXb_LfdOyZfFS6DN94RSLs(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Lcom/android/server/wm/InsetsControlTarget;Z)V
    .locals 2

    .line 462
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, p0, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 464
    invoke-interface {p2}, Lcom/android/server/wm/InsetsControlTarget;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2, p3, p0}, Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;->onImeRequestedChanged(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 65
    new-instance p1, Landroid/view/InsetsSource;

    sget p2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/view/InsetsSource;-><init>(II)V

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    return-void
.end method

.method public static isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 1

    .line 794
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 796
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 1

    .line 789
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 816
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 817
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->willCloseOrEnterPip()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abortShowImePostLayout()V
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x5a9e73097f00c6dbL    # -1.265973829348816E-128

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v2, 0x20

    .line 627
    const-string v0, "WMS.showImePostLayout"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v0, 0x1

    .line 628
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    .line 629
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v2, 0x2b

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 631
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->resetShowImePostLayout()V

    return-void
.end method

.method public checkAndStartShowImePostLayout()V
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isScheduledAndReadyToShowIme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 596
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 597
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 599
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p0, v0}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 834
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 836
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    const-string v0, "mImeShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 838
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 839
    const-string v0, " mLastDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 840
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    const-string p2, "showImePostLayout pending for mImeRequester="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 844
    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 845
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    const-string p0, "showImePostLayout not scheduled, mImeRequester=null"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 851
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 2

    .line 856
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 857
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 859
    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-wide v0, 0x10b00000004L

    .line 861
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 863
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAndClearStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object v0
.end method

.method public getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .locals 6

    .line 201
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 202
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 203
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 211
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p1, :cond_1

    .line 213
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topStartingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 215
    iget-object p1, v4, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p1}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceControl;->setSkipAnimationOnce(Z)V

    :cond_3
    if-eqz v0, :cond_6

    .line 222
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->getAndClearStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    if-nez p0, :cond_5

    .line 225
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 p1, 0x3

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x60d73407f00dc92fL    # -1.4110003621359615E-158

    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 230
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x6

    const/16 v2, 0x2e

    invoke-interface {p0, v1, p1, v2, v3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    .line 234
    :cond_5
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    const/16 v1, 0x37

    invoke-interface {p1, p0, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 236
    invoke-virtual {v0, p0}, Landroid/view/InsetsSourceControl;->setImeStatsToken(Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_6
    return-object v0
.end method

.method public final invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 7

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOnImeRequestedChangedListener:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    if-eqz v0, :cond_3

    const/16 v1, 0x3f

    if-eqz p1, :cond_2

    .line 452
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    const/16 v4, 0x3b

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-interface {p2, v3, v6, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    .line 459
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 461
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v0, p1, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Lcom/android/server/wm/InsetsControlTarget;Z)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 468
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    .line 473
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/16 p1, 0x3c

    invoke-interface {p0, p2, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public final isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 0

    .line 800
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isImeInputTarget(Lcom/android/server/wm/InsetsTarget;)Z
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isImeShowing()Z
    .locals 0

    .line 879
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return p0
.end method

.method public isLeashReadyForDispatching()Z
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 162
    :goto_1
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isLeashReadyForDispatching()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isScheduledAndReadyToShowIme()Z
    .locals 7

    .line 652
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_2

    return v1

    .line 665
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 669
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    .line 678
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    if-nez v2, :cond_5

    return v1

    .line 683
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    if-eq v2, v3, :cond_6

    return v1

    .line 687
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/InsetsStateController;->hasPendingControls(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v1

    .line 691
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;->getLeash(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/SurfaceControl;

    move-result-object v2

    if-nez v2, :cond_8

    return v1

    .line 696
    :cond_8
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_a

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x5c027c1947a5c1abL    # -2.537980424092208E-135

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v5, v6, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 700
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 701
    invoke-static {v2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 703
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeInputTarget(Lcom/android/server/wm/InsetsTarget;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 704
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->sameAsImeControlTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    return v1

    :cond_c
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_2
    return v1

    .line 667
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "IME insets must be provided by a window."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_3
    return v1
.end method

.method public isSurfaceVisible()Z
    .locals 5

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isSurfaceVisible()Z

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    .line 180
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    .line 184
    iget-boolean p0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v4

    .line 185
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    if-eqz p0, :cond_2

    if-nez v2, :cond_2

    return v4

    :cond_2
    return v0
.end method

.method public final isTargetChangedWithinActivity(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 2

    .line 822
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_1

    .line 827
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 828
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final logIsScheduledAndReadyToShowIme(Z)V
    .locals 7

    .line 741
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 742
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    .line 743
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    const-string v5, "showImePostLayout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "aborted"

    goto :goto_1

    :cond_1
    const-string p1, "cancelled"

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string p1, ", isScheduledAndReadyToShowIme: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isScheduledAndReadyToShowIme()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 747
    const-string p1, ", mImeRequester: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 748
    const-string p1, ", serverVisible: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 749
    const-string p1, ", frozen: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 750
    const-string p1, ", mWindowContainer is: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    const-string v5, "null"

    const-string v6, "non-null"

    if-eqz p1, :cond_2

    move-object p1, v6

    goto :goto_2

    :cond_2
    move-object p1, v5

    :goto_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string p1, ", windowState: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 753
    const-string p1, ", isDrawn: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 754
    const-string p1, ", mGivenInsetsPending: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 756
    :cond_3
    const-string p1, ", dcTarget: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 757
    const-string p1, ", controlTarget: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 758
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p1, :cond_9

    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    .line 759
    const-string p1, "\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string p1, "controlTarget == DisplayContent.controlTarget: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    const/4 v0, 0x1

    if-ne v3, p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 762
    const-string p1, ", hasPendingControls: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/InsetsStateController;->hasPendingControls(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsSourceProvider;->getLeash(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_5

    move v2, v0

    .line 765
    :cond_5
    const-string p1, ", leash is: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    move-object p1, v6

    goto :goto_4

    :cond_6
    move-object p1, v5

    :goto_4
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_8

    .line 767
    const-string p1, ", control is: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_7

    move-object v5, v6

    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string p1, ", mIsLeashInitialized: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 770
    :cond_8
    const-string p1, ", isImeLayeringTarget: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 772
    const-string p1, ", isAboveImeLayeringTarget: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 774
    const-string p1, ", isImeFallbackTarget: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 776
    const-string p1, ", isImeInputTarget: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeInputTarget(Lcom/android/server/wm/InsetsTarget;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 778
    const-string p1, ", sameAsImeControlTarget: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->sameAsImeControlTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 781
    :cond_9
    sget-object p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInputTargetChanged(Lcom/android/server/wm/InputTarget;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 395
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v1

    .line 396
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    if-eqz v1, :cond_1

    const/16 v1, 0x38

    goto :goto_1

    :cond_1
    const/16 v1, 0x39

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-interface {v2, v3, v5, v1, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 402
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_2
    return-void
.end method

.method public onPostLayout()V
    .locals 9

    .line 100
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    .line 101
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 106
    iget-boolean v5, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    .line 112
    iget-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    const/16 v6, 0x32

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v5, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v1, :cond_4

    .line 114
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x4ae62e73b9b83516L    # 6.639253577910478E52

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v7, v8, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 117
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 118
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {v0, v1, v6}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    return-void

    :cond_4
    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    if-eqz v1, :cond_6

    if-eqz v5, :cond_6

    .line 127
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, -0x7cfd90b104eacc05L

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v7, v8, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 129
    :cond_5
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {v0, v1, v6}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 131
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void

    :cond_6
    if-eqz v0, :cond_8

    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v0

    if-nez v0, :cond_8

    .line 133
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x294ded5644b4cb63L    # -4.244498087820314E109

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 136
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    :cond_8
    return-void
.end method

.method public final onSourceChanged()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->set(Landroid/view/InsetsSource;)V

    .line 540
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 541
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveImeStatsToken(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 5

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    .line 723
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x32422c4c521ecab5L    # -3.141145557157463E66

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x2b

    if-eqz p1, :cond_2

    .line 725
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, v1, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 727
    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void

    .line 729
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p1, 0x0

    .line 731
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method

.method public reportImeDrawnForOrganizer()V
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    :cond_0
    return-void
.end method

.method public final reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 2

    .line 517
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 523
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->reportImeDrawnOnTask(Lcom/android/server/wm/Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final reportImeDrawnForOrganizerIfNeeded(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 3

    .line 499
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 505
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 506
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/16 v2, 0x40

    .line 507
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    return-void

    .line 513
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    return-void
.end method

.method public final reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 4

    .line 414
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v0

    const/16 v1, 0x31

    if-eqz p2, :cond_0

    .line 416
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 418
    invoke-interface {p2, v0, p3}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 419
    :cond_0
    instance-of p2, p1, Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p2, :cond_2

    .line 424
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 425
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 424
    invoke-virtual {p2, v3}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    .line 428
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 430
    invoke-interface {p2, v0, p3}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 434
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 437
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_2
    return-void
.end method

.method public final resetShowImePostLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 636
    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 637
    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method

.method public final sameAsImeControlTarget(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 0

    .line 808
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    if-ne p0, p1, :cond_1

    .line 810
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x20

    .line 556
    const-string v0, "WMS.showImePostLayout"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    .line 561
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v3, 0x12

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 563
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isTargetChangedWithinActivity(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    .line 564
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 565
    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_2

    .line 568
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0xae9b1cc0d74cbe1L

    const/4 p2, 0x0

    invoke-static {p1, v2, v3, v1, p2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkAndStartShowImePostLayout()V

    return-void

    .line 576
    :cond_2
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x24905cd2effc3fc2L

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 578
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public setClientVisible(Z)V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    .line 245
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_0

    .line 252
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_0
    return-void
.end method

.method public setFrozen(Z)V
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez p1, :cond_1

    .line 288
    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setImeShowing(Z)V
    .locals 0

    .line 871
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return-void
.end method

.method public setServerVisible(Z)V
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    if-eq v0, p1, :cond_0

    .line 260
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    if-nez p1, :cond_0

    .line 263
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez v0, :cond_1

    .line 270
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    :cond_1
    return-void
.end method

.method public updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 6

    .line 353
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    const/16 v1, 0x43

    if-eq p1, v0, :cond_2

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeInputTarget(Lcom/android/server/wm/InsetsTarget;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_0

    .line 359
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x39db2d8160933509L    # 5.359867179729214E-30

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, v5, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 364
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_0
    return v3

    .line 370
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 378
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 380
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return p1

    .line 383
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return p1
.end method

.method public updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 313
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 320
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    if-eqz p1, :cond_2

    .line 324
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, p2, :cond_2

    .line 328
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p2

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_1

    .line 330
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v0

    .line 331
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 335
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 338
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 341
    :cond_2
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 p3, 0x3

    aget-boolean p2, p2, p3

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p3, 0x0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x3e82738122d23a38L    # 1.3747207231293894E-7

    invoke-static {p2, v0, v1, p3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public updateSourceFrame(Landroid/graphics/Rect;)V
    .locals 0

    .line 294
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method

.method public updateVisibility()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    .line 301
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 303
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizerIfNeeded(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method
