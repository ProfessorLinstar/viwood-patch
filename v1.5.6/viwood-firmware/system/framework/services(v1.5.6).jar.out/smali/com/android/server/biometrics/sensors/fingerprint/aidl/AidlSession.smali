.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
.super Ljava/lang/Object;
.source "AidlSession.java"


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

.field public final mHalInterfaceVersion:I

.field public final mSession:Landroid/hardware/biometrics/fingerprint/ISession;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/fingerprint/ISession;ILcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 41
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 42
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 43
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;-><init>(Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 50
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 51
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    return-void
.end method


# virtual methods
.method public getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    return-object p0
.end method

.method public getSession()Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    return p0
.end method

.method public hasContextMethods()Z
    .locals 1

    .line 72
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
