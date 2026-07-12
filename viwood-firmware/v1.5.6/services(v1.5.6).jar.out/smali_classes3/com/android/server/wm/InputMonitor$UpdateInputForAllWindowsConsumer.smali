.class public final Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mAddPipInputConsumerHandle:Z

.field public mAddRecentsAnimationInputConsumerHandle:Z

.field public mAddWallpaperInputConsumerHandle:Z

.field public mInDrag:Z

.field public mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateInputWindows(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->updateInputWindows(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .locals 6

    .line 609
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 610
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 623
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 624
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    if-eqz v1, :cond_1

    .line 625
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 626
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 627
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 626
    invoke-virtual {v3, v4}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 628
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 631
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v5}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 632
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/InputConsumerImpl;->reparent(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 633
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const v4, 0x7ffffffe

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;I)V

    .line 634
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 639
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    if-eqz v1, :cond_2

    .line 640
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/4 v3, 0x0

    .line 642
    invoke-virtual {v1, v3}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 644
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 645
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    .line 651
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInDrag:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_3

    .line 652
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragDropController;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 656
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 657
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getKeyInterceptionInfo()Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v3

    .line 656
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 660
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/InputMonitor;->populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V

    .line 661
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    return-void

    .line 611
    :cond_4
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 614
    invoke-static {v0, p1}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V

    .line 615
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 557
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final updateInputWindows(Z)V
    .locals 6

    .line 569
    const-string v0, "updateInputWindows"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "pip_input_consumer"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "wallpaper_input_consumer"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "recents_animation_input_consumer"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 575
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 576
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v4

    .line 577
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 579
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInDrag:Z

    .line 581
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputMonitor;->resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V

    .line 583
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmActiveRecentsTask(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$smgetWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/Task;

    .line 584
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 585
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmActiveRecentsLayerRef(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$smgetWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p1

    .line 589
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 590
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v3, v3, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 591
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 590
    invoke-virtual {v3, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 592
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 593
    iput-boolean v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 596
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1, p0, v5}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 597
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-static {p1, v0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$mupdateInputFocusRequest(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 599
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmUpdateInputWindowsImmediately(Lcom/android/server/wm/InputMonitor;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 600
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 601
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 604
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
