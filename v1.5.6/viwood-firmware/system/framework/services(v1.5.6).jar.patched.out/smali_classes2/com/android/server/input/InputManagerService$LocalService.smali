.class public final Lcom/android/server/input/InputManagerService$LocalService;
.super Lcom/android/server/input/InputManagerInternal;
.source "InputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 3681
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Lcom/android/server/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3828
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->-$$Nest$maddKeyboardLayoutAssociation(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 0

    .line 3781
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public getCursorPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 3742
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getMouseCursorPosition(I)[F

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3743
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3746
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 3744
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to get mouse cursor position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLastUsedInputDeviceId()I
    .locals 0

    .line 3844
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->getLastUsedInputDeviceId()I

    move-result p0

    return p0
.end method

.method public handleKeyGestureInKeyGestureController(I[III)V
    .locals 0

    .line 3857
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[III)V

    return-void
.end method

.method public notifyInputMethodConnectionActive(Z)V
    .locals 0

    .line 3776
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInputMethodConnectionIsActive(Z)V

    return-void
.end method

.method public notifyKeyGestureCompleted(I[III)V
    .locals 0

    .line 3850
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/KeyGestureController;->notifyKeyGestureCompleted(I[III)V

    return-void
.end method

.method public notifyUserActivity()V
    .locals 0

    .line 3798
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->notifyUserActivity()V

    return-void
.end method

.method public onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .line 3793
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardLayoutManager(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyboardLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->onInputMethodSubtypeChanged(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public registerLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 0

    .line 3766
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 0

    .line 3873
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/KeyGestureController;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    return-void
.end method

.method public removeKeyboardLayoutAssociation(Ljava/lang/String;)V
    .locals 0

    .line 3834
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mremoveKeyboardLayoutAssociation(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public setAccessibilityPointerIconScaleFactor(IF)V
    .locals 0

    .line 3862
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setAccessibilityPointerIconScaleFactor(IF)V

    return-void
.end method

.method public setDisplayEligibilityForPointerCapture(IZ)V
    .locals 0

    .line 3756
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayEligibilityForPointerCapture(Lcom/android/server/input/InputManagerService;IZ)V

    return-void
.end method

.method public setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V
    .locals 5

    .line 3695
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 3696
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3697
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3698
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .line 3702
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3705
    :cond_1
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p1

    .line 3706
    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 3705
    invoke-interface {p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setNonInteractiveDisplays([I)V

    .line 3707
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmBatteryController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/BatteryController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/input/BatteryController;->onInteractiveChanged(Z)V

    .line 3708
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->onInteractiveChanged(Z)V

    return-void
.end method

.method public setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V
    .locals 0

    .line 3689
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayTopologyInternal(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayTopologyGraph;)V

    return-void
.end method

.method public setDisplayViewports(Ljava/util/List;)V
    .locals 0

    .line 3684
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayViewportsInternal(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    return-void
.end method

.method public setMouseScalingEnabled(ZI)V
    .locals 0

    .line 3751
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetMouseScalingEnabled(Lcom/android/server/input/InputManagerService;ZI)V

    return-void
.end method

.method public setPointerIconVisible(ZI)V
    .locals 0

    .line 3761
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetPointerIconVisible(Lcom/android/server/input/InputManagerService;ZI)V

    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .locals 2

    .line 3720
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3723
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 3724
    :try_start_1
    const-string p0, "1"

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_0
    const-string p0, "0"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3728
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 3726
    :goto_1
    :try_start_2
    const-string p1, "InputManager"

    const-string v1, "Unable to setPulseGestureEnabled"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3728
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3729
    throw p0

    :cond_1
    :goto_3
    return-void
.end method

.method public setStylusButtonMotionEventsEnabled(Z)V
    .locals 0

    .line 3839
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setStylusButtonMotionEventsEnabled(Z)V

    return-void
.end method

.method public setTypeAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3817
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setTypeAssociationInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
    .locals 0

    .line 3736
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method

.method public unsetTypeAssociation(Ljava/lang/String;)V
    .locals 0

    .line 3822
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->unsetTypeAssociationInternal(Ljava/lang/String;)V

    return-void
.end method
