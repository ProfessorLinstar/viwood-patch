.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;
.super Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;
.source "TestHal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fingerprint.aidl.TestHal"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    invoke-direct {p1, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-object p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 44
    const-string p0, "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .locals 1

    .line 49
    const-string p0, "fingerprint.aidl.TestHal"

    const-string v0, "getSensorProps"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 50
    new-array p0, p0, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    return-object p0
.end method
