.class public Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;
.super Ljava/lang/Object;
.source "InputController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

.field public final synthetic val$associatedDisplayId:I

.field public final synthetic val$deviceName:Ljava/lang/String;

.field public final synthetic val$productId:I

.field public final synthetic val$this$0:Lcom/android/server/companion/virtual/InputController;

.field public final synthetic val$vendorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/InputController$WaitForDevice;Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;III)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$this$0:Lcom/android/server/companion/virtual/InputController;

    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$vendorId:I

    iput p5, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$productId:I

    iput p6, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$associatedDisplayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMatchingDevice(I)Z
    .locals 4

    .line 720
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    .line 722
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 726
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v0

    .line 727
    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    iget v3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$vendorId:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v0

    iget v2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$productId:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 730
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result p1

    iget p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$associatedDisplayId:I

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 704
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->onInputDeviceChanged(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->isMatchingDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    invoke-static {v0, p1}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->-$$Nest$fputmInputDeviceId(Lcom/android/server/companion/virtual/InputController$WaitForDevice;I)V

    .line 715
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    invoke-static {p0}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->-$$Nest$fgetmDeviceAddedLatch(Lcom/android/server/companion/virtual/InputController$WaitForDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method
