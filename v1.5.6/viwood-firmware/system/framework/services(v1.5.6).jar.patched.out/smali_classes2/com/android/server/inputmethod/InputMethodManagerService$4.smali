.class public Lcom/android/server/inputmethod/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$im:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V
    .locals 0

    .line 4486
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 1

    .line 4514
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4515
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$maddStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 4516
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onInputDeviceAdded(I)V
    .locals 1

    .line 4489
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4490
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$smisStylusDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4491
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;->add(I)V

    :cond_0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    .line 4502
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4506
    :cond_0
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$smisStylusDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4507
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;->add(I)V

    return-void

    .line 4509
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;->remove(I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 4497
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;->remove(I)V

    return-void
.end method

.method public final remove(I)V
    .locals 1

    .line 4520
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4521
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mremoveStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 4522
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
