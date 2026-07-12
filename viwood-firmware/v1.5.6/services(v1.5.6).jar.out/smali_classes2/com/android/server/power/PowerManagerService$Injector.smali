.class Lcom/android/server/power/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 1074
    new-instance p0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createAmbientDisplaySuppressionController(Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .locals 0

    .line 1079
    new-instance p0, Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-direct {p0, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController;-><init>(Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;)V

    return-object p0
.end method

.method public createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .locals 6

    .line 1055
    new-instance v5, Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-direct {v5, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    .line 1056
    new-instance v4, Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {v4, p1, p2, v5}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    .line 1058
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1059
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    .line 1061
    new-instance p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    return-object p0
.end method

.method public createClock()Lcom/android/server/power/PowerManagerService$Clock;
    .locals 1

    .line 1105
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$2;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method public createDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .locals 1

    .line 1154
    new-instance p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    return-object p0
.end method

.method public createFoldGracePeriodProvider()Lcom/android/internal/foldables/FoldGracePeriodProvider;
    .locals 0

    .line 1087
    new-instance p0, Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-direct {p0}, Lcom/android/internal/foldables/FoldGracePeriodProvider;-><init>()V

    return-object p0
.end method

.method public createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    .line 1123
    new-instance p0, Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object p0
.end method

.method public createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;
    .locals 0

    .line 1083
    new-instance p0, Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-direct {p0}, Lcom/android/server/power/InattentiveSleepWarningController;-><init>()V

    return-object p0
.end method

.method public createLowPowerStandbyController(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/power/LowPowerStandbyController;
    .locals 0

    .line 1131
    new-instance p0, Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object p0
.end method

.method public createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .locals 0

    .line 1065
    new-instance p0, Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;-><init>()V

    return-object p0
.end method

.method public createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;)Lcom/android/server/power/Notifier;
    .locals 11

    .line 1043
    new-instance v0, Lcom/android/server/power/Notifier;

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;Lcom/android/server/power/Notifier$Injector;)V

    return-object v0
.end method

.method public createPermissionCheckerWrapper()Lcom/android/server/power/PowerManagerService$PermissionCheckerWrapper;
    .locals 0

    .line 1135
    new-instance p0, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public createPowerPropertiesWrapper()Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;
    .locals 1

    .line 1139
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$3;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method public createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 0

    .line 1049
    new-instance p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 1050
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSuspendBlockers(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;
    .locals 1

    .line 1091
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$1;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method public createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;
    .locals 0

    .line 1070
    new-instance p0, Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    return-object p0
.end method

.method public getFlags()Lcom/android/server/power/feature/PowerManagerFlags;
    .locals 0

    .line 1158
    new-instance p0, Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-direct {p0}, Lcom/android/server/power/feature/PowerManagerFlags;-><init>()V

    return-object p0
.end method

.method public invalidateIsInteractiveCaches()V
    .locals 0

    .line 1127
    invoke-static {}, Landroid/os/PowerManager;->invalidateIsInteractiveCaches()V

    return-void
.end method
