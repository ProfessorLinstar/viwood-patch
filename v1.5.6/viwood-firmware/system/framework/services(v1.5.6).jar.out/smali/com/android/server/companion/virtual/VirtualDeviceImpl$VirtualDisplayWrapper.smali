.class public final Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
.super Ljava/lang/Object;
.source "VirtualDeviceImpl.java"


# instance fields
.field public final mIsMirror:Z

.field public final mIsTrusted:Z

.field public final mToken:Landroid/hardware/display/IVirtualDisplayCallback;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/os/PowerManager$WakeLock;ZZ)V
    .locals 0

    .line 1893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 1895
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 1896
    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1897
    iput-boolean p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    .line 1898
    iput-boolean p5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1907
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public getToken()Landroid/hardware/display/IVirtualDisplayCallback;
    .locals 0

    .line 1926
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    return-object p0
.end method

.method public getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .locals 0

    .line 1902
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    return-object p0
.end method

.method public isMirror()Z
    .locals 0

    .line 1922
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    return p0
.end method

.method public isTrusted()Z
    .locals 0

    .line 1918
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    return p0
.end method

.method public releaseWakeLock()V
    .locals 1

    .line 1912
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
