.class public Lcom/android/server/biometrics/sensors/BiometricScheduler;
.super Ljava/lang/Object;
.source "BiometricScheduler.java"


# instance fields
.field public final mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field public final mCrashStates:Ljava/util/ArrayDeque;

.field mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

.field public mCurrentUserRetriever:Ljava/util/function/Supplier;

.field public final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field public final mHandler:Landroid/os/Handler;

.field public final mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field final mPendingOperations:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;",
            ">;"
        }
    .end annotation
.end field

.field public final mRecentOperations:Ljava/util/List;

.field public final mRecentOperationsLimit:I

.field public final mSensorType:I

.field public mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

.field public mTotalOperationsHandled:I

.field public mUserSwitchProvider:Lcom/android/server/biometrics/sensors/UserSwitchProvider;


# direct methods
.method public static synthetic $r8$lambda$Y9DdgY3bpqf4NYe7BhDUYvqEfxg(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->lambda$startWatchdog$1(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wVm11dclKtnPJYi662ThtwvPPlI(Lcom/android/server/biometrics/sensors/BiometricScheduler;JLjava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->lambda$getCurrentClientIfMatches$0(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentOperations(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentOperationsLimit(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalOperationsHandled(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmStopUserClient(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/StopUserClient;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTotalOperationsHandled(Lcom/android/server/biometrics/sensors/BiometricScheduler;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;I)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 231
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 232
    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    .line 233
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 234
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 235
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 236
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 237
    iput p5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    .line 238
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILjava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;",
            "Landroid/hardware/biometrics/IBiometricService;",
            "I",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/biometrics/sensors/UserSwitchProvider;",
            ")V"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 249
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 250
    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    .line 251
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 252
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 253
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 254
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 255
    iput p5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 257
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentUserRetriever:Ljava/util/function/Supplier;

    .line 258
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mUserSwitchProvider:Lcom/android/server/biometrics/sensors/UserSwitchProvider;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V
    .locals 9

    .line 266
    const-string v0, "biometric"

    .line 267
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v5

    const/16 v6, 0x32

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    .line 266
    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILjava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    return-void
.end method

.method public static canCancelAuthOperation(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;Landroid/os/IBinder;J)Z
    .locals 1

    .line 554
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isAuthenticationOrDetectionOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingToken(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 556
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingRequestId(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static canCancelEnrollOperation(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;Landroid/os/IBinder;J)Z
    .locals 1

    .line 546
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isEnrollOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingToken(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingRequestId(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sensorTypeFromFingerprintProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)I
    .locals 0

    .line 293
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V
    .locals 4

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthenticationOrDetection, requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v0, :cond_0

    .line 531
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->canCancelAuthOperation(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;Landroid/os/IBinder;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cancelling auth/detect op: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 535
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 536
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->canCancelAuthOperation(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;Landroid/os/IBinder;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling pending auth/detect op: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->markCanceling()Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;J)V
    .locals 4

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelEnrollment, requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v0, :cond_0

    .line 509
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->canCancelEnrollOperation(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;Landroid/os/IBinder;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cancelling enrollment op: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 513
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 514
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->canCancelEnrollOperation(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;Landroid/os/IBinder;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling pending enrollment op: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->markCanceling()Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public checkCurrentUserAndStartNextOperation()V
    .locals 7

    .line 306
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    const-string v1, "BiometricScheduler"

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not idle, current operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const-string p0, "No operations, returning to idle"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentUserRetriever:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 316
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getTargetUserId()I

    move-result v2

    if-eq v2, v0, :cond_6

    .line 318
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isStartUserOperation()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, -0x2710

    const/4 v4, 0x2

    if-ne v0, v3, :cond_3

    .line 320
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mUserSwitchProvider:Lcom/android/server/biometrics/sensors/UserSwitchProvider;

    if-eqz v3, :cond_3

    .line 322
    invoke-interface {v3, v2}, Lcom/android/server/biometrics/sensors/UserSwitchProvider;->getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;

    move-result-object v0

    .line 323
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Starting User] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-direct {v1, v0, v2, v4}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 329
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 330
    :cond_3
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mUserSwitchProvider:Lcom/android/server/biometrics/sensors/UserSwitchProvider;

    if-eqz v3, :cond_5

    .line 331
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-eqz v5, :cond_4

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Waiting for StopUser] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_4
    invoke-interface {v3, v0}, Lcom/android/server/biometrics/sensors/UserSwitchProvider;->getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 336
    new-instance v5, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;

    invoke-direct {v5, p0, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Stopping User] current: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", next: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 343
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {p0, v5}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 346
    :cond_5
    const-string p0, "Cannot start next operation."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 319
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    return-void
.end method

.method public final clearScheduler()V
    .locals 5

    .line 663
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BiometricScheduler"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Watchdog cancelling pending] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->markCancelingForWatchdog()V

    goto :goto_0

    .line 671
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Watchdog cancelling current] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 672
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 613
    const-string v0, "Dump of BiometricScheduler BiometricScheduler"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending operations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crash State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public dumpProtoState(Z)[B
    .locals 5

    .line 626
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 627
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getProtoEnum()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-wide v3, 0x10e00000001L

    .line 627
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    .line 629
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 631
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide v3, 0x20e00000003L

    if-nez v1, :cond_1

    .line 632
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 633
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 638
    :cond_1
    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 640
    :cond_2
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    if-eqz p1, :cond_3

    .line 643
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 645
    :cond_3
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentClientIfMatches(JLjava/util/function/Consumer;)V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;JLjava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getInternalCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-object p0
.end method

.method public final synthetic lambda$getCurrentClientIfMatches$0(JLjava/util/function/Consumer;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingRequestId(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 581
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 585
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic lambda$startWatchdog$1(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 687
    const-string p1, "biometric.value_scheduler_watchdog_triggered_count"

    invoke-static {p1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->clearScheduler()V

    :cond_0
    return-void
.end method

.method public onUserStopped()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    const-string v1, "BiometricScheduler"

    if-nez v0, :cond_0

    .line 698
    const-string p0, "Unexpected onUserStopped"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnUserStopped]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/StopUserClient;->onUserStopped()V

    const/4 v0, 0x0

    .line 704
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    return-void
.end method

.method public recordCrashState()V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 597
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 599
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 601
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 602
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    :cond_1
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;

    .line 606
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 608
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recorded crash state: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricScheduler"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    .line 653
    const-string v0, "BiometricScheduler"

    const-string v1, "Resetting scheduler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    return-void
.end method

.method public scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 1

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 5

    .line 476
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->interruptsPrecedingClients()Z

    move-result v0

    const-string v1, "BiometricScheduler"

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 478
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->markCanceling()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New client, marking pending op as canceling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-direct {v2, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Added] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", new queue size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 486
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 485
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->interruptsPrecedingClients()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz p1, :cond_2

    .line 492
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isInterruptable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 493
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[Cancelling Interruptable]: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 497
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->checkCurrentUserAndStartNextOperation()V

    return-void
.end method

.method public startNextOperationIfIdle()V
    .locals 6

    .line 351
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    const-string v1, "BiometricScheduler"

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not idle, current operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const-string p0, "No operations, returning to idle"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Polled] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMarkedCanceling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Now Cancelling] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isAcquisitionOperation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 375
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->isAlreadyCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isAcquisitionOperation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 383
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getSensorId()I

    move-result v2

    const/4 v3, 0x1

    .line 382
    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->markSensorActive(IZ)V

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isReadyToStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)I

    move-result v0

    if-nez v0, :cond_7

    .line 390
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 392
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    .line 393
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Unable To Start] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Last pending operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 401
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v3, :cond_5

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Aborting Operation] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->abort()V

    goto :goto_1

    .line 406
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null operation, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expected length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 415
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->checkCurrentUserAndStartNextOperation()V

    return-void

    .line 419
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 420
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v3

    .line 419
    invoke-interface {v2, v3, v4, v0}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 422
    const-string v2, "Remote exception when contacting BiometricService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for cookie before starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public startPreparedClient(I)V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    const-string v1, "BiometricScheduler"

    if-nez v0, :cond_0

    .line 443
    const-string p0, "Current operation is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->startWithCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Started] Prepared client: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 450
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Unable To Start] Prepared client: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 451
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 452
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->checkCurrentUserAndStartNextOperation()V

    return-void
.end method

.method public startWatchdog()V
    .locals 5

    .line 680
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-nez v0, :cond_0

    .line 682
    const-string p0, "BiometricScheduler"

    const-string v0, "Current operation is null,no need to start watchdog"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
