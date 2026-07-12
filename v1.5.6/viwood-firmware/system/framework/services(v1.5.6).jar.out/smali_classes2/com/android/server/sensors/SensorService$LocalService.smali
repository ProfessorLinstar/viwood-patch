.class public Lcom/android/server/sensors/SensorService$LocalService;
.super Lcom/android/server/sensors/SensorManagerInternal;
.source "SensorService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-direct {p0}, Lcom/android/server/sensors/SensorManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    new-instance v0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    invoke-direct {v0, p1, p2}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 153
    iget-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object p2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$smregisterProximityActiveListenerNative(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 161
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener already registered"

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createRuntimeSensor(IILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
    .locals 16

    move-object/from16 v0, p0

    .line 106
    iget-object v1, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v2, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v3

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-static/range {v3 .. v15}, Lcom/android/server/sensors/SensorService;->-$$Nest$smregisterRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I

    move-result v2

    .line 109
    iget-object v0, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmRuntimeSensorHandles(Lcom/android/server/sensors/SensorService;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeRuntimeSensor(I)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmRuntimeSensorHandles(Lcom/android/server/sensors/SensorService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmRuntimeSensorHandles(Lcom/android/server/sensors/SensorService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lcom/android/server/sensors/SensorService;->-$$Nest$smunregisterRuntimeSensorNative(JI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 121
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendSensorAdditionalInfo(IIIJ[F)Z
    .locals 10

    .line 138
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmRuntimeSensorHandles(Lcom/android/server/sensors/SensorService;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 140
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/android/server/sensors/SensorService;->-$$Nest$smsendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 144
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendSensorEvent(IIJ[F)Z
    .locals 9

    .line 127
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmRuntimeSensorHandles(Lcom/android/server/sensors/SensorService;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 129
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/android/server/sensors/SensorService;->-$$Nest$smsendRuntimeSensorEventNative(JIIJ[F)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 132
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
