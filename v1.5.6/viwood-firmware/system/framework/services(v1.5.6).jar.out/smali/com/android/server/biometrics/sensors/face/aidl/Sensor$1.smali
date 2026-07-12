.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/UserSwitchProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final synthetic val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final synthetic val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;


# direct methods
.method public static synthetic $r8$lambda$GQAdQXXZipYRxgjWoBtb6EQCYNA(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;)Landroid/hardware/biometrics/face/ISession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->lambda$getStopUserClient$0()Landroid/hardware/biometrics/face/ISession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Tcycdm6zKrJxWb64qR2pbNXwNM0(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->lambda$getStopUserClient$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .locals 11

    .line 143
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v0

    iget v4, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 144
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmLockoutTracker(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 147
    invoke-interface {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v8

    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;

    invoke-direct {v9, p0, v4, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;II)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 162
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getFaceUtilsInstance()Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v10

    move v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/face/FaceUtils;)V

    .line 164
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {p1, v1, v4, v5, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$mgetStartUserClient(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;IILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;

    move-result-object p0

    return-object p0
.end method

.method public getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .locals 9

    .line 134
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;)V

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v4

    iget v5, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object v4

    .line 136
    invoke-static {v4}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iget-object v7, v4, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;)V

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    return-object v0
.end method

.method public final synthetic lambda$getStopUserClient$0()Landroid/hardware/biometrics/face/ISession;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmLazySession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getStopUserClient$1()V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-void
.end method
