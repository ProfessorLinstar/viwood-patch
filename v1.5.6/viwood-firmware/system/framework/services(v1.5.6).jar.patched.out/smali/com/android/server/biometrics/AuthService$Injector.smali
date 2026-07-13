.class public Lcom/android/server/biometrics/AuthService$Injector;
.super Ljava/lang/Object;
.source "AuthService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .locals 0

    .line 185
    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getBiometricHandlerProvider()Lcom/android/server/biometrics/BiometricHandlerProvider;
    .locals 0

    .line 220
    invoke-static {}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getInstance()Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object p0

    return-object p0
.end method

.method public getBiometricService()Landroid/hardware/biometrics/IBiometricService;
    .locals 0

    .line 112
    const-string p0, "biometric"

    .line 113
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 112
    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1070029

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceAidlInstances()[Ljava/lang/String;
    .locals 0

    .line 213
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceService;->getDeclaredInstances()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceService()Landroid/hardware/face/IFaceService;
    .locals 0

    .line 170
    const-string p0, "face"

    .line 171
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 170
    invoke-static {p0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintAidlInstances()[Ljava/lang/String;
    .locals 0

    .line 205
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getDeclaredInstances()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;
    .locals 0

    .line 161
    const-string p0, "fingerprint"

    .line 162
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 161
    invoke-static {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object p0

    return-object p0
.end method

.method public getIrisConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIrisService()Landroid/hardware/iris/IIrisService;
    .locals 0

    .line 179
    const-string p0, "iris"

    .line 180
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 179
    invoke-static {p0}, Landroid/hardware/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/iris/IIrisService;

    move-result-object p0

    return-object p0
.end method

.method public isHidlDisabled(Landroid/content/Context;)Z
    .locals 2

    .line 193
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    const/4 v0, 0x0

    if-nez p0, :cond_1

    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 194
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.android.server.biometrics.AuthService.hidlDisabled"

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V
    .locals 0

    .line 121
    const-string p0, "auth"

    invoke-static {p1, p0, p2}, Lcom/android/server/biometrics/AuthService;->access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
