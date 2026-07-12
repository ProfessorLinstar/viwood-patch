.class public Lcom/android/server/wm/InsetsPolicy$Host;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mName:Ljava/lang/String;

.field public final mTmpFloat9:[F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 790
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    .line 795
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    .line 796
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4

    .line 834
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 835
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 836
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 838
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 839
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method public dipToPx(I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    .line 0
    return-void
.end method

.method public dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    .line 0
    return-void
.end method

.method public dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    return-object p1
.end method

.method public dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 0

    .line 0
    return-object p2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 801
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootViewTitle()Ljava/lang/String;
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemBarsAppearance()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getSystemBarsBehavior()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAnimationCallbacks()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyInsetsChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 871
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public setSystemBarsAppearance(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 0
    return-void
.end method
