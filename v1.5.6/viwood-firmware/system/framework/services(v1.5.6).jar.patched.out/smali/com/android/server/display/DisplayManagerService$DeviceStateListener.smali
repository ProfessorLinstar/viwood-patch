.class public Lcom/android/server/display/DisplayManagerService$DeviceStateListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 6169
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 3

    .line 6173
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 6178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 6179
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 6180
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6182
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    .line 6183
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V

    .line 6184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
