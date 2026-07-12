.class public final Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# instance fields
.field public final COMPONENT_NAME:Landroid/content/ComponentName;

.field public final mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

.field public final mConnectionId:I

.field public final mDefaultDisplay:Landroid/view/Display;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    .line 5326
    iput-object v10, v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5319
    new-instance v4, Landroid/content/ComponentName;

    const-string v0, "com.android.server.accessibility"

    const-string v2, "InteractionBridge"

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 5327
    new-instance v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    const/4 v0, 0x1

    .line 5328
    invoke-virtual {v5, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 5329
    iget v2, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v2, v2, 0x42

    .line 5330
    iput v2, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 5331
    invoke-virtual {v5, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setAccessibilityTool(Z)V

    .line 5333
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    move-object v3, v2

    .line 5334
    :try_start_0
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 5335
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5336
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetsIdCounter()I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfputsIdCounter(I)V

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmMainHandler(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmSecurityPolicy(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    move-result-object v9

    .line 5340
    invoke-virtual {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v11

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmWindowManagerService(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v12

    .line 5341
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetSystemActionPerformer(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v13

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmA11yWindowManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-result-object v14

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmActivityTaskManagerService(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v15

    move-object/from16 v16, p1

    invoke-direct/range {v0 .. v16}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 5348
    iget v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    iput v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 5350
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    const/4 v3, 0x0

    .line 5351
    invoke-static {v2, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V

    .line 5354
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "display"

    .line 5355
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 5356
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    return-void

    :catchall_0
    move-exception v0

    .line 5335
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z
    .locals 8

    .line 5391
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5396
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5397
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTempRect(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v3

    .line 5399
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 5400
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .line 5401
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 5404
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5405
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5407
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 5408
    new-instance v6, Landroid/view/MagnificationSpec;

    invoke-direct {v6}, Landroid/view/MagnificationSpec;-><init>()V

    .line 5409
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/MagnificationSpec;

    invoke-virtual {v6, v5}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 5412
    invoke-virtual {v6}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5413
    iget v5, v6, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v5, v5

    float-to-int v5, v5

    iget v7, v6, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v7, v7

    float-to-int v7, v7

    invoke-virtual {v3, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 5415
    iget v5, v6, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 5419
    :cond_2
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTempRect1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 5420
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5422
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 5424
    :cond_3
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5425
    monitor-exit v2

    return v1

    .line 5429
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTempPoint(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    move-result-object v0

    .line 5430
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5431
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v1, v1, p0, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-nez p0, :cond_5

    .line 5433
    monitor-exit v2

    return v1

    .line 5436
    :cond_5
    iget p0, v4, Landroid/graphics/Point;->x:I

    iget v0, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Point;->set(II)V

    .line 5437
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 5444
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5445
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmA11yWindowManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getFocusedWindowId(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    .line 5448
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5450
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5451
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    .line 5450
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .line 5455
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1

    .line 5383
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5384
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5387
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
