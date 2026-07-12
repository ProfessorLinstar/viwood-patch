.class public Lcom/android/server/wm/WindowManagerThreadPriorityBooster;
.super Lcom/android/server/ThreadPriorityBooster;
.source "WindowManagerThreadPriorityBooster.java"


# instance fields
.field public final mAnimationThreadId:I

.field public final mLock:Ljava/lang/Object;

.field public final mSurfaceAnimationThreadId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x4

    const/4 v1, 0x5

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/android/server/ThreadPriorityBooster;-><init>(II)V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    .line 49
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    return-void
.end method


# virtual methods
.method public boost()V
    .locals 2

    .line 57
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 58
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/android/server/ThreadPriorityBooster;->boost()V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 69
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/android/server/ThreadPriorityBooster;->reset()V

    :cond_1
    :goto_0
    return-void
.end method
