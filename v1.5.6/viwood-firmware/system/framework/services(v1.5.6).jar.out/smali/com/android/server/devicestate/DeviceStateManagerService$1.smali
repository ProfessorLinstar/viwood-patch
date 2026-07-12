.class public Lcom/android/server/devicestate/DeviceStateManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "DeviceStateManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mshouldCancelOverrideRequestWhenRequesterNotOnTop(Lcom/android/server/devicestate/DeviceStateManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmActiveOverride(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    .line 229
    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v2

    if-ne p1, v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getUid()I

    move-result p1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 233
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmOverrideRequestController(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/OverrideRequestController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 235
    :cond_2
    monitor-exit v0

    return-void

    .line 230
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 235
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
