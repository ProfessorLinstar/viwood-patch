.class public Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;
.super Ljava/lang/Object;
.source "DefaultHalFactory.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/HalFactory;


# static fields
.field public static final mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;


# direct methods
.method public static synthetic $r8$lambda$KMbWZyi6Wv3YpFRRKdm5GTe9ZOA()V
    .locals 2

    .line 85
    const-string/jumbo v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pxdhb9m8jsI1gtn_NyOQbXw8Zcw(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V
    .locals 2

    .line 95
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "reboot"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 97
    const-string v0, "SoundTriggerMiddlewareDefaultHalFactory"

    const-string v1, "Failed to reboot mock HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$jikGhW3JoTsqidubW1AhGp2sJgw(Ljava/lang/String;)V
    .locals 7

    .line 112
    :try_start_0
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo p0, "reboot"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 115
    const-string v0, "SoundTriggerMiddlewareDefaultHalFactory"

    const-string v1, "Failed to reboot mock HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$tAE1IsGlpBsm9yI0s4845AfKTSs()V
    .locals 2

    .line 70
    const-string/jumbo v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;-><init>()V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .locals 4

    .line 55
    :try_start_0
    const-string p0, "debug.soundtrigger_middleware.use_mock_hal"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 57
    const-string v2, "SoundTriggerMiddlewareDefaultHalFactory"

    if-nez p0, :cond_2

    .line 61
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "Connecting to default soundtrigger3.ISoundTriggerHw"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-object v0

    .line 75
    :cond_0
    const-string p0, "Connecting to default soundtrigger-V2.x.ISoundTriggerHw"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getService(Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 82
    new-instance v0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda1;-><init>()V

    sget-object v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object p0

    return-object p0

    .line 79
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "driver is null"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v3, 0x2

    if-ne p0, v3, :cond_3

    .line 89
    const-string p0, "Connecting to mock soundtrigger-V2.x.ISoundTriggerHw"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v1}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :try_start_2
    const-string/jumbo p0, "mock"

    invoke-static {p0, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getService(Ljava/lang/String;Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    .line 93
    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V

    sget-object v2, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    invoke-static {p0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :try_start_3
    invoke-static {v0}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V

    .line 102
    throw p0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mock"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    const-string v0, "Connecting to mock soundtrigger3.ISoundTriggerHw"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-object v0

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown HAL mock version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
