.class public Lcom/android/server/input/SysfsNodeMonitor$1;
.super Ljava/lang/Object;
.source "SysfsNodeMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/SysfsNodeMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/input/SysfsNodeMonitor;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$mstartMonitoring(Lcom/android/server/input/SysfsNodeMonitor;I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$mstopMonitoring(Lcom/android/server/input/SysfsNodeMonitor;I)V

    return-void
.end method
