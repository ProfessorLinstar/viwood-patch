.class public Lcom/android/server/display/HighBrightnessModeController;
.super Ljava/lang/Object;
.source "HighBrightnessModeController.java"


# static fields
.field public static final DEBUG:Z

.field static final HBM_TRANSITION_POINT_INVALID:F = Infinityf


# instance fields
.field public mAmbientLux:F

.field public mBrightness:F

.field public final mBrightnessMax:F

.field public final mBrightnessMin:F

.field public final mClock:Lcom/android/server/display/DisplayManagerService$Clock;

.field public final mContext:Landroid/content/Context;

.field public mDisplayStatsId:I

.field public mForceHbmChangeCallback:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmChangeCallback:Ljava/lang/Runnable;

.field public mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

.field public mHbmMode:I

.field public mHbmStatsState:I

.field public mHdrBoostDisabled:Z

.field public mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

.field public mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

.field public mHeight:I

.field public mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsAutoBrightnessOffByState:Z

.field public mIsBlockedByLowPowerMode:Z

.field mIsHdrLayerPresent:Z

.field public mIsInAllowedAmbientRange:Z

.field public mIsTimeAvailable:Z

.field public mMaxDesiredHdrSdrRatio:F

.field public final mRecalcRunnable:Ljava/lang/Runnable;

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public final mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

.field public mThrottlingReason:I

.field public mUnthrottledBrightness:F

.field public mWidth:I


# direct methods
.method public static synthetic $r8$lambda$Ch4tw554EqFz0NWU9cX3C2f2K7s(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method public static synthetic $r8$lambda$P9bufWROwnLfROHxW5qwb2tgs3M(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->lambda$dump$0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/config/HighBrightnessModeData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdrBrightnessCfg(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxDesiredHdrSdrRatio(Lcom/android/server/display/HighBrightnessModeController;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmForceHbmChangeCallback(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxDesiredHdrSdrRatio(Lcom/android/server/display/HighBrightnessModeController;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateHbmMode(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "HighBrightnessModeController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V
    .locals 14

    .line 136
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/HighBrightnessModeController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 101
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 104
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 105
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 108
    iput v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    .line 109
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    const/4 v1, 0x1

    .line 115
    iput v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 130
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    .line 145
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 146
    iput-object p13, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$Injector;->getClock()Lcom/android/server/display/DisplayManagerService$Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    .line 148
    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 149
    iput p7, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 150
    iput p7, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 151
    iput p8, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 152
    iput-object p11, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    .line 153
    iput-object p12, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 154
    new-instance p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 155
    new-instance p1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    .line 156
    new-instance p1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-direct {p1, p0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    move-object p2, p0

    move-object p7, p9

    move-object p8, p10

    .line 158
    invoke-virtual/range {p2 .. p8}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    return-void
.end method


# virtual methods
.method public final calculateHighBrightnessMode()I
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 604
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final calculateRemainingTime(J)J
    .locals 11

    .line 405
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide v3

    cmp-long v0, v3, v1

    .line 414
    const-string v5, "HighBrightnessModeController"

    if-lez v0, :cond_2

    cmp-long v0, v3, p1

    if-lez v0, :cond_1

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start time set to the future. curr: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", start: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/HighBrightnessModeMetadata;->setRunningStartTimeMillis(J)V

    move-wide v3, p1

    :cond_1
    sub-long v3, p1, v3

    goto :goto_0

    :cond_2
    move-wide v3, v1

    .line 424
    :goto_0
    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time already used after current session: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v6, v0, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    sub-long/2addr p1, v6

    .line 430
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeMetadata;->getHbmEventQueue()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 431
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/HbmEvent;

    .line 435
    invoke-virtual {v6}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-gez v7, :cond_4

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 440
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 442
    invoke-virtual {v6}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    add-long/2addr v3, v9

    goto :goto_1

    .line 445
    :cond_5
    sget-boolean p1, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Time already used after all sessions: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMaxMillis:J

    sub-long/2addr p0, v3

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public deviceSupportsHbm()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public disableHdrBoost()V
    .locals 1

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    .line 389
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HbmEvent;)J
    .locals 4

    .line 362
    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 363
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    event: ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .locals 7

    .line 313
    const-string v0, "HighBrightnessModeController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnthrottledBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    const/4 v2, 0x2

    const-string v3, ""

    if-ne v1, v2, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmStatsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/HighBrightnessModeController;->hbmStatsStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 325
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, " (old/invalid)"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsInAllowedAmbientRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessOffByState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHdrLayerPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsTimeAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBlockedByLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  width*height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBoostDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    if-eqz v0, :cond_5

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRunningStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 341
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide v1

    .line 340
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    const-string v0, "  mEvents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 345
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 347
    new-instance v4, Lcom/android/server/display/HbmEvent;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/android/server/display/HbmEvent;-><init>(JJ)V

    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HbmEvent;)J

    move-result-wide v0

    .line 349
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeMetadata;->getHbmEventQueue()Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/HbmEvent;

    .line 350
    invoke-virtual {v3}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    event: [normal brightness]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v3}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HbmEvent;)J

    move-result-wide v0

    goto :goto_2

    :cond_4
    return-void

    .line 357
    :cond_5
    const-string p0, "  mHighBrightnessModeMetadata=null"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentBrightnessMax()F
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    return p0

    .line 185
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    return p0
.end method

.method public getCurrentBrightnessMin()F
    .locals 0

    .line 177
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    return p0
.end method

.method public getHdrBrightnessValue()F
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    if-eqz v0, :cond_0

    .line 199
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;->getHdrBrightnessFromSdr(FF)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-static {v0, v1, v2, v3, p0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    return p0
.end method

.method public getHdrListener()Lcom/android/server/display/HighBrightnessModeController$HdrListener;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    return-object p0
.end method

.method public getHighBrightnessMode()I
    .locals 0

    .line 263
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    return p0
.end method

.method public getNormalBrightnessMax()F
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    return p0
.end method

.method public getTransitionPoint()F
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    return p0

    :cond_0
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0
.end method

.method public final hbmStatsStateToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    .line 597
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 595
    :cond_0
    const-string p0, "HBM_ON_SUNLIGHT"

    return-object p0

    .line 593
    :cond_1
    const-string p0, "HBM_ON_HDR"

    return-object p0

    .line 591
    :cond_2
    const-string p0, "HBM_OFF"

    return-object p0
.end method

.method public isHbmCurrentlyAllowed()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isThermalThrottlingActive()Z
    .locals 2

    .line 583
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$dump$0(Ljava/io/PrintWriter;)V
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onAmbientLuxChange(F)V
    .locals 1

    .line 216
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    .line 217
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumLux:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 222
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eq p1, v0, :cond_2

    .line 223
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBrightnessChanged(FFI)V
    .locals 6

    .line 230
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 234
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 235
    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 239
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v2

    .line 241
    :goto_0
    iget v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v4, :cond_2

    move v2, v3

    :cond_2
    if-eq p3, v2, :cond_4

    .line 244
    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {p3}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    if-eqz v2, :cond_3

    .line 246
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/display/HighBrightnessModeMetadata;->setRunningStartTimeMillis(J)V

    goto :goto_1

    .line 248
    :cond_3
    new-instance p3, Lcom/android/server/display/HbmEvent;

    invoke-direct {p3, p1, p2, v3, v4}, Lcom/android/server/display/HbmEvent;-><init>(JJ)V

    .line 249
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {p1, p3}, Lcom/android/server/display/HighBrightnessModeMetadata;->addHbmEvent(Lcom/android/server/display/HbmEvent;)V

    .line 250
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/HighBrightnessModeMetadata;->setRunningStartTimeMillis(J)V

    .line 252
    sget-boolean p1, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "New HBM event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 254
    invoke-virtual {p2}, Lcom/android/server/display/HighBrightnessModeMetadata;->getHbmEventQueue()Ljava/util/ArrayDeque;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    const-string p2, "HighBrightnessModeController"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method public onHdrBoostApplied(Z)V
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    if-eqz v0, :cond_0

    .line 400
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    :cond_0
    return-void
.end method

.method public final recalculateTimeAllowance()V
    .locals 17

    move-object/from16 v0, p0

    .line 456
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 457
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v3

    .line 461
    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v6, v5, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    cmp-long v6, v3, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ltz v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    if-nez v6, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_1

    .line 462
    iget v9, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-nez v6, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    move v7, v8

    .line 464
    :cond_3
    iput-boolean v7, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 469
    iget-object v7, v0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v7}, Lcom/android/server/display/HighBrightnessModeMetadata;->getHbmEventQueue()Ljava/util/ArrayDeque;

    move-result-object v7

    .line 470
    iget v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v9, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v9, v9, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    add-long v11, v1, v3

    const-wide/16 v15, -0x1

    goto :goto_2

    .line 473
    :cond_4
    iget-boolean v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v8, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 477
    iget-object v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v11, v8, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    sub-long v11, v1, v11

    .line 478
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/HbmEvent;

    .line 480
    invoke-virtual {v8}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iget-object v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    const-wide/16 v15, -0x1

    iget-wide v9, v8, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    add-long/2addr v13, v9

    sub-long/2addr v13, v11

    add-long/2addr v13, v1

    sub-long v11, v13, v3

    goto :goto_2

    :cond_5
    const-wide/16 v15, -0x1

    move-wide v11, v15

    .line 487
    :goto_2
    sget-boolean v8, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz v8, :cond_7

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HBM recalculated.  IsAllowedWithoutRestrictions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isOnlyAllowedToStayOn: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", remainingAllowedTime: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isLuxHigh: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHBMCurrentlyAllowed: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHdrLayerPresent: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mMaxDesiredHdrSdrRatio: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", isAutoBrightnessEnabled: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsTimeAvailable: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsInAllowedAmbientRange: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsBlockedByLowPowerMode: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBrightness: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mUnthrottledBrightness: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mThrottlingReason: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 503
    invoke-static {v3}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RunningStartTimeMillis: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 505
    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", nextTimeout: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v3, v11, v15

    if-eqz v3, :cond_6

    sub-long v1, v11, v1

    goto :goto_3

    :cond_6
    move-wide v1, v15

    .line 506
    :goto_3
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", events: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    const-string v2, "HighBrightnessModeController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    cmp-long v1, v11, v15

    if-eqz v1, :cond_8

    .line 511
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    add-long/2addr v11, v3

    invoke-virtual {v1, v2, v11, v12}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 515
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method public final registerHdrListener(Landroid/os/IBinder;)V
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 622
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz p1, :cond_2

    .line 624
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 286
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 287
    iput-object p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    .line 288
    iput-object p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    .line 289
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    .line 291
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 292
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    .line 293
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0, p3}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 296
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-boolean p1, p1, Lcom/android/server/display/config/HighBrightnessModeData;->allowInLowPowerMode:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 297
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 298
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method public setAutoBrightnessEnabled(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 163
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-ne v2, p1, :cond_2

    goto :goto_2

    .line 168
    :cond_2
    sget-boolean p1, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessEnabled( "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HighBrightnessModeController"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 173
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    :cond_4
    :goto_2
    return-void
.end method

.method public setHighBrightnessModeMetadata(Lcom/android/server/display/HighBrightnessModeMetadata;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 276
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    return-void
.end method

.method public final unregisterHdrListener()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    :cond_0
    return-void
.end method

.method public final updateHbmMode()V
    .locals 2

    .line 519
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->calculateHighBrightnessMode()I

    move-result v0

    .line 520
    invoke-virtual {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmStats(I)V

    .line 521
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 522
    iput-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    .line 523
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 524
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final updateHbmStats(I)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v4, v4, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 533
    iget p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v3, v3, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 537
    :goto_0
    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    if-ne p1, v3, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    if-ne v3, v0, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-ne p1, v0, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    if-eqz v3, :cond_c

    if-nez v5, :cond_c

    .line 550
    iget-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v3, :cond_5

    iget-boolean v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    if-eqz v5, :cond_5

    const/4 v0, 0x6

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    const/4 v0, 0x7

    goto :goto_3

    .line 556
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-nez v3, :cond_7

    move v0, v1

    goto :goto_3

    .line 558
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v1, :cond_8

    move v0, v2

    goto :goto_3

    .line 560
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isThermalThrottlingActive()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 563
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_3

    .line 566
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    goto :goto_3

    .line 569
    :cond_b
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    const/16 v0, 0x9

    goto :goto_3

    :cond_c
    move v0, v4

    .line 576
    :goto_3
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/display/HighBrightnessModeController$Injector;->reportHbmStateChange(III)V

    .line 577
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    return-void
.end method
