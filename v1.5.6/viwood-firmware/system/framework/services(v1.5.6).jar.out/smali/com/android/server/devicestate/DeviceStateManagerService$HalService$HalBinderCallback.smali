.class public final Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManagerCallback;


# instance fields
.field public final mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

.field public final synthetic this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .locals 0

    .line 1384
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1423
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .locals 7

    .line 1390
    new-instance v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;

    invoke-direct {v0}, Landroid/frameworks/devicestate/DeviceStateConfiguration;-><init>()V

    .line 1391
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 1392
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1393
    new-instance v2, Ljava/util/HashSet;

    iget-object p1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 1394
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-wide/16 v3, 0x0

    .line 1395
    iput-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    .line 1396
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1397
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-static {v3}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->-$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v3

    .line 1399
    iget-wide v5, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    or-long/2addr v3, v5

    iput-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    goto :goto_0

    .line 1402
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1403
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-static {v2}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->-$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v1

    .line 1405
    iget-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    goto :goto_1

    .line 1408
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    invoke-interface {p0, v0}, Landroid/frameworks/devicestate/IDeviceStateListener;->onDeviceStateChanged(Landroid/frameworks/devicestate/DeviceStateConfiguration;)V

    return-void
.end method

.method public onRequestActive(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRequestCanceled(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method
