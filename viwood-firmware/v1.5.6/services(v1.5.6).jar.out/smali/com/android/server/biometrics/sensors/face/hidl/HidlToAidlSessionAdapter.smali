.class public Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;
.super Ljava/lang/Object;
.source "HidlToAidlSessionAdapter.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISession;


# static fields
.field static final CHALLENGE_TIMEOUT_SEC:I = 0x258

.field static final ENROLL_TIMEOUT_SEC:I = 0x4b


# instance fields
.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public mFeature:I

.field public mGenerateChallengeCreatedAt:J

.field public mGenerateChallengeResult:J

.field public final mGeneratedChallengeCount:Ljava/util/List;

.field public mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

.field public mSession:Ljava/util/function/Supplier;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$Kl4RMBQFGs9hwUMPzJBbWmChYCg(JLjava/lang/Long;)Z
    .locals 2

    .line 304
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSession(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 6

    .line 77
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Ljava/time/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Ljava/time/Clock;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    .line 70
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    .line 82
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 83
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 84
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    .line 86
    invoke-virtual {p0, p4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->setCallback(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    .line 148
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    return-object p1
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 248
    const-string p3, "HidlToAidlSessionAdapter"

    const-string v0, "authenticateWithContext unsupported in HIDL"

    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 1

    .line 242
    const-string p0, "HidlToAidlSessionAdapter"

    const-string v0, "close unsupported in HIDL"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final decrementChallengeCount()I
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 304
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 305
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    .line 154
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    return-object v0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 262
    const-string p1, "HidlToAidlSessionAdapter"

    const-string v0, "detectInteractionWithContext unsupported in HIDL"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    .line 132
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object p1

    .line 134
    array-length p4, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-byte v2, p1, v1

    .line 135
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    array-length p4, p3

    :goto_1
    if-ge v0, p4, :cond_1

    aget-byte v1, p3, v0

    .line 139
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertAidlToFrameworkFeature(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    :cond_1
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 p4, 0x4b

    invoke-interface {p3, p2, p4, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    .line 142
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    return-object p1
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 255
    const-string p5, "HidlToAidlSessionAdapter"

    const-string v0, "enrollWithContext unsupported in HIDL"

    invoke-static {p5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 285
    const-string p0, "HidlToAidlSessionAdapter"

    const-string p1, "enrollWithOptions unsupported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public enumerateEnrollments()V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    return-void
.end method

.method public generateChallenge()V
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->incrementChallengeCount()V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->isGeneratedChallengeCacheValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "HidlToAidlSessionAdapter"

    const-string v1, "Current challenge is cached and will be reused"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onChallengeGenerated(J)V

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    .line 103
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v1, 0x258

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v0, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    .line 104
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onChallengeGenerated(J)V

    return-void
.end method

.method public getAuthenticatorId()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v0, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 222
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    .line 125
    const-string p0, "HidlToAidlSessionAdapter"

    const-string p1, "getEnrollmentConfig unsupported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFaceId()I
    .locals 8

    .line 329
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    .line 330
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const-string v0, "HidlToAidlSessionAdapter"

    const-string v1, "No faces to get feature from."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    const/16 v6, 0xb

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(JIII)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 338
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/Face;

    invoke-virtual {p0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p0

    return p0
.end method

.method public getFeatures()V
    .locals 9

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->getFaceId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 177
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    if-ne v3, v2, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    .line 182
    invoke-interface {v3, v4, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v1

    .line 184
    iget v3, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-nez v3, :cond_1

    iget-boolean v1, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    .line 186
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertFrameworkToAidlFeature(I)B

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [B

    aput-byte v3, v4, v0

    .line 185
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onFeatureGet([B)V

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 188
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onFeatureGet([B)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    const/16 v7, 0x11

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(JIII)V

    .line 194
    :goto_0
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    :cond_3
    :goto_1
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 279
    const-string p0, "HidlToAidlSessionAdapter"

    const-string v0, "getInterfaceHash unsupported in HIDL"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 273
    const-string p0, "HidlToAidlSessionAdapter"

    const-string v0, "getInterfaceVersion unsupported in HIDL"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final incrementChallengeCount()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public invalidateAuthenticatorId()V
    .locals 2

    .line 227
    const-string v0, "HidlToAidlSessionAdapter"

    const-string v1, "invalidateAuthenticatorId unsupported in HIDL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onUnsupportedClientScheduled()V

    return-void
.end method

.method public final isGeneratedChallengeCacheValid()Z
    .locals 4

    .line 290
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    .line 292
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 268
    const-string p0, "HidlToAidlSessionAdapter"

    const-string/jumbo p1, "onContextChanged unsupported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeEnrollments([I)V
    .locals 1

    .line 164
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    return-void
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 4

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 235
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    return-void
.end method

.method public revokeChallenge(J)V
    .locals 6

    .line 109
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->decrementChallengeCount()I

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p1, -0x1

    .line 117
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    .line 118
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    .line 119
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    .line 120
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onChallengeRevoked(J)V

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "scheduleRevokeChallenge skipped - challenge still in use: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HidlToAidlSessionAdapter"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(JIII)V

    return-void
.end method

.method public final setCallback(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 3

    .line 312
    const-string v0, "HidlToAidlSessionAdapter"

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 314
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    invoke-interface {p1, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    iget-wide p0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face HAL ready, HAL ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-nez p0, :cond_1

    .line 318
    const-string p0, "Unable to set HIDL callback."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    const-string p0, "Unable to set HIDL callback. HIDL daemon is null."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 324
    :catch_0
    const-string p0, "Failed to set callback"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setFeature(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    return-void
.end method

.method public setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .locals 6

    .line 200
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->getFaceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p1, v3

    .line 206
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 209
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertAidlToFrameworkFeature(B)I

    move-result v2

    .line 208
    invoke-interface {p1, v2, p3, v1, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result p1

    if-nez p1, :cond_2

    .line 212
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onFeatureSet(B)V

    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    const/16 v4, 0x11

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(JIII)V

    return-void
.end method
