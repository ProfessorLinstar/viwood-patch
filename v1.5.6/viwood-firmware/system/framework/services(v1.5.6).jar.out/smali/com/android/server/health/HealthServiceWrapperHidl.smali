.class public final Lcom/android/server/health/HealthServiceWrapperHidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "HealthServiceWrapperHidl.java"


# instance fields
.field public mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

.field public mInstanceName:Ljava/lang/String;

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;


# direct methods
.method public static synthetic $r8$lambda$2YHt-2jZELpSxwyjUiIiiuewzA0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 0

    .line 87
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_0

    int-to-long p2, p3

    .line 88
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LZ-bD2XWcV4TMLbh5AxrI0jkFhs(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 0

    .line 80
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_0

    int-to-long p2, p3

    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ODbQkC_m4hWEnYvZuDTadL5AtzU(Lcom/android/server/health/HealthServiceWrapperHidl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$scheduleUpdate$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$R-dbRgHhspu3hCc_DrxWHznvHMM(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 0

    .line 108
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_0

    int-to-long p2, p3

    .line 109
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$b2gv9MeBUyxa_BQFQrDfshOmoN0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 0

    .line 94
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_0

    int-to-long p2, p3

    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$eP45UlWIQTfMoT2M8d3kfIjLWNQ(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .locals 0

    .line 115
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_0

    .line 116
    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$eetuJn3PsYCN-V7Scb_L05ajA3Q(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 0

    .line 101
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_0

    int-to-long p2, p3

    .line 102
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ws1fedw1eJsmMr0aREboWxvcACs(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;ILandroid/hardware/health/V2_0/HealthInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p2, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V1_0/HealthInfo;)Landroid/hardware/health/HealthInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/health/HealthServiceWrapperHidl;)Lcom/android/server/health/HealthServiceWrapperHidl$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandlerThread(Lcom/android/server/health/HealthServiceWrapperHidl;)Landroid/os/HandlerThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthSupplier(Lcom/android/server/health/HealthServiceWrapperHidl;)Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstanceName(Lcom/android/server/health/HealthServiceWrapperHidl;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperHidl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 184
    const-string v0, "default"

    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapper;-><init>()V

    .line 51
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;Lcom/android/server/health/HealthServiceWrapperHidl-IA;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 52
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "HealthServiceHwbinder"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 188
    iput-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    .line 192
    const-string v1, "HealthInitGetService_default"

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 194
    :try_start_0
    invoke-interface {p3, v0}, Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object p3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 199
    throw p0

    .line 198
    :catch_0
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    move-object p3, v2

    :goto_0
    if-eqz p3, :cond_0

    .line 201
    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    .line 213
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    .line 214
    invoke-interface {p1, v2, p3, v1}, Lcom/android/server/health/HealthServiceWrapperHidl$Callback;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V

    .line 218
    :cond_1
    const-string p1, "HealthInitRegisterNotification"

    invoke-static {p1}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 222
    :try_start_1
    invoke-interface {p2}, Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;->get()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p1

    const-string p2, "android.hardware.health@2.0::IHealth"

    iget-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 223
    invoke-interface {p1, p2, p3, v0}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "health: HealthServiceWrapper listening to instance "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HealthServiceWrapperHidl"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    .line 225
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 226
    throw p0

    .line 206
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "IHealth service instance %s isn\'t available. Perhaps no permission?"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    .line 207
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_3
    throw v2
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 62
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method private static traceEnd()V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 66
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getHealthInfo()Landroid/hardware/health/HealthInfo;
    .locals 2

    .line 154
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 156
    :cond_0
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;

    invoke-direct {v1, v0}, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl-IA;)V

    .line 157
    new-instance v0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;)V

    invoke-interface {p0, v0}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    .line 163
    iget-object p0, v1, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public getProperty(ILandroid/os/BatteryProperty;)I
    .locals 2

    .line 71
    const-string v0, "HealthGetProperty"

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 73
    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda5;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    goto :goto_0

    .line 113
    :pswitch_1
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda6;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_0

    .line 99
    :pswitch_2
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda4;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    goto :goto_0

    .line 92
    :pswitch_3
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    goto :goto_0

    .line 85
    :pswitch_4
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    goto :goto_0

    .line 78
    :pswitch_5
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 120
    :goto_0
    iget p0, v0, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    return p0

    .line 74
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "no health service"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 122
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 123
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic lambda$scheduleUpdate$6()V
    .locals 2

    .line 132
    const-string v0, "HealthServiceWrapperHidl"

    const-string v1, "HealthScheduleUpdate"

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 134
    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    if-nez p0, :cond_0

    .line 136
    const-string/jumbo p0, "no health service"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 139
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    return-void

    .line 141
    :goto_0
    :try_start_2
    const-string v1, "Cannot call update on health HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 144
    throw p0
.end method

.method public scheduleUpdate()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperHidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
