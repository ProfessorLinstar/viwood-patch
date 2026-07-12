.class public Lcom/android/server/companion/virtual/SensorController;
.super Ljava/lang/Object;
.source "SensorController.java"


# static fields
.field public static sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mLock:Ljava/lang/Object;

.field public final mRuntimeSensorCallback:Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;

.field public final mSensorDescriptors:Landroid/util/ArrayMap;

.field public final mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

.field public final mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mVirtualDeviceId:I

.field public mVirtualSensorList:Ljava/util/List;

.field public mVirtualSensors:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$ZcEHmBQisnAe3XHQp_iGjHvd-wM(Lcom/android/server/companion/virtual/SensorController;Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/SensorController;->lambda$close$0(Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNextDirectChannelHandle()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/companion/virtual/SensorController;->sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/companion/virtual/SensorController;->sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 89
    iput p2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 90
    iput-object p3, p0, Lcom/android/server/companion/virtual/SensorController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 91
    new-instance p2, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

    invoke-direct {p2, p0, p4}, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;-><init>(Lcom/android/server/companion/virtual/SensorController;Landroid/companion/virtual/sensor/IVirtualSensorCallback;)V

    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mRuntimeSensorCallback:Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;

    .line 92
    const-class p2, Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sensors/SensorManagerInternal;

    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 93
    const-class p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 94
    invoke-virtual {p0, p1, p5}, Lcom/android/server/companion/virtual/SensorController;->createSensors(Landroid/companion/virtual/IVirtualDevice;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addSensorForTesting(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/SensorController;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 102
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createSensorInternal(Landroid/companion/virtual/IVirtualDevice;Landroid/companion/virtual/sensor/VirtualSensorConfig;)V
    .locals 21

    move-object/from16 v0, p0

    .line 125
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v1

    if-lez v1, :cond_2

    .line 131
    iget-object v2, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    iget v3, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getVendor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getVendor()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMaximumRange()F

    move-result v7

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getResolution()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getPower()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMinDelay()I

    move-result v10

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMaxDelay()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getFlags()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/companion/virtual/SensorController;->mRuntimeSensorCallback:Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;

    .line 131
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/sensors/SensorManagerInternal;->createRuntimeSensor(IILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I

    move-result v15

    if-lez v15, :cond_1

    .line 141
    new-instance v1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v15, v2, v3}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;-><init>(IILjava/lang/String;)V

    .line 143
    new-instance v2, Landroid/os/Binder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.hardware.sensor.VirtualSensor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v14, Landroid/companion/virtual/sensor/VirtualSensor;

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v17

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getFlags()I

    move-result v18

    move-object/from16 v19, p1

    move-object/from16 v20, v2

    invoke-direct/range {v14 .. v20}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(IILjava/lang/String;ILandroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    .line 147
    iget-object v3, v0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 148
    :try_start_0
    iget-object v4, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const-string/jumbo v1, "virtual_devices.value_virtual_sensors_created_count"

    iget-object v0, v0, Lcom/android/server/companion/virtual/SensorController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 153
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 151
    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 150
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 137
    :cond_1
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an invalid virtual sensor handle \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an invalid virtual sensor type (config name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createSensors(Landroid/companion/virtual/IVirtualDevice;Ljava/util/List;)V
    .locals 3

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    .line 113
    invoke-virtual {p0, p1, v2}, Lcom/android/server/companion/virtual/SensorController;->createSensorInternal(Landroid/companion/virtual/IVirtualDevice;Landroid/companion/virtual/sensor/VirtualSensorConfig;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/SensorController$SensorCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 118
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 116
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to create virtual sensor"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 222
    const-string v0, "    SensorController: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    const-string v1, "      Active descriptors: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 230
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/virtual/sensor/VirtualSensor;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSensorDescriptors()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 245
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSensorList()Ljava/util/List;
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    const/4 v1, 0x0

    .line 212
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensor;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 217
    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    monitor-exit v0

    return-object p0

    .line 218
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$close$0(Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {p1}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->-$$Nest$fgetmHandle(Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sensors/SensorManagerInternal;->removeRuntimeSensor(I)V

    return-void
.end method

.method public sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z
    .locals 19

    move-object/from16 v0, p0

    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    iget-object v1, v0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v2, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    if-eqz v2, :cond_4

    .line 180
    iget-object v3, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 181
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v4

    const-wide/16 v10, 0x1

    add-long v12, v7, v10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 180
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/sensors/SensorManagerInternal;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 183
    monitor-exit v1

    return v4

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v15, v4

    move-wide/from16 v16, v12

    .line 185
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_2

    .line 186
    iget-object v12, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 187
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getType()I

    move-result v14

    add-long v5, v16, v10

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [F

    .line 186
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/sensors/SensorManagerInternal;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    monitor-exit v1

    return v4

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v16, v5

    goto :goto_0

    .line 192
    :cond_2
    iget-object v5, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 193
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v6

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    move-wide/from16 v9, v16

    .line 192
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/sensors/SensorManagerInternal;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    monitor-exit v1

    return v4

    .line 197
    :cond_3
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 178
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not send sensor event for given token"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .locals 8

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    if-eqz p1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 165
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getType()I

    move-result v4

    .line 166
    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getTimestampNanos()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getValues()[F

    move-result-object v7

    .line 164
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/sensors/SensorManagerInternal;->sendSensorEvent(IIJ[F)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not send sensor event for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
