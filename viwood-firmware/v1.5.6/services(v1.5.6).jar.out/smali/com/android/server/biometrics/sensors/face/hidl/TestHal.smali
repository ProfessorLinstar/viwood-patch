.class public Lcom/android/server/biometrics/sensors/face/hidl/TestHal;
.super Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;
.source "TestHal.java"


# instance fields
.field public mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

.field public final mContext:Landroid/content/Context;

.field public final mSensorId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 51
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    return-void
.end method


# virtual methods
.method public authenticate(J)I
    .locals 0

    .line 151
    const-string p0, "face.hidl.TestHal"

    const-string p1, "authenticate"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public cancel()I
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    if-eqz v0, :cond_0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .locals 0

    .line 79
    const-string p0, "face.hidl.TestHal"

    const-string p1, "enroll"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public enumerate()I
    .locals 4

    .line 120
    const-string v0, "face.hidl.TestHal"

    const-string v1, "enumerate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    invoke-interface {p0, v2, v3, v1, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(JLjava/util/ArrayList;I)V

    :cond_0
    return v0
.end method

.method public generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    .line 70
    const-string p0, "face.hidl.TestHal"

    const-string p1, "generateChallenge"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object p0
.end method

.method public getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    .line 103
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object p0
.end method

.method public getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .locals 0

    .line 95
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    return-object p0
.end method

.method public remove(I)I
    .locals 4

    .line 129
    const-string v0, "face.hidl.TestHal"

    const-string/jumbo v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    if-nez p1, :cond_1

    .line 133
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 134
    invoke-virtual {p1, v0, v3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/Face;

    .line 137
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-interface {p1, v1, v2, v0, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    goto :goto_1

    .line 141
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 141
    invoke-interface {v0, v1, v2, v3, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public resetLockout(Ljava/util/ArrayList;)I
    .locals 0

    .line 162
    const-string p0, "face.hidl.TestHal"

    const-string/jumbo p1, "resetLockout"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public revokeChallenge()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setActiveUser(ILjava/lang/String;)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    .line 57
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 59
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    return-object p0
.end method

.method public setFeature(IZLjava/util/ArrayList;I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public userActivity()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
