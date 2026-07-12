.class public Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field public static final CHARGING_VIBRATION_AMPLITUDE:[I

.field public static final CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final CHARGING_VIBRATION_TIME:[J

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public mBroadcastInProgress:Z

.field public mBroadcastStartTime:J

.field public mBroadcastedInteractiveState:I

.field public final mContext:Landroid/content/Context;

.field public mDisplayInteractivities:Landroid/util/SparseBooleanArray;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

.field public final mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

.field public final mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field public mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

.field public final mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

.field public final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field public final mInjector:Lcom/android/server/power/Notifier$Injector;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mInteractivityByGroupId:Landroid/util/SparseArray;

.field public final mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLock:Ljava/lang/Object;

.field public final mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field public mPendingGoToSleepBroadcast:Z

.field public mPendingInteractiveState:I

.field public mPendingWakeUpBroadcast:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final mScreenOffIntent:Landroid/content/Intent;

.field public final mScreenOnIntent:Landroid/content/Intent;

.field public final mScreenOnOffOptions:Landroid/os/Bundle;

.field public final mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

.field public final mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

.field public final mShowWirelessChargingAnimationConfig:Z

.field public final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public final mSuspendWhenScreenOffDueToProximityConfig:Z

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mUserActivityPending:Z

.field public final mVibrator:Landroid/os/Vibrator;

.field public final mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

.field public final mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public static synthetic $r8$lambda$JPimfzsYkXWexBDnIhDxNZnALw4(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleEarlyInteractiveChange$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$NfLwjQ1rEoAdiv20_xGg1-SMd6o(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/power/Notifier;->lambda$notifyWakelockChanging$10(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QTIfwUkFSEuVLy0XrFJFdtz0REM(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->lambda$handleEarlyGlobalInteractiveChange$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$QUpiaPNPRkwU8U2MGuOtntv2mQ4(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateInteractiveChange$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rb9qlD2tgScsj7p88_DorCc8zYI(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/power/Notifier;->lambda$notifyWakeLockListener$9(ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SCBmQ4zv_u2tzxzELhkoGuGYMPs(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleEarlyInteractiveChange$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SkDw-9Ah-PeuwEpn0oKEUC_Tixs(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateGlobalInteractiveChange$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YuWSecaCBIZkdw6vgJo0U2_0waI(Lcom/android/server/power/Notifier;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$playChargingStartedFeedback$8(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gr4Sg-fuhq8LQTf-FG_LHQ6nfuE(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->lambda$handleLateGlobalInteractiveChange$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-pS0TGPyPNM3uy9iTCbhgXMEzY(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateInteractiveChange$7(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$twGPsuehH4Hy48BoSYCiwKEMjdU(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->lambda$handleEarlyGlobalInteractiveChange$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastStartTime(Lcom/android/server/power/Notifier;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlockProfile(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->lockProfile(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscreenPolicyChanging(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->screenPolicyChanging(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendEnhancedDischargePredictionBroadcast(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendEnhancedDischargePredictionBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendNextBroadcast(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUserActivity(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->sendUserActivity(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowWiredChargingStarted(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->showWiredChargingStarted(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowWirelessChargingStarted(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->showWirelessChargingStarted(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 122
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_TIME:[J

    .line 126
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_AMPLITUDE:[I

    const/4 v2, -0x1

    .line 131
    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const/16 v0, 0x32

    .line 134
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void

    :array_0
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;Lcom/android/server/power/Notifier$Injector;)V
    .locals 3

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 183
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    .line 189
    new-instance v0, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier$Interactivity;-><init>(Lcom/android/server/power/Notifier-IA;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1095
    new-instance v0, Lcom/android/server/power/Notifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

    .line 1120
    new-instance v0, Lcom/android/server/power/Notifier$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

    .line 221
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    if-nez p10, :cond_0

    .line 222
    new-instance p10, Lcom/android/server/power/Notifier$RealInjector;

    invoke-direct {p10, p0}, Lcom/android/server/power/Notifier$RealInjector;-><init>(Lcom/android/server/power/Notifier;)V

    :cond_0
    iput-object p10, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    .line 223
    iput-object p9, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 224
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 225
    invoke-interface {p10, p2}, Lcom/android/server/power/Notifier$Injector;->getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object p9

    iput-object p9, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 226
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 227
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 228
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    .line 229
    iput-object p7, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 230
    const-class p4, Landroid/app/ActivityManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 231
    const-class p4, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/input/InputManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 232
    const-class p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 233
    const-class p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 234
    const-class p4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 235
    const-class p4, Landroid/app/trust/TrustManager;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/trust/TrustManager;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 236
    const-class p4, Landroid/os/Vibrator;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Vibrator;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 237
    new-instance p4, Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p4, p2, v1}, Lcom/android/server/power/WakefulnessSessionObserver;-><init>(Landroid/content/Context;Lcom/android/server/power/WakefulnessSessionObserver$Injector;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 239
    new-instance p4, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {p4, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 240
    iput-object p8, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 241
    new-instance p1, Landroid/content/Intent;

    const-string p4, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 p4, 0x50200000

    .line 242
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    new-instance p1, Landroid/content/Intent;

    const-string p5, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 246
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->createScreenOnOffBroadcastOptions()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    .line 251
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x1110274

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 253
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x1110239

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    .line 256
    invoke-interface {p10, p2}, Lcom/android/server/power/Notifier$Injector;->getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 257
    invoke-interface {p10, p2}, Lcom/android/server/power/Notifier$Injector;->getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    const/4 p1, 0x1

    .line 261
    :try_start_0
    invoke-interface {p3, p1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p2, 0x21

    .line 263
    invoke-static {p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 266
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isMoveWscLoggingToNotifierEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {p1}, Lcom/android/server/power/Notifier$Injector;->getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 268
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {p1}, Lcom/android/server/power/Notifier$Injector;->getFrameworkStatsLogger()Lcom/android/server/power/FrameworkStatsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    goto :goto_0

    .line 270
    :cond_1
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 271
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    :goto_0
    return-void
.end method


# virtual methods
.method public addScreenTimeoutPolicyListener(IILandroid/os/IScreenTimeoutPolicyListener;)V
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1309
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    if-nez v1, :cond_0

    .line 1311
    new-instance v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-direct {v1, p0, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;-><init>(Lcom/android/server/power/Notifier;I)V

    .line 1313
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1316
    :cond_0
    :goto_0
    invoke-virtual {v1, p3}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->addListener(Landroid/os/IScreenTimeoutPolicyListener;)V

    .line 1317
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearScreenTimeoutPolicyListeners(I)V
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createScreenOnOffBroadcastOptions()Landroid/os/Bundle;
    .locals 2

    .line 280
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 289
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 288
    invoke-virtual {p0, v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    const/4 v0, 0x2

    .line 292
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 293
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 970
    const-string v0, "Notifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 973
    const-string p1, "Partial Wakelock Log:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 974
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {p1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;)V

    .line 976
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 977
    const-string v1, "Full Wakelock Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {v1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;)V

    .line 980
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 981
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final finishPendingBroadcastLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 998
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 999
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final getBatteryStatsWakeLockMonitorType(I)I
    .locals 3

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_3

    const/16 v1, 0x20

    const/4 v2, -0x1

    if-eq p1, v1, :cond_1

    const/16 p0, 0x80

    if-eq p1, p0, :cond_0

    return v2

    :cond_0
    const/16 p0, 0x12

    return p0

    .line 504
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public final getUidForWakeLockLog(ILandroid/os/WorkSource;)I
    .locals 0

    const/4 p0, -0x1

    if-eqz p2, :cond_0

    .line 1444
    invoke-virtual {p2}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p0

    :goto_0
    if-eq p2, p0, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public final getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;
    .locals 0

    .line 1440
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    return-object p0
.end method

.method public getWakelockMonitorTypeForLogging(I)I
    .locals 3

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x6

    const/16 v2, 0x1a

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_3

    const/16 v1, 0x20

    const/4 v2, -0x1

    if-eq p1, v1, :cond_1

    const/16 p0, 0x80

    if-eq p1, p0, :cond_0

    return v2

    :cond_0
    return p0

    .line 532
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public final handleEarlyGlobalInteractiveChange()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    .line 661
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 662
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 663
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 671
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleEarlyInteractiveChange(I)V
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$Interactivity;

    if-nez v1, :cond_0

    .line 635
    const-string p0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no Interactivity entry for groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 638
    :cond_0
    iget v2, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 639
    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 644
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleLateGlobalInteractiveChange()V
    .locals 6

    .line 679
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-wide v4, v3, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    sub-long/2addr v1, v4

    long-to-int v1, v1

    .line 682
    iget-boolean v2, v3, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v2, :cond_0

    .line 684
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 705
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 706
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 707
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v2, v2, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v2

    .line 713
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v5, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x2

    .line 728
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 729
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 730
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 732
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleLateInteractiveChange(I)V
    .locals 4

    .line 741
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$Interactivity;

    if-nez v1, :cond_0

    .line 744
    const-string p0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no Interactivity entry for groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 747
    :cond_0
    iget v2, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 748
    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v1, :cond_1

    .line 749
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 753
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isChargingFeedbackEnabled(I)Z
    .locals 3

    .line 1193
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1195
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "zen_mode"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final synthetic lambda$handleEarlyGlobalInteractiveChange$2()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 657
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {v0, p0}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUpGlobal(I)V

    return-void
.end method

.method public final synthetic lambda$handleEarlyGlobalInteractiveChange$3()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 668
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {v0, p0}, Lcom/android/server/policy/WindowManagerPolicy;->startedGoingToSleepGlobal(I)V

    return-void
.end method

.method public final synthetic lambda$handleEarlyInteractiveChange$0(II)V
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUp(II)V

    return-void
.end method

.method public final synthetic lambda$handleEarlyInteractiveChange$1(II)V
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->startedGoingToSleep(II)V

    return-void
.end method

.method public final synthetic lambda$handleLateGlobalInteractiveChange$4(I)V
    .locals 9

    .line 685
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    .line 686
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 687
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    int-to-long v1, p1

    .line 689
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 690
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 691
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x69e

    .line 690
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 692
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v8, p1

    .line 693
    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 695
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {p1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->finishedWakingUpGlobal(I)V

    return-void
.end method

.method public final synthetic lambda$handleLateGlobalInteractiveChange$5(II)V
    .locals 9

    .line 714
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    .line 715
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 716
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    int-to-long v1, p2

    .line 717
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 718
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 719
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x69f

    .line 718
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 720
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v8, p2

    .line 721
    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 724
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {p1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleepGlobal(I)V

    return-void
.end method

.method public final synthetic lambda$handleLateInteractiveChange$6(II)V
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedWakingUp(II)V

    return-void
.end method

.method public final synthetic lambda$handleLateInteractiveChange$7(II)V
    .locals 0

    .line 751
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleep(II)V

    return-void
.end method

.method public final synthetic lambda$notifyWakeLockListener$9(ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V
    .locals 12

    move-object/from16 v0, p11

    .line 1206
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    .line 1208
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/Notifier;->notifyWakelockAcquisition(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    .line 1211
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/Notifier;->notifyWakelockRelease(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1218
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IWakeLockCallback;->onStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Wakelock.mCallback ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is already dead."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PowerManagerNotifier"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final synthetic lambda$notifyWakelockChanging$10(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 1288
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface/range {p0 .. p11}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to notify the wakelock changing from source via Notifier."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1292
    const-string p1, "PowerManagerNotifier"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$playChargingStartedFeedback$8(IZ)V
    .locals 9

    .line 1144
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_vibration_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 1147
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const-string v7, "Charging started"

    sget-object v8, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v4, 0x3e8

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 1153
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1154
    const-string/jumbo p2, "wireless_charging_started_sound"

    goto :goto_0

    .line 1155
    :cond_1
    const-string p2, "charging_started_sound"

    .line 1153
    :goto_0
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1158
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1160
    invoke-virtual {p1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1161
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    .line 1164
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final lockProfile(I)V
    .locals 1

    .line 1189
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method public final logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V
    .locals 7

    .line 1489
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    if-nez v0, :cond_0

    goto :goto_3

    .line 1492
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->getWakelockMonitorTypeForLogging(I)I

    move-result p1

    if-eqz p4, :cond_5

    .line 1493
    invoke-virtual {p4}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    const/4 p3, 0x0

    move v0, p3

    .line 1497
    :goto_0
    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1498
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {p4, v0}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v1

    .line 1499
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {v2, v1, p2, p1, p5}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(ILjava/lang/String;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    :cond_2
    invoke-virtual {p4}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 1504
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 1505
    new-instance v1, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v1}, Landroid/os/WorkSource$WorkChain;-><init>()V

    .line 1507
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v2

    .line 1508
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v3

    move v4, p3

    .line 1510
    :goto_2
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1511
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v5

    .line 1512
    aget-object v6, v3, v4

    invoke-virtual {v1, v5, v6}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1514
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {v0, p2, v1, p1, p5}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(Ljava/lang/String;Landroid/os/WorkSource$WorkChain;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    .line 1494
    :cond_5
    :goto_4
    iget-object p4, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {p4, p3}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result p3

    .line 1495
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {p0, p3, p2, p1, p5}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(ILjava/lang/String;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    return-void
.end method

.method public notifyScreenTimeoutPolicyChanges(II)V
    .locals 4

    .line 1360
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1361
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1362
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1363
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal;->getGroupIdForDisplay(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1365
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    .line 1366
    invoke-virtual {v2, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->updateScreenTimeoutPolicyAndNotifyIfNeeded(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1369
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1204
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {v0}, Lcom/android/server/power/Notifier$Injector;->currentTimeMillis()J

    move-result-wide v11

    .line 1205
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v13, p1

    move-object/from16 v4, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifyWakelockAcquisition(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v8, p4

    .line 1229
    invoke-virtual {v0, v8}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    if-ltz v6, :cond_2

    const/16 v1, 0x3e8

    if-ne v2, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v7, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz p5, :cond_1

    .line 1235
    :try_start_0
    iget-object v9, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v12, p1

    move/from16 v11, p3

    move-object/from16 v10, p5

    move-object/from16 v13, p7

    move v14, v6

    move v15, v7

    :try_start_1
    invoke-interface/range {v9 .. v15}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_1
    move-object/from16 v10, p5

    .line 1238
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v4, p1

    move/from16 v3, p3

    move-object/from16 v5, p7

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1241
    :try_start_2
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x28

    const/4 v5, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p6

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move v2, v3

    goto :goto_2

    :catch_0
    move v2, v3

    goto :goto_2

    :catch_1
    move/from16 v2, p2

    goto :goto_2

    :catch_2
    :cond_2
    move-object/from16 v10, p5

    .line 1250
    :catch_3
    :goto_2
    invoke-virtual {v0, v8}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object v1

    invoke-virtual {v0, v2, v10}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result v2

    move-wide/from16 v4, p8

    move-object v0, v1

    move v3, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/WakeLockLog;->onWakeLockAcquired(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public final notifyWakelockChanging(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 14

    .line 1281
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 1286
    :cond_0
    iget-object v13, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifyWakelockRelease(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 1257
    invoke-virtual {p0, p4}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_1

    if-eqz p5, :cond_0

    .line 1261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, p1

    move v2, p3

    move-object v1, p5

    move-object v4, p7

    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    :catch_0
    :goto_0
    move v1, p2

    goto :goto_1

    :catch_1
    move-object p1, v1

    goto :goto_0

    :catch_2
    move-object v3, p1

    move-object p1, p5

    goto :goto_0

    :cond_0
    move-object v3, p1

    move v2, p3

    move-object p1, p5

    move-object v4, p7

    .line 1264
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, p2

    :try_start_3
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1266
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p3, 0x28

    const/4 p5, 0x0

    invoke-virtual {p2, p3, v1, p6, p5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :cond_1
    move-object v3, p1

    move v1, p2

    move-object p1, p5

    .line 1272
    :catch_3
    :goto_1
    invoke-virtual {p0, p4}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object p2

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result p0

    invoke-virtual {p2, v3, p0, p8, p9}, Lcom/android/server/power/WakeLockLog;->onWakeLockReleased(Ljava/lang/String;IJ)V

    return-void
.end method

.method public onGlobalWakefulnessChangeStarted(IIJ)V
    .locals 5

    .line 556
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 564
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v1, p1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eq v1, v0, :cond_3

    .line 575
    iget-boolean p1, p1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 581
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 584
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 585
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIds()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    .line 586
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 587
    invoke-virtual {p1, v4, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    .line 594
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0x21

    .line 596
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 601
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iput-boolean v0, p1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 603
    iput p2, p1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 604
    iput-wide p3, p1, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 605
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleEarlyGlobalInteractiveChange()V

    :cond_3
    return-void
.end method

.method public onGroupChanged()V
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->resetDisplayInteractivities()V

    .line 849
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_0
    return-void
.end method

.method public onGroupRemoved(I)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 836
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->removePowerGroup(I)V

    .line 837
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->resetDisplayInteractivities()V

    .line 839
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_0
    return-void
.end method

.method public onGroupWakefulnessChangeStarted(IIIJ)V
    .locals 10

    .line 797
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 800
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 803
    new-instance v1, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/power/Notifier$Interactivity;-><init>(Lcom/android/server/power/Notifier-IA;)V

    .line 804
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 806
    iget-boolean v3, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eq v3, v0, :cond_3

    .line 808
    :cond_1
    iget-boolean v3, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v3, :cond_2

    .line 809
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    .line 813
    :cond_2
    iput-boolean v0, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 814
    iput p3, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 815
    iput-wide p4, v1, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 816
    iput-boolean v2, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange(I)V

    .line 818
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakefulnessChangeStarted(IIIJ)V

    .line 822
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 823
    invoke-virtual {p0, v5, v0}, Lcom/android/server/power/Notifier;->updateDisplayInteractivities(IZ)V

    .line 824
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_3
    return-void
.end method

.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_0

    .line 372
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    const/16 p0, 0xb

    const/4 p2, 0x0

    .line 373
    invoke-static {p0, p3, p1, p4, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v0, 0xb

    move-object v3, p1

    move v1, p2

    move-object v4, p4

    .line 378
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_0

    .line 347
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    const/16 p0, 0xb

    const/4 p2, 0x1

    .line 348
    invoke-static {p0, p3, p1, p4, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/16 v0, 0xb

    move-object v3, p1

    move v1, p2

    move-object v4, p4

    .line 353
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onProfileTimeout(I)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 909
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 910
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 911
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScreenPolicyUpdate(II)V
    .locals 3

    .line 952
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 952
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver;->onScreenPolicyUpdate(JII)V

    .line 955
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 957
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 958
    iput p2, v1, Landroid/os/Message;->arg2:I

    const/4 p1, 0x1

    .line 959
    invoke-virtual {v1, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 960
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 961
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserActivity(III)V
    .locals 2

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p3, p2}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V

    .line 864
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 865
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 864
    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver;->notifyUserActivity(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :catch_0
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 871
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 872
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 873
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 874
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 875
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 876
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 877
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 879
    :cond_0
    :goto_0
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .locals 10

    .line 309
    sget-object v5, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p4

    move-object/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    const/4 v3, 0x1

    move v6, p1

    move-object v8, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v1, p8

    .line 310
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_2

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz p6, :cond_1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p2

    move v2, p5

    move-object/from16 v1, p6

    move-object/from16 v4, p7

    :try_start_1
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v1

    goto :goto_2

    :catch_0
    move-object v9, v1

    goto :goto_2

    :cond_1
    move-object/from16 v9, p6

    .line 322
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v3, p2

    move v1, p4

    move v2, p5

    move-object/from16 v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 325
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x28

    const/4 v4, 0x0

    move-object v3, p3

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    :cond_2
    move-object/from16 v9, p6

    .line 332
    :catch_2
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object p3

    .line 333
    invoke-virtual {p0, p4, v9}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result p5

    const-wide/16 v0, -0x1

    move/from16 p6, p1

    move-object p4, p2

    move-wide/from16 p7, v0

    .line 332
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/power/WakeLockLog;->onWakeLockAcquired(Ljava/lang/String;IIJ)V

    .line 335
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakeLockAcquired(I)V

    return-void
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .locals 18

    move/from16 v1, p9

    move-object/from16 v0, p14

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    .line 402
    :cond_0
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v6, v2

    .line 403
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v8

    move-object/from16 v0, p0

    .line 404
    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    if-eqz p6, :cond_2

    if-eqz v6, :cond_2

    if-ltz v8, :cond_2

    if-ltz v7, :cond_2

    .line 414
    sget-object v14, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    move-object/from16 v13, p6

    move-object v9, v0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    .line 415
    sget-object v5, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object/from16 v0, p0

    move-object/from16 v2, p10

    move/from16 v3, p12

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    const/16 v0, 0x3e8

    move/from16 v4, p12

    if-ne v4, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    and-int v0, p9, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move-object/from16 v3, p0

    move/from16 v5, p5

    move-object/from16 v4, p6

    move-object/from16 v11, p10

    move/from16 v10, p13

    move-object/from16 v12, p15

    move v14, v0

    move-object v9, v6

    move v13, v7

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 421
    :goto_2
    :try_start_0
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/power/Notifier;->notifyWakelockChanging(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_2
    move/from16 v4, p12

    move-object/from16 v0, p8

    move-object/from16 v8, p16

    .line 427
    invoke-static {v0, v8}, Lcom/android/server/power/PowerManagerService;->isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    .line 428
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move/from16 v5, p13

    move-object/from16 v7, p15

    move-object v0, v9

    .line 430
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    return-void

    .line 433
    :cond_3
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move/from16 v4, p12

    move/from16 v5, p13

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    .line 435
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .locals 10

    const/4 v9, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 446
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V

    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V
    .locals 10

    .line 463
    sget-object v5, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p4

    move-object/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    const/4 v3, 0x0

    move v6, p1

    move-object v8, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v1, p8

    .line 464
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_1

    if-eqz p6, :cond_0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p2

    move v2, p5

    move-object/from16 v1, p6

    move-object/from16 v4, p7

    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v1

    goto :goto_0

    :catch_0
    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    .line 474
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v3, p2

    move v1, p4

    move v2, p5

    move-object/from16 v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 476
    iget-object p5, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v0, 0x28

    const/4 v3, 0x0

    invoke-virtual {p5, v0, p4, p3, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    :cond_1
    move-object/from16 v9, p6

    .line 482
    :catch_2
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object p3

    .line 483
    invoke-virtual {p0, p4, v9}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result p4

    const-wide/16 v0, -0x1

    .line 482
    invoke-virtual {p3, p2, p4, v0, v1}, Lcom/android/server/power/WakeLockLog;->onWakeLockReleased(Ljava/lang/String;IJ)V

    .line 485
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    move/from16 p2, p9

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakeLockReleased(II)V

    return-void
.end method

.method public onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    .line 896
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p2, 0x3d

    invoke-virtual {p0, p2, p5, p4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p0, 0x11a

    .line 901
    invoke-static {p0, p1, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public onWakefulnessChangeFinished()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 616
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 617
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 618
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/Notifier$Interactivity;

    .line 619
    iget-boolean v4, v3, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v4, :cond_0

    .line 620
    iput-boolean v0, v3, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 621
    invoke-virtual {p0, v2}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v2, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v2, :cond_2

    .line 625
    iput-boolean v0, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    :cond_2
    return-void
.end method

.method public onWiredChargingStarted(I)V
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 939
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 940
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 941
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 942
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onWirelessChargingStarted(II)V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 923
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 924
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 925
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 926
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 927
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final playChargingStartedFeedback(IZ)V
    .locals 3

    .line 1131
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/power/Notifier;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postEnhancedDischargePredictionBroadcast(J)V
    .locals 1

    .line 1018
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public removeScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1329
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    if-nez v1, :cond_0

    .line 1331
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1334
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->removeListener(Landroid/os/IScreenTimeoutPolicyListener;)V

    .line 1336
    invoke-virtual {v1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1337
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1339
    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetDisplayInteractivities()V
    .locals 10

    .line 770
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 771
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsByGroupsIds()Landroid/util/SparseArray;

    move-result-object v0

    .line 772
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 773
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 774
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 775
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_3

    aget v8, v5, v7

    .line 777
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v9

    if-lez v9, :cond_0

    .line 778
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    .line 779
    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    .line 778
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_4

    .line 781
    :cond_0
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/Notifier$Interactivity;

    if-eqz v9, :cond_2

    .line 783
    iget-boolean v9, v9, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    move v9, v2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v9, 0x1

    .line 785
    :goto_3
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 789
    :cond_4
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public final screenPolicyChanging(II)V
    .locals 0

    .line 1185
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/ScreenUndimDetector;->recordScreenPolicy(II)V

    return-void
.end method

.method public final sendEnhancedDischargePredictionBroadcast()V
    .locals 2

    .line 1022
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.ENHANCED_DISCHARGE_PREDICTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 1023
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1024
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendGoToSleepBroadcast()V
    .locals 9

    .line 1110
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method public final sendNextBroadcast()V
    .locals 5

    .line 1029
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1030
    :try_start_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 1033
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eq v1, v3, :cond_0

    .line 1041
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 1042
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1035
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 1036
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_2

    :cond_1
    if-ne v1, v4, :cond_4

    .line 1047
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 1052
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 1053
    monitor-exit v0

    return-void

    .line 1049
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 1050
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_2

    .line 1057
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_5

    goto :goto_1

    .line 1062
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 1063
    monitor-exit v0

    return-void

    .line 1059
    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 1060
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 1067
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 1068
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 1069
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xaa5

    .line 1071
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(II)I

    if-ne v1, v4, :cond_7

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    return-void

    .line 1076
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    return-void

    .line 1069
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendUserActivity(II)V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_0

    .line 1005
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1007
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 1008
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1010
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->notifyUserActivity()V

    .line 1011
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerInternal;->notifyUserActivity()V

    .line 1012
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->userActivity(II)V

    .line 1013
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v0, p2}, Lcom/android/server/power/FaceDownDetector;->userActivity(I)V

    .line 1014
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenUndimDetector;->userActivity(I)V

    return-void

    .line 1008
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendWakeUpBroadcast()V
    .locals 9

    .line 1085
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 1090
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method public showDismissibleKeyguard()V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->showDismissibleKeyguard()V

    return-void
.end method

.method public final showWiredChargingStarted(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1180
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 1181
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final showWirelessChargingStarted(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1170
    invoke-virtual {p0, p2, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 1173
    iget-boolean p2, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p2, :cond_0

    .line 1174
    invoke-interface {p2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showChargingAnimation(I)V

    .line 1176
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final updateDisplayInteractivities(IZ)V
    .locals 4

    .line 762
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsForGroup(I)[I

    move-result-object p1

    .line 763
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 764
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updatePendingBroadcastLocked()V
    .locals 3

    .line 985
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 989
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 990
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 991
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 992
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 993
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
