.class public final Lcom/android/server/input/SysfsNodeMonitor;
.super Ljava/lang/Object;
.source "SysfsNodeMonitor.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "SysfsNodeMonitor"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public final mUEventListenersByDeviceId:Landroid/util/SparseArray;

.field public final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method public static synthetic $r8$lambda$jsLQvX7rv9bx_iMb9KuwO8ozKj8(Lcom/android/server/input/SysfsNodeMonitor;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->lambda$startMonitoring$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/input/SysfsNodeMonitor;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNative(Lcom/android/server/input/SysfsNodeMonitor;)Lcom/android/server/input/NativeInputManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstartMonitoring(Lcom/android/server/input/SysfsNodeMonitor;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->startMonitoring(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopMonitoring(Lcom/android/server/input/SysfsNodeMonitor;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->stopMonitoring(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lcom/android/server/input/SysfsNodeMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Lcom/android/server/input/SysfsNodeMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/SysfsNodeMonitor$1;-><init>(Lcom/android/server/input/SysfsNodeMonitor;)V

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 61
    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p4, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/UEventManager;

    return-void
.end method

.method public static formatDevPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 132
    const-string v0, "/sys"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final synthetic lambda$startMonitoring$0(I)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->stopMonitoring(I)V

    return-void
.end method

.method public final startMonitoring(I)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    sget-boolean p0, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 99
    sget-object p0, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not listening to sysfs node changes for internal input device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getSysfsRootPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/input/SysfsNodeMonitor;->formatDevPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 106
    sget-boolean p0, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 107
    sget-object p0, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sysfs node not found for external input device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    .line 111
    :cond_3
    sget-boolean v1, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 112
    sget-object v1, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start listening to sysfs node changes for input device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_4
    new-instance v1, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    invoke-direct {v1, p0}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;-><init>(Lcom/android/server/input/SysfsNodeMonitor;)V

    .line 116
    iget-object v2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    iget-object v2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/UEventManager;

    invoke-interface {v2, v1, v0}, Lcom/android/server/input/UEventManager;->addListener(Lcom/android/server/input/UEventManager$UEventListener;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/SysfsNodeMonitor;I)V

    const-wide/32 p0, 0xea60

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stopMonitoring(I)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    sget-boolean v1, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 141
    sget-object v1, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop listening to sysfs node changes for input device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/UEventManager;

    invoke-interface {p0, v0}, Lcom/android/server/input/UEventManager;->removeListener(Lcom/android/server/input/UEventManager$UEventListener;)V

    return-void
.end method

.method public systemRunning()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    .line 69
    iget-object v1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget-object v2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 71
    iget-object v4, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-interface {v4, v3}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceAdded(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
