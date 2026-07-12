.class public Lcom/android/server/biometrics/BiometricHandlerProvider;
.super Ljava/lang/Object;
.source "BiometricHandlerProvider.java"


# static fields
.field public static final sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;


# instance fields
.field public mBiometricsCallbackHandler:Landroid/os/Handler;

.field public mFaceHandler:Landroid/os/Handler;

.field public mFingerprintHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/BiometricHandlerProvider;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getBiometricCallbackHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mBiometricsCallbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "BiometricsCallbackHandler"

    const/4 v1, -0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getNewHandler(Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mBiometricsCallbackHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mBiometricsCallbackHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getFaceHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFaceHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "FaceHandler"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getNewHandler(Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFaceHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFaceHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getFingerprintHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFingerprintHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "FingerprintHandler"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getNewHandler(Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFingerprintHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFingerprintHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getNewHandler(Ljava/lang/String;I)Landroid/os/Handler;
    .locals 0

    .line 78
    new-instance p0, Landroid/os/HandlerThread;

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p1
.end method
