.class public interface abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
.super Ljava/lang/Object;
.source "IBiometricsFace.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 21
    :cond_0
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 23
    instance-of v3, v2, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-eqz v3, :cond_1

    .line 24
    check-cast v2, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object v2

    .line 27
    :cond_1
    new-instance v2, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 30
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 1

    .line 87
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getService(Ljava/lang/String;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 1

    .line 77
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract authenticate(J)I
.end method

.method public abstract cancel()I
.end method

.method public abstract enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
.end method

.method public abstract enumerate()I
.end method

.method public abstract generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract remove(I)I
.end method

.method public abstract resetLockout(Ljava/util/ArrayList;)I
.end method

.method public abstract revokeChallenge()I
.end method

.method public abstract setActiveUser(ILjava/lang/String;)I
.end method

.method public abstract setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract setFeature(IZLjava/util/ArrayList;I)I
.end method

.method public abstract userActivity()I
.end method
