.class public Lcom/android/server/accessibility/MouseKeysInterceptor;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MouseKeysInterceptor.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z

.field public static final MOUSE_POINTER_MOVEMENT_STEP:F = 1.8f

.field public static final MOUSE_SCROLL_STEP:F = 0.2f


# instance fields
.field public mActiveInputDeviceId:I

.field public mActiveMoveKey:I

.field public mActiveScrollKey:I

.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mCreateVirtualMouseThread:Ljava/lang/Thread;

.field public final mDeviceKeyCodeMap:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mLastTimeKeyActionPerformed:J

.field public mScrollToggleOn:Z

.field public mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

.field public mVirtualMouse:Landroid/hardware/input/VirtualMouse;


# direct methods
.method public static synthetic $r8$lambda$bmlvUec6jxm8e9vAdANaoGIFYyk(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$onKeyEvent$1(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSqd1rgrVUZV5NMqrkklERpGuZ0(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wk5OZrrrRXLaJvhXFs3Q-lNgiRo(Lcom/android/server/accessibility/MouseKeysInterceptor;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$onDestroy$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-string v0, "MouseKeysInterceptor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/hardware/input/InputManager;Landroid/os/Looper;I)V
    .locals 2

    .line 218
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    .line 103
    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 114
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    .line 123
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    .line 219
    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 220
    iput-object p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    .line 221
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    .line 226
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    .line 229
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 232
    invoke-virtual {p2, p0, p1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final createVirtualMouse(I)Landroid/hardware/input/VirtualMouse;
    .locals 3

    .line 461
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 462
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 463
    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder;

    invoke-direct {v1}, Landroid/companion/virtual/VirtualDeviceParams$Builder;-><init>()V

    const-string v2, "Mouse Keys Virtual Device"

    .line 464
    invoke-virtual {v1, v2}, Landroid/companion/virtual/VirtualDeviceParams$Builder;->setName(Ljava/lang/String;)Landroid/companion/virtual/VirtualDeviceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams$Builder;->build()Landroid/companion/virtual/VirtualDeviceParams;

    move-result-object v1

    .line 463
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->createVirtualDevice(Landroid/companion/virtual/VirtualDeviceParams;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    .line 465
    new-instance p0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-direct {p0}, Landroid/hardware/input/VirtualMouseConfig$Builder;-><init>()V

    const-string v1, "Mouse Keys Virtual Mouse"

    .line 467
    invoke-virtual {p0, v1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 468
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 469
    invoke-virtual {p0}, Landroid/hardware/input/VirtualMouseConfig$Builder;->build()Landroid/hardware/input/VirtualMouseConfig;

    move-result-object p0

    .line 465
    invoke-virtual {v0, p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 569
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 576
    const-string p0, "MouseKeysInterceptor"

    const-string p1, "Unexpected message type"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 573
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    iget p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    invoke-virtual {p0, v3, v4, p1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->handleMouseMessage(JII)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    iget p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->handleMouseMessage(JII)V

    :goto_0
    return v1
.end method

.method public handleMouseMessage(JII)V
    .locals 4

    .line 602
    iget-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 604
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMousePointerAction(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 606
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMouseScrollAction(I)V

    .line 608
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    :cond_2
    const/4 p1, -0x1

    if-eq p3, p1, :cond_3

    .line 612
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public initializeDeviceToEnumMap(Landroid/view/InputDevice;)V
    .locals 7

    .line 200
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    .line 201
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 202
    invoke-static {}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 203
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v6

    .line 204
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final isMouseButtonKey(ILandroid/view/InputDevice;)Z
    .locals 0

    .line 443
    sget-object p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 444
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isMouseKey(II)Z
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 439
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final isMouseScrollKey(ILandroid/view/InputDevice;)Z
    .locals 0

    .line 448
    sget-object p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 449
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 450
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 451
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$new$0(I)V
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->createVirtualMouse(I)Landroid/hardware/input/VirtualMouse;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    return-void
.end method

.method public final synthetic lambda$onDestroy$2()V
    .locals 2

    const/4 v0, -0x1

    .line 621
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 622
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    const-wide/16 v0, 0x0

    .line 623
    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 624
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final synthetic lambda$onKeyEvent$1(Landroid/view/KeyEvent;I)V
    .locals 0

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->onKeyEventInternal(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 628
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    if-eqz p0, :cond_0

    .line 629
    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->close()V

    :cond_0
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->initializeDeviceToEnumMap(Landroid/view/InputDevice;)V

    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5

    .line 482
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MouseKeysInterceptor.onKeyEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onKeyEventInternal(Landroid/view/KeyEvent;I)V
    .locals 6

    .line 494
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 495
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    .line 497
    iget-object v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 499
    iget-object v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 500
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->initializeDeviceToEnumMap(Landroid/view/InputDevice;)V

    .line 503
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseKey(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 505
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    :cond_2
    const/4 p2, 0x2

    .line 506
    const-string v4, "MouseKeysInterceptor"

    const/4 v5, -0x1

    if-eqz v0, :cond_a

    .line 507
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-ne v2, v0, :cond_4

    .line 508
    iget-boolean p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    .line 509
    sget-boolean p1, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p1, :cond_9

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Scroll toggle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-eqz p0, :cond_3

    const-string p0, "ON"

    goto :goto_1

    :cond_3
    const-string p0, "OFF"

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 512
    :cond_4
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-ne v2, v0, :cond_5

    const/16 p1, 0xb

    .line 513
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    return-void

    .line 517
    :cond_5
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-ne v2, v0, :cond_6

    const/16 p1, 0xc

    .line 518
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    return-void

    .line 522
    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseButtonKey(ILandroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 523
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMouseButtonAction(I)V

    return-void

    .line 524
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseScrollKey(ILandroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 527
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    if-ne v0, v5, :cond_9

    .line 528
    iput v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    .line 529
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 530
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 536
    :cond_8
    iget p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    if-ne p2, v5, :cond_9

    .line 537
    iput v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 539
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void

    .line 544
    :cond_a
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    if-ne v0, v2, :cond_b

    .line 546
    iput v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 547
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 548
    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    if-ne v0, v2, :cond_c

    .line 550
    iput v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    .line 551
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 553
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dropping event with key code: \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\', with no matching down event from deviceId = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 553
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final performMouseButtonAction(I)V
    .locals 3

    .line 340
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v2, :cond_2

    const/16 v1, 0xb

    .line 348
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    const/16 v1, 0xc

    .line 350
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    .line 353
    :cond_2
    sget-boolean p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 354
    const-string p0, "MouseKeysInterceptor"

    if-ne v0, v2, :cond_3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Button code is unknown for mouse key event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 358
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performed mouse key event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for button action"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final performMousePointerAction(I)V
    .locals 6

    .line 389
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, -0x4019999a    # -1.8f

    const v2, 0x3fe66666    # 1.8f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v4

    goto :goto_2

    .line 403
    :pswitch_0
    invoke-static {v3}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v0

    div-float v1, v2, v0

    .line 404
    invoke-static {v3}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v0

    :goto_0
    div-float v0, v2, v0

    move v4, v0

    goto :goto_2

    .line 398
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-nez v0, :cond_0

    move v1, v4

    move v4, v2

    goto :goto_2

    .line 394
    :pswitch_2
    invoke-static {v3}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v0

    div-float/2addr v1, v0

    .line 395
    invoke-static {v3}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v0

    goto :goto_0

    :goto_1
    :pswitch_3
    move v1, v2

    goto :goto_2

    .line 422
    :pswitch_4
    invoke-static {v3}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v0

    div-float/2addr v2, v0

    .line 423
    invoke-static {v3}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v0

    div-float/2addr v1, v0

    move v4, v1

    goto :goto_1

    .line 417
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-nez v0, :cond_0

    move v5, v4

    move v4, v1

    move v1, v5

    goto :goto_2

    .line 413
    :pswitch_6
    invoke-static {v3}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    .line 414
    invoke-static {v3}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v2

    div-float/2addr v1, v2

    move v4, v1

    move v1, v0

    .line 430
    :goto_2
    :pswitch_7
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseRelativeEvent(FF)V

    .line 431
    sget-boolean p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Performed mouse key event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for relative pointer movement (x="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MouseKeysInterceptor"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performMouseScrollAction(I)V
    .locals 6

    .line 295
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    const v4, -0x41b33333    # -0.2f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_2
    move v5, v3

    move v3, v2

    move v2, v5

    .line 318
    :cond_3
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseScrollEvent(FF)V

    .line 319
    sget-boolean p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Performed mouse key event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for scroll action with axis movement (x="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MouseKeysInterceptor"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final sendVirtualMouseButtonEvent(II)V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 263
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;-><init>()V

    .line 264
    invoke-virtual {v0, p2}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->setAction(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    move-result-object p2

    .line 265
    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->setButtonCode(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->build()Landroid/hardware/input/VirtualMouseButtonEvent;

    move-result-object p1

    .line 263
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouse;->sendButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)V

    return-void
.end method

.method public final sendVirtualMouseRelativeEvent(FF)V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 253
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;-><init>()V

    .line 254
    invoke-virtual {v0, p1}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->setRelativeX(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p1, p2}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->setRelativeY(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->build()Landroid/hardware/input/VirtualMouseRelativeEvent;

    move-result-object p1

    .line 253
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouse;->sendRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)V

    return-void
.end method

.method public final sendVirtualMouseScrollEvent(FF)V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 273
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;-><init>()V

    .line 274
    invoke-virtual {v0, p1}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->setXAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1, p2}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->setYAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->build()Landroid/hardware/input/VirtualMouseScrollEvent;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouse;->sendScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)V

    return-void
.end method

.method public final waitForVirtualMouseCreation()V
    .locals 1

    .line 243
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 246
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
