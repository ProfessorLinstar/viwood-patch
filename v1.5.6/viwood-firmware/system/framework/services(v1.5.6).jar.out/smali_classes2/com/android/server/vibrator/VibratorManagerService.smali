.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "VibratorManagerService.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mAlwaysOnEffects:Landroid/util/SparseArray;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field final mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

.field public final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field public final mCapabilities:J

.field public mCombinedVibratorInfo:Landroid/os/VibratorInfo;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public final mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

.field public final mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public final mHandler:Landroid/os/Handler;

.field public mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field public final mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

.field public final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field public mNextSession:Lcom/android/server/vibrator/VibrationSession;

.field public mServiceReady:Z

.field public final mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

.field public final mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field public final mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

.field public final mVibratorIds:[I

.field public mVibratorInfos:Landroid/util/SparseArray;

.field public final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

.field public final mVibrators:Landroid/util/SparseArray;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$9C5qR-p6NGG3nM1ySJAO3subppM(ILcom/android/server/vibrator/VibratorController;)V
    .locals 2

    const-wide/16 v0, 0x40

    .line 451
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p1, p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$dPajBvP8G0Ta9blw1JsgCuv-t5A(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/android/server/vibrator/VibratorManagerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalVibrationCallbacks(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrameworkStatsLogger(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->clearCurrentSessionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSessionVibrationStepConductor(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->createSessionVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateVibrationAttemptDebugInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishAppOpModeLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCombinedVibratorInfo(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/VibratorInfo;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getCombinedVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->maybeClearCurrentAndNextSessionsLocked(Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->maybeStartNextSessionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onSyncedVibrationComplete(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationComplete(IJJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVibrationSessionComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationSessionComplete(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smisEffectValid(Landroid/os/CombinedVibration;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 113
    const-string v0, "VibratorManagerService"

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorDebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    .line 114
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 115
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .locals 11

    .line 256
    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    .line 151
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v7, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 167
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    invoke-direct {v0, p0, v8}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    .line 169
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    invoke-direct {v0, p0, v8}, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 195
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v9, Lcom/android/server/vibrator/VibratorManagerService$2;

    invoke-direct {v9, p0}, Lcom/android/server/vibrator/VibratorManagerService$2;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    .line 257
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 259
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 260
    invoke-virtual {p2, v10}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getFrameworkStatsLogger(Landroid/os/Handler;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 262
    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 263
    new-instance v4, Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v4, p1, v10, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 264
    new-instance v3, Lcom/android/server/vibrator/VibrationScaler;

    invoke-direct {v3, v0, v4}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 265
    new-instance v0, Lcom/android/server/vibrator/VibratorControlService;

    .line 266
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorControllerHolder()Lcom/android/server/vibrator/VibratorControllerHolder;

    move-result-object v2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorControlService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 268
    new-instance p1, Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-direct {p1, v1, v10}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 270
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 271
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getNativeWrapper()Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 272
    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)V

    .line 274
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 276
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 278
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e010a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 281
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(III)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 284
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 286
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    .line 288
    invoke-virtual {v2, v3, v8, v9}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 291
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 292
    const-string v3, "*vibrator*"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 293
    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 294
    new-instance v3, Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v3, v2, v7}, Lcom/android/server/vibrator/VibrationThread;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 295
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 300
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getCapabilities()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    .line 301
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getVibratorIds()[I

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 303
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 304
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    goto :goto_1

    .line 307
    :cond_0
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 308
    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v0

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 309
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v0, v4

    .line 311
    invoke-virtual {p2, v5, p1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorController(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)Lcom/android/server/vibrator/VibratorController;

    move-result-object v6

    .line 312
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    :cond_1
    :goto_1
    new-instance p1, Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-direct {p1, v0, v3}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 321
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    .line 323
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->clearSessions()V

    .line 325
    :goto_2
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 329
    :cond_2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/android/server/pm/UserManagerInternal;->shouldShowNotificationForBackgroundUserSounds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    const-string v0, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 336
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string v0, "external_vibrator_service"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 337
    const-string p1, "android.frameworks.vibrator.IVibratorControlService/default"

    invoke-virtual {p2, p1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->isServiceDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_4
    return-void
.end method

.method public static extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;
    .locals 2

    .line 1655
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/VibrationEffect$Composed;

    .line 1656
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1657
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1658
    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/vibrator/PrebakedSegment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I
    .locals 2

    .line 1386
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_1

    .line 1388
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :cond_1
    :goto_0
    const/16 p0, 0x11

    if-eq v0, p0, :cond_6

    if-eq v0, v1, :cond_5

    const/16 p0, 0x22

    if-eq v0, p0, :cond_4

    const/16 p0, 0x31

    if-eq v0, p0, :cond_3

    const/16 p0, 0x32

    if-eq v0, p0, :cond_4

    const/16 p0, 0x41

    if-eq v0, p0, :cond_2

    const/16 p0, 0x42

    if-eq v0, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x5

    return p0

    :cond_6
    const/4 p0, 0x4

    return p0
.end method

.method public static isEffectValid(Landroid/os/CombinedVibration;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1575
    const-string v1, "VibratorManagerService"

    if-nez p0, :cond_0

    .line 1576
    const-string p0, "effect must not be null"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1580
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered issue when verifying vibration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static native nativeCancelSynced(J)V
.end method

.method public static native nativeClearSessions(J)V
.end method

.method public static native nativeEndSession(JJZ)V
.end method

.method public static native nativeGetCapabilities(J)J
.end method

.method public static native nativeGetFinalizer()J
.end method

.method public static native nativeGetVibratorIds(J)[I
.end method

.method public static native nativeInit(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)J
.end method

.method public static native nativePrepareSynced(J[I)Z
.end method

.method public static native nativeStartSession(JJ[I)Z
.end method

.method public static native nativeTriggerSynced(JJ)Z
.end method

.method public static shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 3

    .line 1353
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I

    move-result v0

    .line 1354
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    :cond_0
    if-le v1, v0, :cond_1

    .line 1363
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1364
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-object p0

    .line 1368
    :cond_1
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result p0

    if-nez p0, :cond_2

    .line 1370
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1371
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-object p0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 8

    .line 701
    const-string v0, "cancelVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "cancelVibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 708
    :try_start_1
    sget-boolean v3, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 709
    const-string v3, "VibratorManagerService"

    const-string v4, "Canceling vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 712
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    :try_start_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v6, v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move-object v6, v7

    goto :goto_1

    :cond_1
    move-object v6, p2

    .line 717
    :goto_1
    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 718
    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 721
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v6, v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v6, :cond_3

    move-object p2, v7

    .line 722
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 723
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 726
    :cond_4
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 730
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 726
    :goto_3
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 727
    throw p0

    .line 728
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    .line 730
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 731
    throw p0
.end method

.method public final checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I
    .locals 6

    .line 1507
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1508
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v1

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const/4 v4, 0x3

    .line 1507
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 1509
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    const-string v2, "VibratorManagerService"

    if-eqz v1, :cond_0

    .line 1510
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 1512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check AppOp mode VIBRATE for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " returned audio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", op="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_0
    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result p0

    if-eq v0, p0, :cond_1

    if-nez p0, :cond_1

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bypassing DND for vibrate from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public final clearCurrentSessionLocked()V
    .locals 1

    .line 2331
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_0

    .line 2332
    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->unlinkToDeath()V

    .line 2333
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    const/4 v0, 0x0

    .line 2334
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 2335
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method public final clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 2311
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public final clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 2

    .line 2317
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_1

    .line 2318
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping pending vibration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    const/4 p1, 0x0

    .line 2324
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    :cond_1
    return-void
.end method

.method public final createSessionVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 1

    const/4 v0, 0x1

    .line 1167
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p0

    return-object p0
.end method

.method public final createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 9

    .line 1224
    new-instance v0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    .line 1225
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->findVibrationType(Landroid/os/CombinedVibration;)I

    move-result v3

    new-instance v4, Lcom/android/server/vibrator/VibrationStats;

    invoke-direct {v4}, Lcom/android/server/vibrator/VibrationStats;-><init>()V

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v5, p1

    move-object v2, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    return-object v0
.end method

.method public final createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p0

    return-object p0
.end method

.method public final createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 10

    .line 1174
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1176
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    .line 1175
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorControlService;->shouldRequestVibrationParams(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v2, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1179
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 1180
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationSettings;->getRequestVibrationParamsTimeoutMs()I

    move-result v3

    .line 1178
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/vibrator/VibratorControlService;->triggerVibrationParamsRequest(III)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1183
    :goto_1
    new-instance v1, Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    move-object v2, p1

    move-object v5, p2

    move v3, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/VibrationStepConductor;-><init>(Lcom/android/server/vibrator/HalVibration;ZLcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceAdapter;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/util/concurrent/CompletableFuture;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    return-object v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 906
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 908
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 911
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p3, v3

    .line 912
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 918
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 920
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 924
    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .locals 5

    .line 980
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 981
    sget-boolean p1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 982
    const-string p1, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to proto..."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 985
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 986
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationScaler;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 987
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_1

    .line 988
    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v1

    const-wide v2, 0x10b00000002L

    invoke-interface {v1, v0, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 991
    :goto_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 992
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const-wide v3, 0x20500000001L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 994
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 996
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorControlService;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 997
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    .line 994
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpText(Ljava/io/PrintWriter;)V
    .locals 3

    .line 928
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 929
    const-string v0, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to text..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 932
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 933
    :try_start_0
    const-string v1, "VibratorManagerService:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 936
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 937
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 939
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationScaler;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 940
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 942
    const-string v1, "Vibrators:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 944
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 945
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibratorController;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 947
    :cond_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 948
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 950
    const-string v1, "CurrentVibration:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 952
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_2

    .line 953
    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1

    .line 955
    :cond_2
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 957
    :goto_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 958
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 960
    const-string v1, "NextVibration:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 962
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_3

    .line 963
    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_2

    .line 965
    :cond_3
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 967
    :goto_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 968
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 971
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 972
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 974
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 975
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 976
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorControlService;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    .line 968
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 1152
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public final endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1157
    invoke-interface {p1, p2, p3, v0}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    .line 1158
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final enforceUpdateAppOpsStatsPermission(I)V
    .locals 3

    .line 1556
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1559
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    .line 1562
    :cond_1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 1563
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 1562
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 2

    .line 1544
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish AppOp mode VIBRATE for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method public final fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .locals 8

    .line 1625
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1626
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    .line 1627
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;-><init>(Landroid/os/VibrationEffect;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_0

    .line 1628
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_5

    .line 1629
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    .line 1634
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 1635
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1636
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1638
    const-string p0, "VibratorManagerService"

    const-string p1, "Only prebaked effects supported for always-on."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1641
    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1642
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    if-eqz v5, :cond_2

    const-wide/16 v6, 0x40

    .line 1643
    invoke-virtual {v5, v6, v7}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1644
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1647
    :cond_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method public final fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 1673
    invoke-virtual {p2, p0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public final fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .locals 2

    if-nez p1, :cond_0

    .line 1596
    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 1598
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1600
    invoke-virtual {p2}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, 0x12

    .line 1603
    :cond_1
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p2

    and-int/lit8 v1, p2, 0x3

    if-eqz v1, :cond_2

    .line 1605
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 1606
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 1607
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    and-int/lit8 p2, p2, -0x4

    .line 1612
    :cond_2
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    if-ne v0, p0, :cond_3

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p0

    if-ne p2, p0, :cond_3

    return-object p1

    .line 1615
    :cond_3
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 1616
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 1617
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 1618
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilities()I
    .locals 2

    .line 386
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    long-to-int p0, v0

    return p0
.end method

.method public final getCombinedVibratorInfo()Landroid/os/VibratorInfo;
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2408
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2409
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    .locals 4

    .line 2389
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2391
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    if-eqz v1, :cond_0

    .line 2392
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2394
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getCombinedVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 2396
    monitor-exit v0

    return-object p0

    .line 2398
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 2400
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2399
    invoke-virtual {v2, v3, v1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHapticFeedbackVibrationProvider(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    monitor-exit v0

    return-object v1

    .line 2401
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVibratorIds()[I
    .locals 1

    .line 381
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public getVibratorInfo(I)Landroid/os/VibratorInfo;
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 396
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    if-eqz p0, :cond_1

    .line 399
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 401
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->isVibratorInfoLoadSuccessful()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object v0

    .line 401
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 0

    .line 1680
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVibrating(I)Z
    .locals 0

    .line 410
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->isVibrating_enforcePermission()V

    .line 411
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 6

    .line 1197
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    const/4 v1, 0x0

    .line 1198
    invoke-static {v1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1200
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public final logAndRecordSessionAttempt(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 15

    .line 1209
    new-instance v0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;

    .line 1211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v14}, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V

    .line 1209
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-interface {p1, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    .line 1218
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1219
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 0

    .line 1205
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 2

    .line 1231
    sget-object p0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const-string v0, "VibratorManagerService"

    packed-switch p0, :pswitch_data_0

    .line 1268
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vibration for uid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and with attrs="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ended with status "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1262
    :pswitch_0
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring incoming vibration because it came from a virtual device, attrs= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1256
    :pswitch_1
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring incoming vibration because of ringer mode, attrs="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1251
    :pswitch_2
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1252
    const-string p0, "Ignoring incoming vibration in favor of repeating vibration"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1245
    :pswitch_3
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1246
    const-string p0, "Ignoring incoming vibration in favor of ongoing vibration with higher importance"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1240
    :pswitch_4
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1241
    const-string p0, "Ignoring incoming vibration for current external vibration"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1237
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Would be an error: vibrate from uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1233
    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is background, attrs= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final maybeClearCurrentAndNextSessionsLocked(Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 2

    .line 2350
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-nez v1, :cond_0

    .line 2351
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2354
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-nez v1, :cond_1

    .line 2355
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2356
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p0, p2}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    :cond_1
    return-void
.end method

.method public final maybeStartNextSessionLocked()V
    .locals 6

    .line 1129
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/SingleVibrationSession;

    const-string v2, "VibratorManagerService"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1130
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1131
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1133
    sget-boolean v3, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting next vibration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void

    .line 1138
    :cond_1
    instance-of v1, v0, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/server/vibrator/VendorVibrationSession;

    .line 1139
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1140
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1142
    sget-boolean v3, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting next session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    :cond_3
    return-void
.end method

.method public final onAllVibratorsLocked(Ljava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x0

    .line 1710
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1003
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {p5}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1004
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onSyncedVibrationComplete(J)V
    .locals 4

    .line 1291
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_1

    .line 1293
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1294
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Synced vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " complete, notifying thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1296
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSession;->notifySyncedVibratorsCallback(J)V

    .line 1298
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onVibrationComplete(IJJ)V
    .locals 8

    .line 1302
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_1

    .line 1304
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1305
    const-string v0, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " on vibrator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " complete, notifying thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1308
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/vibrator/VibrationSession;->notifyVibratorCallback(IJJ)V

    .line 1310
    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onVibrationSessionComplete(J)V
    .locals 4

    .line 1276
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getSessionId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1283
    :cond_0
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1284
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " complete, notifying session"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1286
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->notifySessionCallback()V

    .line 1287
    monitor-exit v0

    return-void

    .line 1278
    :cond_2
    :goto_1
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 1279
    const-string p0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " callback ignored"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_3
    monitor-exit v0

    return-void

    .line 1287
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public performHapticFeedback(IILjava/lang/String;ILjava/lang/String;II)V
    .locals 12

    .line 495
    const-string/jumbo v0, "performHapticFeedback"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v9, p0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 501
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 505
    throw p0
.end method

.method public performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V
    .locals 14

    .line 512
    const-string/jumbo v0, "performHapticFeedbackForInputDevice"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v11, p0

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 514
    :try_start_0
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackForInputDeviceInternal(IILjava/lang/String;IIILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 519
    throw p0
.end method

.method public performHapticFeedbackForInputDeviceInternal(IILjava/lang/String;IIILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    .locals 11

    move/from16 v0, p6

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performHapticFeedbackForInputDevice(constant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inputDeviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inputSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 559
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v1

    .line 560
    invoke-virtual {p0, p4, v6, v1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 562
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    const/4 p0, 0x0

    return-object p0

    .line 566
    :cond_0
    invoke-virtual {v1, p4, v0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(II)Landroid/os/VibrationEffect;

    move-result-object v9

    move/from16 v2, p9

    move/from16 v3, p10

    .line 567
    invoke-virtual {v1, p4, v0, v2, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;

    move-result-object v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v8, p8

    move-object v7, v6

    move v6, p4

    .line 565
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    .locals 10

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performHapticFeedback(constant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 534
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v0

    .line 535
    invoke-virtual {p0, p4, v5, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 537
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    const/4 p0, 0x0

    return-object p0

    .line 541
    :cond_0
    invoke-virtual {v0, p4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(I)Landroid/os/VibrationEffect;

    move-result-object v8

    move/from16 v1, p7

    move/from16 v2, p8

    .line 542
    invoke-virtual {v0, p4, v1, v2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(III)Landroid/os/VibrationAttributes;

    move-result-object v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v7, p6

    move-object v6, v5

    move v5, p4

    .line 540
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public final performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;
    .locals 6

    if-nez p7, :cond_0

    .line 575
    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "performHapticFeedbackWithEffect; vibration absent for constant "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v3, p3

    move-object v4, p5

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 581
    invoke-static {p7}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object p5

    .line 582
    invoke-static {p2, p4}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logPerformHapticsFeedbackIfKeyboard(II)V

    move-object p4, p8

    move-object p8, p6

    move-object p6, p4

    move-object p4, v3

    move-object p7, v4

    .line 583
    invoke-virtual/range {p1 .. p8}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithoutPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 0

    .line 418
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener_enforcePermission()V

    .line 419
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 423
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorController;->registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result p0

    return p0
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .locals 13

    move/from16 v0, p3

    move-object/from16 v1, p4

    .line 441
    const-string/jumbo v2, "setAlwaysOnEffect"

    const-wide/32 v3, 0x800000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VIBRATE_ALWAYS_ON"

    const-string/jumbo v6, "setAlwaysOnEffect"

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 449
    :try_start_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 450
    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->onAllVibratorsLocked(Ljava/util/function/Consumer;)V

    .line 455
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 455
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 458
    :cond_0
    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 477
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    :cond_1
    move-object/from16 v5, p5

    .line 461
    :try_start_4
    invoke-virtual {p0, v5, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v8

    .line 462
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 463
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_2

    .line 467
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 477
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 469
    :cond_2
    :try_start_6
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    new-instance v7, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v9, p1

    move-object v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0, v7, v1}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(ILcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/util/SparseArray;)V

    .line 472
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    invoke-virtual {p0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 474
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 477
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    .line 474
    :goto_0
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 477
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 478
    throw p0
.end method

.method public final setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V
    .locals 2

    const/4 v0, 0x0

    .line 1041
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 1043
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibrationStats;->reportSetExternalControl()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final shouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1698
    :cond_0
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final shouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1705
    :cond_0
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsageClass()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public final shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1689
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    .line 1690
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCreateUptimeMillis()J

    move-result-wide v1

    .line 1689
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldCancelVibrationOnScreenOff(Lcom/android/server/vibrator/VibrationSession$CallerInfo;J)Z

    move-result p0

    return p0
.end method

.method public final shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1483
    :cond_0
    instance-of v0, p1, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v0, :cond_1

    return p0

    :cond_1
    if-eqz p3, :cond_2

    .line 1487
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq p3, v0, :cond_2

    return p0

    .line 1491
    :cond_2
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    return p0

    :cond_4
    :goto_0
    return p3

    :cond_5
    and-int/2addr p2, p1

    if-ne p2, p1, :cond_6

    return p3

    :cond_6
    return p0
.end method

.method public final shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_0

    .line 1322
    invoke-static {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1332
    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->wasEndRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1337
    :cond_1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-static {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 1

    .line 1457
    const-string v0, "VibratorManagerService"

    if-nez p3, :cond_0

    .line 1458
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; haptic vibration provider not ready."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1461
    :cond_0
    invoke-virtual {p3, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isRestrictedHapticFeedback(I)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "android.permission.VIBRATE_SYSTEM_CONSTANTS"

    .line 1462
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; no permission for system constant "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->shouldIgnoreVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1440
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 1445
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1447
    :cond_1
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldPipelineVibrationLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/HalVibration;)Z
    .locals 1

    .line 1419
    instance-of v0, p1, Lcom/android/server/vibrator/SingleVibrationSession;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1423
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 1424
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getVibrationPipelineMaxDurationMs()I

    move-result p0

    .line 1423
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/vibrator/HalVibration;->canPipelineWith(Lcom/android/server/vibrator/HalVibration;Landroid/util/SparseArray;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I
    .locals 4

    .line 1529
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1531
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start AppOp mode VIBRATE for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_0
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result p0

    return p0
.end method

.method public final startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 9

    .line 860
    const-string/jumbo v0, "startSessionLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 862
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v3

    .line 863
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "VibratorManagerService"

    if-eqz v0, :cond_0

    .line 864
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting session "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " in HAL"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 866
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 870
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    .line 871
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 p0, 0x2

    if-eq v6, p0, :cond_2

    .line 897
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 900
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 894
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Start AppOpsManager operation errored for uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 900
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 874
    :cond_3
    :try_start_4
    const-string/jumbo v6, "vibration"

    const/4 v7, 0x0

    invoke-static {v1, v2, v6, v7}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 876
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 877
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->linkToDeath()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 880
    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 881
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 900
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 883
    :cond_4
    :try_start_5
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getVibratorIds()[I

    move-result-object v8

    invoke-virtual {v6, v3, v4, v8}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->startSession(J[I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 884
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error starting session "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " on vibrators "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getVibratorIds()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 884
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->unlinkToDeath()V

    .line 887
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 888
    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 889
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 900
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 891
    :cond_5
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyStart()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 900
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v7

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 901
    throw p0
.end method

.method public startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;
    .locals 3

    .line 743
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->startVendorVibrationSession_enforcePermission()V

    .line 744
    const-string/jumbo v0, "startVibrationSession"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 746
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->getCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 751
    throw p0
.end method

.method public startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;
    .locals 7

    const/4 v0, 0x0

    .line 760
    invoke-virtual {p0, p5, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v2

    .line 761
    new-instance v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    move-object p2, v1

    if-nez p7, :cond_0

    .line 763
    const-string p1, "VibratorManagerService"

    const-string/jumbo p3, "session callback must not be null"

    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordSessionAttempt(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 768
    new-array p4, v1, [I

    :cond_1
    move-object v4, p4

    .line 770
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 773
    new-instance p1, Landroid/util/SparseArray;

    array-length p3, v4

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    .line 774
    array-length p3, v4

    move p4, v1

    :goto_0
    if-ge p4, p3, :cond_3

    aget p5, v4, p4

    .line 775
    iget-object p6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p6, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/server/vibrator/VibratorController;

    if-eqz p6, :cond_2

    .line 777
    invoke-virtual {p1, p5, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 780
    :cond_3
    new-instance p5, Lcom/android/server/vibrator/DeviceAdapter;

    iget-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p5, p3, p1}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    .line 781
    new-instance p1, Lcom/android/server/vibrator/VendorVibrationSession;

    iget-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    move-object p6, p7

    invoke-direct/range {p1 .. p6}, Lcom/android/server/vibrator/VendorVibrationSession;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/Handler;Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;Lcom/android/server/vibrator/DeviceAdapter;Landroid/os/vibrator/IVibrationSessionCallback;)V

    const/4 p3, 0x4

    .line 784
    invoke-virtual {v2, p3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 787
    iget-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p3}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 790
    :cond_4
    iget-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 791
    :try_start_0
    sget-boolean p4, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p4, :cond_5

    .line 792
    const-string p6, "VibratorManagerService"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting vendor session "

    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v2

    invoke-virtual {p7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p6, p7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    .line 799
    :cond_5
    :goto_1
    iget-wide p6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    const-wide/16 v2, 0x100

    and-long/2addr p6, v2

    const-wide/16 v2, 0x0

    cmp-long p6, p6, v2

    if-nez p6, :cond_7

    if-eqz p4, :cond_6

    .line 801
    const-string p4, "VibratorManagerService"

    const-string p6, "Missing capability to start sessions, ignoring request"

    invoke-static {p4, p6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_6
    sget-object p4, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    goto :goto_2

    :cond_7
    move-object p4, v0

    :goto_2
    if-nez p4, :cond_9

    .line 808
    array-length p6, v4

    if-eqz p6, :cond_8

    array-length p6, v4

    .line 809
    invoke-virtual {p5}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibratorIds()[I

    move-result-object p5

    array-length p5, p5

    if-eq p6, p5, :cond_9

    .line 810
    :cond_8
    const-string p4, "VibratorManagerService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Bad vibrator ids to start session, ignoring request. requested="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " available="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 812
    invoke-static {p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 810
    invoke-static {p4, p5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object p4, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    :cond_9
    if-nez p4, :cond_a

    .line 819
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p4

    :cond_a
    if-nez p4, :cond_b

    .line 824
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p5

    if-eqz p5, :cond_b

    .line 826
    iget-object p4, p5, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 827
    iget-object v0, p5, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    :cond_b
    if-nez p4, :cond_d

    .line 833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    :try_start_1
    sget-object p7, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p7, p2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 837
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_c

    .line 838
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 839
    invoke-interface {v2, p7, p2, v1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 842
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 845
    :goto_3
    :try_start_2
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 846
    throw p0

    :cond_d
    :goto_5
    if-eqz p4, :cond_e

    .line 851
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 853
    :cond_e
    monitor-exit p3

    return-object p1

    .line 854
    :goto_6
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final startVibrationLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 4

    .line 1069
    const-string/jumbo v0, "startVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v0}, Lcom/android/server/vibrator/InputDeviceDelegate;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1074
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v0, :cond_1

    .line 1075
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 1081
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1082
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1085
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1086
    throw p0
.end method

.method public final startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/HalVibration;->scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V

    .line 1191
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p1}, Lcom/android/server/vibrator/HalVibration;->getEffectToPlay()Landroid/os/CombinedVibration;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->vibrateIfAvailable(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)Z

    .line 1192
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public final startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 6

    .line 1092
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    const-string v1, "VibratorManagerService"

    if-eqz v0, :cond_0

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting vibration "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " on thread"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    .line 1096
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/SingleVibrationSession;->setVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1097
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    .line 1098
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x2

    if-eq v3, p0, :cond_1

    .line 1123
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1120
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Start AppOpsManager operation errored for uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1101
    :cond_2
    const-string/jumbo v1, "vibration"

    const/4 v3, 0x0

    const-wide/32 v4, 0x800000

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1103
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1104
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->linkToDeath()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 1106
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1107
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1108
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1110
    :cond_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationThread;->runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1112
    invoke-virtual {p1, v3}, Lcom/android/server/vibrator/SingleVibrationSession;->setVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1113
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->unlinkToDeath()V

    .line 1114
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1115
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1116
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_4
    return-object v3
.end method

.method public systemReady()V
    .locals 7

    .line 346
    const-string v0, "VibratorManagerService"

    const-string v1, "Initializing VibratorManager service..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string/jumbo v0, "systemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    .line 350
    :try_start_0
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 351
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->reloadVibratorInfoIfNeeded()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    .line 356
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/VibratorInfo;

    .line 357
    :goto_1
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 358
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibratorInfo;

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    .line 360
    invoke-static {v0, v5}, Landroid/os/vibrator/VibratorInfoFactory;->create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    .line 361
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    :try_start_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    .line 364
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v0}, Lcom/android/server/vibrator/InputDeviceDelegate;->onSystemReady()V

    .line 366
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibrationSettings;->addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_3
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 373
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 374
    const-string p0, "VibratorManagerService"

    const-string v0, "VibratorManager service initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2
    move-exception p0

    .line 373
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 361
    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 371
    :goto_3
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 372
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 373
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 374
    const-string p0, "VibratorManagerService"

    const-string v3, "VibratorManager service initialized"

    invoke-static {p0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 376
    throw v0

    :catchall_3
    move-exception p0

    .line 373
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0
.end method

.method public final transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;
    .locals 4

    .line 1717
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 1718
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1719
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 0

    .line 430
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener_enforcePermission()V

    .line 431
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 435
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorController;->unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result p0

    return p0
.end method

.method public final updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .locals 5

    const/4 v0, 0x0

    .line 1049
    :goto_0
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1050
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 1051
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1055
    :cond_0
    iget-object v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1057
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1062
    :goto_1
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateServiceState()V
    .locals 5

    .line 1009
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_0
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1011
    const-string v1, "VibratorManagerService"

    const-string v2, "Updating device state..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1013
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 1014
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateInputDevices()Z

    move-result v2

    .line 1013
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    move-result v1

    const/4 v2, 0x0

    .line 1016
    :goto_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1017
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1020
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v2, :cond_2

    .line 1021
    monitor-exit v0

    return-void

    .line 1024
    :cond_2
    instance-of v3, v2, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v3, :cond_3

    .line 1026
    monitor-exit v0

    return-void

    .line 1029
    :cond_3
    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_7

    .line 1031
    :cond_4
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1032
    const-string v1, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling vibration because settings changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_5

    .line 1033
    const-string v2, "input devices changed"

    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1032
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_6
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, v1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1037
    :cond_7
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3

    .line 484
    const-string/jumbo v0, "vibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 486
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 489
    throw p0
.end method

.method public final vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .locals 6

    .line 611
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v1, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p7, :cond_0

    .line 613
    const-string p2, "VibratorManagerService"

    const-string/jumbo p3, "token must not be null"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p4, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p1

    .line 617
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 618
    invoke-static {p4}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 619
    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p4, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p1

    .line 622
    :cond_1
    invoke-virtual {p4}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 628
    const-string p2, "android.permission.VIBRATE_VENDOR_EFFECTS"

    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 629
    const-string p2, "VibratorManagerService"

    const-string/jumbo p3, "vibrate; no permission for vendor effects"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p4, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p1

    .line 635
    :cond_2
    new-instance p2, Lcom/android/server/vibrator/SingleVibrationSession;

    invoke-direct {p2, p7, v0, p4}, Lcom/android/server/vibrator/SingleVibrationSession;-><init>(Landroid/os/IBinder;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    .line 636
    invoke-virtual {p2}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p3

    .line 637
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p5, p4}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    invoke-virtual {p3, p5}, Lcom/android/server/vibrator/HalVibration;->fillFallbacks(Ljava/util/function/IntFunction;)V

    const/4 p4, 0x4

    .line 639
    invoke-virtual {v1, p4}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 642
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 645
    :cond_3
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 646
    :try_start_0
    sget-boolean p5, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p5, :cond_4

    .line 647
    const-string p6, "VibratorManagerService"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting vibrate for vibration "

    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {p7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p6, p7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 651
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p6

    if-nez p6, :cond_5

    .line 656
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p7

    if-eqz p7, :cond_5

    .line 658
    iget-object p6, p7, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 659
    iget-object p1, p7, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    :cond_5
    if-nez p6, :cond_8

    .line 666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    :try_start_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_7

    .line 669
    invoke-virtual {p0, v1, p3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldPipelineVibrationLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/HalVibration;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p5, :cond_7

    .line 675
    const-string p5, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pipelining vibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 678
    :cond_6
    iget-object p5, p3, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 679
    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    .line 678
    invoke-virtual {p5, v1}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 680
    iget-object p5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v2, 0x0

    invoke-interface {p5, v1, v0, v2}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    .line 684
    :cond_7
    :goto_1
    sget-object p5, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p5, v0}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 685
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 687
    :try_start_2
    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p6, p5

    goto :goto_3

    :goto_2
    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 688
    throw p0

    :cond_8
    :goto_3
    if-eqz p6, :cond_9

    .line 693
    invoke-virtual {p0, p2, p6, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 695
    :cond_9
    monitor-exit p4

    return-object p3

    .line 696
    :goto_4
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .locals 3

    .line 596
    invoke-virtual {p0, p5, p4}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p5

    .line 597
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string/jumbo v2, "vibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public vibrateWithoutPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .locals 0

    .line 605
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public waitForCurrentSessionEnd(J)Z
    .locals 4

    .line 2368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 2370
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2372
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v3, :cond_0

    .line 2373
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    cmp-long v3, v0, p1

    if-ltz v3, :cond_1

    .line 2376
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    return p0

    .line 2379
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2381
    :catch_0
    :try_start_2
    const-string v0, "VibratorManagerService"

    const-string v1, "VibratorManagerService interrupted waiting to stop, continuing"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    .line 2385
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
