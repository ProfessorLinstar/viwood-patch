.class public Lcom/android/server/companion/virtual/InputController$WaitForDevice;
.super Ljava/lang/Object;
.source "InputController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mDeviceName:Ljava/lang/String;

.field public mInputDeviceId:I

.field public final mListener:Landroid/hardware/input/InputManager$InputDeviceListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceAddedLatch(Lcom/android/server/companion/virtual/InputController$WaitForDevice;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInputDeviceId(Lcom/android/server/companion/virtual/InputController$WaitForDevice;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;III)V
    .locals 8

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x2

    .line 697
    iput v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    .line 700
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceName:Ljava/lang/String;

    .line 701
    new-instance v1, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;-><init>(Lcom/android/server/companion/virtual/InputController$WaitForDevice;Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;III)V

    iput-object v1, v2, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 733
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p0

    invoke-static {v3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/InputController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 764
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public waitForDeviceCreation()I
    .locals 5

    .line 744
    const-string v0, " to be created."

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 754
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return v0

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual input device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was created with an invalid id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timed out waiting for virtual input device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 750
    new-instance v2, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted while waiting for virtual input device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
