.class public Lcom/android/server/health/HealthServiceWrapperAidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "HealthServiceWrapperAidl.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String;


# instance fields
.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

.field public final mServiceCallback:Landroid/os/IServiceCallback;


# direct methods
.method public static synthetic $r8$lambda$-oplhFZ3XbYCRctwu9K5sMMyz8U(Lcom/android/server/health/HealthServiceWrapperAidl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->lambda$scheduleUpdate$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;)V
    .locals 6

    .line 71
    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapper;-><init>()V

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HealthServiceBinder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;Lcom/android/server/health/HealthServiceWrapperAidl-IA;)V

    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Landroid/os/IServiceCallback;

    .line 73
    const-string v4, "HealthInitGetServiceAidl"

    invoke-static {v4}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 76
    :try_start_0
    sget-object v4, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    invoke-interface {p2, v4}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;->waitForDeclaredService(Ljava/lang/String;)Landroid/hardware/health/IHealth;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, v3, v5}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealth;)V

    .line 90
    :cond_0
    const-string p0, "HealthInitRegisterNotificationAidl"

    invoke-static {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    :try_start_1
    invoke-interface {p2, v4, v2}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 97
    const-string p0, "HealthServiceWrapperAidl"

    const-string p1, "health: HealthServiceWrapper listening to AIDL HAL"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 95
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 96
    throw p0

    .line 81
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "IHealth service instance isn\'t available. Perhaps no permission?"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    .line 78
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 79
    throw p0
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 237
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 241
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;
    .locals 1

    .line 217
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 220
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getHealthInfo()Landroid/hardware/health/HealthInfo;
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 209
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getProperty(ILandroid/os/BatteryProperty;)I
    .locals 1

    .line 108
    const-string v0, "HealthGetPropertyAidl"

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 110
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapperAidl;->getPropertyInternal(ILandroid/os/BatteryProperty;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 113
    throw p0
.end method

.method public final getPropertyInternal(ILandroid/os/BatteryProperty;)I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-eqz p0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 163
    :pswitch_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 164
    iget p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryPartStatus:I

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 158
    iget-object p0, p0, Landroid/hardware/health/BatteryHealthData;->batterySerialNumber:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/os/BatteryProperty;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 153
    iget-wide p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryStateOfHealth:J

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 149
    :pswitch_3
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargingPolicy()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 145
    :pswitch_4
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 146
    iget-wide p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryFirstUsageSeconds:J

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 141
    :pswitch_5
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 142
    iget-wide p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryManufacturingDateSeconds:J

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 135
    :pswitch_6
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeStatus()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 138
    :pswitch_7
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getEnergyCounterNwh()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 132
    :pswitch_8
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCapacity()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 129
    :pswitch_9
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentAverageMicroamps()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 126
    :pswitch_a
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentNowMicroamps()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_0

    .line 123
    :pswitch_b
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeCounterUah()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, -0x2

    return p0

    :catch_1
    const/4 p0, -0x1

    return p0

    .line 118
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "no health service"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic lambda$scheduleUpdate$0()V
    .locals 2

    .line 188
    const-string v0, "HealthServiceWrapperAidl"

    const-string v1, "HealthScheduleUpdate"

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 190
    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-nez p0, :cond_0

    .line 192
    const-string/jumbo p0, "no health service"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 195
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->update()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    .line 197
    :goto_0
    :try_start_2
    const-string v1, "Cannot call update on health AIDL HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 200
    throw p0
.end method

.method public scheduleUpdate()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
