.class public Lcom/android/server/power/PowerManagerService$DeviceStateListener;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public mDeviceState:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 7781
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 7782
    iput p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 8

    .line 7786
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    .line 7787
    iget v0, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    if-eq v0, p1, :cond_0

    .line 7788
    iput p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    .line 7791
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    const/4 v2, 0x0

    const/4 v5, 0x6

    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityInternal(Lcom/android/server/power/PowerManagerService;IJIII)V

    :cond_0
    return-void
.end method
