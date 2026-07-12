.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"


# instance fields
.field public final mAnimationDuration:Ljava/lang/Long;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManager:Lcom/android/server/input/InputManagerInternal;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/input/InputManagerInternal;Landroid/os/Handler;J)V
    .locals 0

    .line 2305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2306
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 2307
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2308
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 2309
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mInputManager:Lcom/android/server/input/InputManagerInternal;

    .line 2310
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 2311
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAnimationDuration()J
    .locals 2

    .line 2368
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 2319
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 2351
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getInputManager()Lcom/android/server/input/InputManagerInternal;
    .locals 0

    .line 2343
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mInputManager:Lcom/android/server/input/InputManagerInternal;

    return-object p0
.end method

.method public getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;
    .locals 0

    .line 2327
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public getWindowManager()Lcom/android/server/wm/WindowManagerInternal;
    .locals 0

    .line 2335
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public newValueAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    .line 2361
    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-object p0
.end method
