.class public Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public isInRearDisplayOuterDefaultState()Z
    .locals 1

    .line 1075
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    if-eqz p0, :cond_0

    const/16 v0, 0x3e9

    filled-new-array {v0}, [I

    move-result-object v0

    .line 1076
    invoke-virtual {p0, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    return-void
.end method
