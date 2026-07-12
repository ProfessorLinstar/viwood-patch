.class public Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
.super Ljava/lang/Object;
.source "AidlSession.java"


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final mHalInterfaceVersion:I

.field public final mSession:Landroid/hardware/biometrics/face/ISession;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/face/ISession;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 43
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    .line 44
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 45
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 52
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 53
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    return-void
.end method


# virtual methods
.method public getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    return-object p0
.end method

.method public getSession()Landroid/hardware/biometrics/face/ISession;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    return p0
.end method

.method public hasContextMethods()Z
    .locals 1

    .line 74
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsFaceEnrollOptions()Z
    .locals 1

    .line 81
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
