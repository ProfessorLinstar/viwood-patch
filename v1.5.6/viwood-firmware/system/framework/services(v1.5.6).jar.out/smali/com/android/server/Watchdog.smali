.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field public static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field public final TIME_SF_WAIT:I

.field public exceptionHang:Lcom/mediatek/aee/ExceptionLog;

.field public mActivity:Lcom/android/server/am/ActivityManagerService;

.field public mAllowRestart:Z

.field public mController:Landroid/app/IActivityController;

.field public final mHandlerCheckers:Ljava/util/ArrayList;

.field public final mInterestingJavaPids:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field public mSfHang:Z

.field public final mThread:Ljava/lang/Thread;

.field public final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

.field public volatile mWatchdogTimeoutMillis:J


# direct methods
.method public static synthetic $r8$lambda$IHmOjeSmDoiNkZR0B-wv71mYNoM(Lcom/android/server/Watchdog;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->run()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 26

    .line 89
    const-class v0, Lcom/android/server/Watchdog;

    .line 125
    const-string v18, "/apex/com.android.art/bin/artd"

    const-string v19, "/apex/com.android.os.statsd/bin/statsd"

    const-string v1, "/system/bin/audioserver"

    const-string v2, "/system/bin/cameraserver"

    const-string v3, "/system/bin/drmserver"

    const-string v4, "/system/bin/keystore2"

    const-string v5, "/system/bin/mediadrmserver"

    const-string v6, "/system/bin/mediaserver"

    const-string v7, "/system/bin/netd"

    const-string v8, "/system/bin/sdcard"

    const-string v9, "/system/bin/servicemanager"

    const-string v10, "/system/bin/surfaceflinger"

    const-string v11, "/system/bin/vold"

    const-string/jumbo v12, "media.extractor"

    const-string/jumbo v13, "media.metrics"

    const-string/jumbo v14, "media.codec"

    const-string/jumbo v15, "media.swcodec"

    const-string/jumbo v16, "media.transcoding"

    const-string v17, "com.android.bluetooth"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 147
    const-string v24, "android.hardware.vr@1.0::IVr"

    const-string v25, "android.system.suspend@1.0::ISystemSuspend"

    const-string v1, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@5.0::IDevicesFactory"

    const-string v3, "android.hardware.audio@6.0::IDevicesFactory"

    const-string v4, "android.hardware.audio@7.0::IDevicesFactory"

    const-string v5, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v6, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string v7, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v8, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v9, "android.hardware.gnss@1.0::IGnss"

    const-string v10, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v11, "android.hardware.graphics.allocator@4.0::IAllocator"

    const-string v12, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v13, "android.hardware.health@2.0::IHealth"

    const-string v14, "android.hardware.light@2.0::ILight"

    const-string v15, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v16, "android.hardware.media.omx@1.0::IOmx"

    const-string v17, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v18, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string v19, "android.hardware.power@1.0::IPower"

    const-string v20, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v21, "android.hardware.sensors@1.0::ISensors"

    const-string v22, "android.hardware.sensors@2.0::ISensors"

    const-string v23, "android.hardware.sensors@2.1::ISensors"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 175
    const-string v23, "android.hardware.wifi.supplicant.ISupplicant/"

    const-string v24, "android.system.suspend.ISystemSuspend/"

    const-string v1, "android.hardware.audio.core.IModule/"

    const-string v2, "android.hardware.audio.core.IConfig/"

    const-string v3, "android.hardware.audio.effect.IFactory/"

    const-string v4, "android.hardware.biometrics.face.IFace/"

    const-string v5, "android.hardware.biometrics.fingerprint.IFingerprint/"

    const-string v6, "android.hardware.bluetooth.IBluetoothHci/"

    const-string v7, "android.hardware.camera.provider.ICameraProvider/"

    const-string v8, "android.hardware.drm.IDrmFactory/"

    const-string v9, "android.hardware.gnss.IGnss/"

    const-string v10, "android.hardware.graphics.allocator.IAllocator/"

    const-string v11, "android.hardware.graphics.composer3.IComposer/"

    const-string v12, "android.hardware.health.IHealth/"

    const-string v13, "android.hardware.input.processor.IInputProcessor/"

    const-string v14, "android.hardware.light.ILights/"

    const-string v15, "android.hardware.neuralnetworks.IDevice/"

    const-string v16, "android.hardware.power.IPower/"

    const-string v17, "android.hardware.power.stats.IPowerStats/"

    const-string v18, "android.hardware.sensors.ISensors/"

    const-string v19, "android.hardware.vibrator.IVibrator/"

    const-string v20, "android.hardware.vibrator.IVibratorManager/"

    const-string v21, "android.hardware.wifi.hostapd.IHostapd/"

    const-string v22, "android.hardware.wifi.IWifi/"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 116
    iput v0, p0, Lcom/android/server/Watchdog;->TIME_SF_WAIT:I

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 215
    iput-boolean v2, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    const/4 v3, 0x0

    .line 216
    iput-boolean v3, p0, Lcom/android/server/Watchdog;->mSfHang:Z

    const-wide/32 v4, 0xea60

    .line 219
    iput-wide v4, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 220
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 491
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/Watchdog;)V

    const-string/jumbo v7, "watchdog"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 500
    new-instance v5, Lcom/android/server/ServiceThread;

    const-string/jumbo v6, "watchdog.monitor"

    invoke-direct {v5, v6, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 502
    invoke-virtual {v5}, Lcom/android/server/ServiceThread;->start()V

    .line 503
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v5}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v5, "monitor thread"

    invoke-direct {v2, v3, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 504
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 508
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v5, "foreground thread"

    invoke-direct {v2, v3, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 506
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    .line 514
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v5, "main thread"

    invoke-direct {v2, v3, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 512
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 511
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 517
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v5, "ui thread"

    invoke-direct {v2, v3, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 516
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 520
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v5, "i/o thread"

    invoke-direct {v2, v3, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 524
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v5, "display thread"

    invoke-direct {v2, v3, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 529
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v5, "animation thread"

    invoke-direct {v2, v3, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 526
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 534
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v5, "surface animation thread"

    invoke-direct {v2, v3, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v0

    .line 531
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 540
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-static {}, Lcom/mediatek/aee/ExceptionLog;->getInstance()Lcom/mediatek/aee/ExceptionLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    .line 549
    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    invoke-direct {v0}, Lcom/android/server/am/TraceErrorLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    return-void
.end method

.method public static addInterestingAidlPids(Ljava/util/HashSet;)V
    .locals 10

    .line 835
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 838
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 839
    sget-object v5, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 840
    iget-object v9, v4, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 841
    iget v8, v4, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static addInterestingHidlPids(Ljava/util/HashSet;)V
    .locals 6

    .line 815
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 817
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 819
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    sget-object v4, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v5, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 827
    :cond_1
    iget v3, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 830
    const-string v0, "Watchdog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .line 483
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 487
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 5

    .line 848
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 849
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingAidlPids(Ljava/util/HashSet;)V

    .line 850
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingHidlPids(Ljava/util/HashSet;)V

    .line 852
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 854
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 855
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 859
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getSfReboot()I
    .locals 2

    .line 231
    const-string/jumbo v0, "service.sf.reboot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isInterestingJavaProcess(Ljava/lang/String;)Z
    .locals 1

    .line 632
    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.phone"

    .line 633
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static setSfReboot()V
    .locals 3

    const/4 v0, 0x0

    .line 235
    const-string/jumbo v1, "service.sf.reboot"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    move v0, v2

    .line 238
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {p0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 676
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 4

    .line 680
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 4

    .line 687
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 689
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    invoke-static {v3, p2, p3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withCustomTimeout(Lcom/android/server/Watchdog$HandlerChecker;J)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    .line 689
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final breakCrashLoop()V
    .locals 3

    .line 1237
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/dev/kmsg_debug"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    :try_start_1
    const-string v1, "Fatal reset to escape the system_server crashing loop\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1237
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1240
    :goto_1
    const-string v1, "Watchdog"

    const-string v2, "Failed to append to kmsg"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/16 v0, 0x63

    .line 1242
    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    return-void
.end method

.method public final describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 803
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 804
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 805
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 806
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final doSysRq(C)V
    .locals 1

    .line 1134
    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    const-string v0, "/proc/sysrq-trigger"

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 1136
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1138
    const-string p1, "Watchdog"

    const-string v0, "Failed to write to /proc/sysrq-trigger"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1247
    const-string p2, "WatchdogTimeoutMillis="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1248
    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public final evaluateCheckerCompletionLocked()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 784
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 786
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getCheckersWithStateLocked(I)Ljava/util/ArrayList;
    .locals 4

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 793
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 794
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 795
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 796
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getSfStatus()J
    .locals 2

    .line 223
    iget-object p0, p0, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/mediatek/aee/ExceptionLog;->SFMatterJava(JJ)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final hasActiveUsbConnection()Z
    .locals 2

    .line 1185
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/class/android_usb/android0/state"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1187
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1188
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1192
    const-string v0, "Watchdog"

    const-string v1, "Failed to determine if device was on USB"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    .line 565
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 566
    new-instance p2, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {p2, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 569
    iget-object p0, p0, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    if-eqz p0, :cond_0

    const-wide/16 p1, 0x0

    .line 570
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    :cond_0
    return-void
.end method

.method public final isCrashLoopFound()Z
    .locals 13

    .line 1198
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_count()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1199
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1200
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_window_seconds()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 1199
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1201
    const-string v4, "Watchdog"

    if-eqz v0, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1210
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->readTimeoutHistory()[Ljava/lang/String;

    move-result-object v7

    .line 1212
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    sub-int/2addr v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 1214
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    array-length v11, v7

    .line 1212
    invoke-static {v7, v9, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1217
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    invoke-virtual {p0, v8}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->hasActiveUsbConnection()Z

    move-result v7

    if-eqz v7, :cond_1

    return v1

    .line 1227
    :cond_1
    :try_start_0
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v0, :cond_2

    sub-long/2addr v5, v11

    cmp-long p0, v5, v2

    if-gez p0, :cond_2

    return v10

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 1229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parseLong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->resetTimeoutHistory()V

    return v1

    :cond_3
    :goto_0
    int-to-long v5, v0

    cmp-long p0, v5, v2

    if-eqz p0, :cond_4

    .line 1203
    const-string p0, "framework_watchdog.fatal_count"

    const-string v0, "framework_watchdog.fatal_window.second"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "sysprops \'%s\' and \'%s\' should be set or unset together"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public final logWatchog(ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    .line 1047
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForSystemServerTraceFile()Ljava/lang/String;

    move-result-object v8

    .line 1048
    iget-object v0, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v0

    .line 1049
    iget-object v2, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    iget-object v2, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    const-string/jumbo v3, "system_server"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 1052
    iget-object v2, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2, v7, v0}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 1057
    iget-object v2, v1, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v2, :cond_1

    const-wide/16 v3, 0x168

    .line 1058
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 1059
    iget-object v2, v1, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/mediatek/aee/ExceptionLog;->switchFtrace(I)V

    .line 1062
    :cond_1
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->logHalfWatchdog(Ljava/lang/String;)V

    const/16 v2, 0x1cc

    .line 1063
    invoke-static {v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    const-string/jumbo v2, "pre_watchdog"

    :goto_0
    move-object v12, v2

    goto :goto_2

    .line 1066
    :cond_2
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logWatchdog(Ljava/lang/String;Ljava/util/UUID;)V

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**SWT happen **"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Watchdog"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v2, v1, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    .line 1070
    invoke-virtual {v2, v3}, Lcom/mediatek/aee/ExceptionLog;->switchFtrace(I)V

    .line 1072
    :cond_3
    iget-boolean v2, v1, Lcom/android/server/Watchdog;->mSfHang:Z

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "surfaceflinger hang."

    goto :goto_1

    :cond_4
    const-string v2, ""

    .line 1073
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v2, v7

    :cond_5
    const/16 v3, 0xaf2

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1074
    iget-object v2, v1, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v2, :cond_6

    const-wide/16 v3, 0x1a4

    .line 1075
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    :cond_6
    const/16 v2, 0xb9

    .line 1080
    invoke-static {v2, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    const-string/jumbo v2, "watchdog"

    goto :goto_0

    .line 1085
    :goto_2
    new-instance v9, Ljava/util/LinkedHashMap;

    const-string v2, "Watchdog-Type"

    invoke-static {v2, v12}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1087
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    new-instance v3, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 1090
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 1091
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1093
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v2, p3

    .line 1091
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v5

    const-wide/16 v7, 0x1388

    .line 1098
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1099
    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    const/16 v2, 0xa

    .line 1100
    invoke-virtual {v3, v13, v14, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v6}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_7

    const/16 v2, 0x77

    .line 1106
    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v2, 0x6d

    .line 1107
    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v2, 0x6c

    .line 1108
    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    :cond_7
    move-object v6, v0

    .line 1114
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v2, "watchdogWriteToDropbox"

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    .line 1126
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v1, 0xfa0

    .line 1128
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .locals 6

    .line 737
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 739
    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 740
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 741
    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 744
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pauseWatchingCurrentThreadFor(ILjava/lang/String;)V
    .locals 6

    .line 702
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 704
    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 705
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    invoke-virtual {v3, p1, p2}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 709
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pauseWatchingMonitorsFor(ILjava/lang/String;)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(ILjava/lang/String;)V

    return-void
.end method

.method public processDied(Ljava/lang/String;I)V
    .locals 3

    .line 653
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " died. Pid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object p1, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 656
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 657
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 3

    .line 641
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " started. Pid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object p1, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 644
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final readTimeoutHistory()[Ljava/lang/String;
    .locals 7

    const/4 p0, 0x0

    .line 1159
    new-array v0, p0, [Ljava/lang/String;

    .line 1161
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 1175
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_3

    .line 1167
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1168
    array-length v3, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, ""

    const/4 v5, 0x1

    if-lt v3, v5, :cond_2

    :try_start_4
    aget-object p0, v2, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    move-object p0, v4

    .line 1169
    :goto_0
    array-length v3, v2

    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    aget-object v4, v2, v5

    .line 1170
    :cond_3
    const-string/jumbo v2, "ro.boottime.zygote"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1171
    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1175
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-object p0

    .line 1161
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1178
    :goto_3
    const-string v1, "Watchdog"

    const-string v2, "Failed to read file /data/system/watchdog-timeout-history.txt"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object v0
.end method

.method public rebootSystem(Ljava/lang/String;)V
    .locals 1

    .line 774
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rebooting system because: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Watchdog"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string/jumbo p0, "power"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Landroid/os/IPowerManager;

    const/4 v0, 0x0

    .line 777
    :try_start_0
    invoke-interface {p0, v0, p1, v0}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/Context;)V
    .locals 3

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "system_server_watchdog_timeout_ms"

    .line 612
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/Watchdog$SettingsObserver;

    invoke-direct {v2, p1, p0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    const/4 p0, 0x0

    .line 611
    invoke-virtual {v0, v1, p0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final resetTimeoutHistory()V
    .locals 1

    .line 1143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .locals 6

    .line 760
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 762
    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 763
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 764
    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 767
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 12

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 873
    :goto_1
    iget-wide v2, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    const-wide/16 v4, 0x4

    .line 874
    div-long v4, v2, v4

    .line 877
    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mSfHang:Z

    .line 878
    iget-object v6, p0, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v6, :cond_0

    const-wide/16 v7, 0x12c

    .line 879
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 881
    :cond_0
    iget-object v6, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move v7, v0

    .line 886
    :goto_2
    :try_start_0
    iget-object v8, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 887
    iget-object v8, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 890
    invoke-virtual {v8}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->customTimeoutMillis()Ljava/util/Optional;

    move-result-object v8

    sget v10, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v10, v10

    mul-long/2addr v10, v2

    .line 891
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 890
    invoke-virtual {v9, v10, v11}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    .line 902
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v9, v0

    move-wide v7, v4

    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    const/4 v11, 0x2

    if-lez v10, :cond_4

    .line 904
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    move v9, v11

    .line 908
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v10, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v7

    .line 911
    :try_start_2
    const-string v8, "Watchdog"

    invoke-static {v8, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    :goto_4
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    move v9, v11

    .line 916
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    sub-long v7, v4, v7

    goto :goto_3

    .line 920
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->getSfStatus()J

    move-result-wide v2

    const-wide/32 v4, 0x9c40

    cmp-long v4, v2, v4

    const/4 v5, 0x3

    const/4 v7, 0x1

    if-lez v4, :cond_5

    .line 924
    const-string v4, "Watchdog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**SF hang Time **"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iput-boolean v7, p0, Lcom/android/server/Watchdog;->mSfHang:Z

    .line 926
    invoke-virtual {p0, v11}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 927
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 928
    const-string v4, ""

    :goto_5
    move v8, v7

    move v7, v0

    goto :goto_6

    .line 930
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v2

    if-nez v2, :cond_7

    .line 933
    iget-object v2, p0, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    .line 934
    invoke-virtual {v2, v1}, Lcom/mediatek/aee/ExceptionLog;->switchFtrace(I)V

    .line 938
    :cond_6
    monitor-exit v6

    goto/16 :goto_0

    :cond_7
    if-ne v2, v7, :cond_8

    .line 941
    monitor-exit v6

    goto/16 :goto_1

    :cond_8
    if-ne v2, v11, :cond_a

    if-nez v1, :cond_9

    .line 944
    const-string v1, "Watchdog"

    const-string v2, "WAITED_UNTIL_PRE_WATCHDOG"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {p0, v11}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 949
    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 950
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v7

    move v8, v1

    goto :goto_6

    .line 953
    :cond_9
    monitor-exit v6

    goto/16 :goto_1

    .line 957
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 958
    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 959
    iget-boolean v7, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 960
    new-instance v3, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    .line 963
    :goto_6
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 971
    invoke-virtual {p0, v7, v4, v3}, Lcom/android/server/Watchdog;->logWatchog(ZLjava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v7, :cond_b

    goto/16 :goto_1

    .line 980
    :cond_b
    iget-object v1, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 981
    :try_start_3
    iget-object v3, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 982
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 983
    iget-boolean v1, p0, Lcom/android/server/Watchdog;->mSfHang:Z

    if-nez v1, :cond_c

    if-eqz v3, :cond_c

    .line 984
    const-string v1, "Watchdog"

    const-string v6, "Reporting stuck state to activity controller"

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :try_start_4
    const-string v1, "Service dumps disabled due to hung system process."

    invoke-static {v1}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 988
    invoke-interface {v3, v4}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_c

    .line 990
    const-string v1, "Watchdog"

    const-string v3, "Activity controller requested to coninue to wait"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 999
    :catch_1
    :cond_c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-eqz v1, :cond_d

    move v9, v11

    :cond_d
    if-lt v9, v11, :cond_e

    .line 1003
    const-string v1, "Watchdog"

    const-string v2, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    if-lez v9, :cond_f

    .line 1005
    const-string v1, "Watchdog"

    const-string v2, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    if-nez v8, :cond_10

    .line 1007
    const-string v1, "Watchdog"

    const-string v2, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1009
    :cond_10
    const-string v1, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-static {v2}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 1011
    const-string v1, "Watchdog"

    const-string v2, "*** GOODBYE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isCrashLoopFound()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1013
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->should_ignore_fatal_count()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->breakCrashLoop()V

    .line 1016
    :cond_11
    iget-object v1, p0, Lcom/android/server/Watchdog;->exceptionHang:Lcom/mediatek/aee/ExceptionLog;

    const-wide/16 v2, 0x14a

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 1017
    iget-boolean v1, p0, Lcom/android/server/Watchdog;->mSfHang:Z

    if-eqz v1, :cond_14

    .line 1018
    const-string v1, "Watchdog"

    const-string v2, "SF hang!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-static {}, Lcom/android/server/Watchdog;->getSfReboot()I

    move-result v1

    if-le v1, v5, :cond_12

    .line 1020
    const-string v1, "Watchdog"

    const-string v2, "SF hang reboot time larger than 3 time, reboot device!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v1, "Maybe SF driver hang, reboot device."

    invoke-virtual {p0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    goto :goto_7

    .line 1023
    :cond_12
    invoke-static {}, Lcom/android/server/Watchdog;->setSfReboot()V

    .line 1025
    :goto_7
    const-string v1, "Watchdog"

    const-string/jumbo v2, "killing surfaceflinger for surfaceflinger hang"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v1, "/system/bin/surfaceflinger"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1028
    aget v1, v1, v0

    if-lez v1, :cond_13

    .line 1029
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 1031
    :cond_13
    const-string v1, "Watchdog"

    const-string/jumbo v2, "kill surfaceflinger end"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1033
    :cond_14
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    :goto_8
    const/16 v1, 0xa

    .line 1035
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    .line 982
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 963
    :goto_9
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 664
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAllowRestart(Z)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 670
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateWatchdogTimeout(J)V
    .locals 2

    .line 623
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x4e20

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x4e21

    .line 627
    :cond_0
    iput-wide p1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Watchdog timeout updated to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " millis"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Watchdog"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeTimeoutHistory(Ljava/lang/Iterable;)V
    .locals 1

    .line 1147
    const-string p0, ","

    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 1149
    :try_start_0
    new-instance p1, Ljava/io/FileWriter;

    const-string v0, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {p1, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    :try_start_1
    const-string/jumbo v0, "ro.boottime.zygote"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1151
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    .line 1149
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1154
    const-string p1, "Watchdog"

    const-string v0, "Failed to write file /data/system/watchdog-timeout-history.txt"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
