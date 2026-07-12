.class public Lcom/android/server/am/BroadcastConstants;
.super Ljava/lang/Object;
.source "BroadcastConstants.java"


# static fields
.field public static final DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public static final DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

.field public static final DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

.field public static final DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

.field public static final DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

.field public static final DEFAULT_MAX_PENDING_BROADCASTS:I

.field public static final DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

.field public static final DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

.field public static final DEFAULT_PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

.field public static final DEFAULT_TIMEOUT:J


# instance fields
.field public ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public CORE_DEFER_UNTIL_ACTIVE:Z

.field public DELAY_CACHED_MILLIS:J

.field public DELAY_FOREGROUND_PROC_MILLIS:J

.field public DELAY_NORMAL_MILLIS:J

.field public DELAY_PERSISTENT_PROC_MILLIS:J

.field public DELAY_URGENT_MILLIS:J

.field public EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

.field public MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

.field public MAX_CONSECUTIVE_URGENT_DISPATCHES:I

.field public MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

.field public MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

.field public MAX_FROZEN_OUTGOING_BROADCASTS:I

.field public MAX_HISTORY_COMPLETE_SIZE:I

.field public MAX_HISTORY_SUMMARY_SIZE:I

.field public MAX_PENDING_BROADCASTS:I

.field public MAX_RUNNING_ACTIVE_BROADCASTS:I

.field public MAX_RUNNING_PROCESS_QUEUES:I

.field public PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

.field public PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

.field public TIMEOUT:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public mSettingsKey:Ljava/lang/String;

.field public mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;


# direct methods
.method public static synthetic $r8$lambda$8SI0Rl4OUf6zQTk_jAQtH5_1owk(Lcom/android/server/am/BroadcastConstants;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettingsConstants(Lcom/android/server/am/BroadcastConstants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateSettingsConstants()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 61
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x2710

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_TIMEOUT:J

    mul-int/lit16 v0, v0, 0x2710

    int-to-long v0, v0

    .line 62
    sput-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 121
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    .line 161
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 174
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    sput v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 188
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 198
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v2, 0x100

    if-eqz v0, :cond_4

    const/16 v0, 0x80

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    .line 252
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    sput v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

    .line 261
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/16 v2, 0x400

    :goto_5
    sput v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

    .line 298
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    .line 299
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 112
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 118
    sget v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    const/4 v0, 0x1

    .line 127
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    const/4 v1, 0x3

    .line 137
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    const/16 v1, 0xa

    .line 147
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    .line 157
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 170
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 183
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 195
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    const-wide/16 v1, 0x1f4

    .line 204
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    const-wide/32 v1, 0x1d4c0

    .line 212
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    const-wide/32 v1, -0x1d4c0

    .line 221
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 230
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    .line 240
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    .line 249
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    .line 258
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    .line 267
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    const-wide/16 v0, 0x7530

    .line 275
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    const/16 v0, 0x20

    .line 285
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_FROZEN_OUTGOING_BROADCASTS:I

    .line 294
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    sget v2, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    .line 305
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 321
    iput-object p1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants()V

    return-void
.end method

.method public static getDeviceConfigBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 382
    invoke-static {p0}, Lcom/android/server/am/BroadcastConstants;->propertyOverrideFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {p0}, Lcom/android/server/am/BroadcastConstants;->propertyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 382
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static propertyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.device_config.activity_manager_native_boot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static propertyOverrideFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.activity_manager_native_boot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    const-string v0, "Broadcast parameters (key="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 467
    const-string v0, ", observing="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 469
    const-string v0, "):"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 471
    const-string v0, "bcast_timeout"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 472
    const-string v0, "bcast_allow_bg_activity_start_timeout"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 473
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 474
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 475
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 477
    const-string v0, "Broadcast parameters (namespace="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 478
    const-string v0, "activity_manager_native_boot"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 479
    const-string v0, "):"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 481
    const-string v0, "bcast_max_running_process_queues"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 482
    const-string v0, "bcast_max_running_active_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 483
    const-string v0, "bcast_max_core_running_blocking_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 483
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 485
    const-string v0, "bcast_max_core_running_non_blocking_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 486
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 485
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 487
    const-string v0, "bcast_max_pending_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 488
    const-string v0, "bcast_delay_normal_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    .line 489
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 490
    const-string v0, "bcast_delay_cached_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    .line 491
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 492
    const-string v0, "bcast_delay_urgent_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 493
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 494
    const-string v0, "bcast_delay_foreground_proc_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    .line 495
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 496
    const-string v0, "bcast_delay_persistent_proc_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    .line 497
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 498
    const-string v0, "bcast_max_history_complete_size"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 499
    const-string v0, "bcast_max_history_summary_size"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 500
    const-string v0, "bcast_max_consecutive_urgent_dispatches"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    .line 501
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 500
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 502
    const-string v0, "bcast_max_consecutive_normal_dispatches"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    .line 503
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 502
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 504
    const-string v0, "bcast_core_defer_until_active"

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 505
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 504
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 506
    const-string/jumbo v0, "pending_cold_start_check_interval_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    .line 507
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 506
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 508
    const-string/jumbo v0, "max_frozen_outgoing_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_FROZEN_OUTGOING_BROADCASTS:I

    .line 509
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 508
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 510
    const-string/jumbo v0, "pending_cold_start_abandon_timeout_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    .line 511
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 510
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 512
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 513
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 514
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getDeviceConfigInt(Ljava/lang/String;I)I
    .locals 0

    .line 387
    invoke-static {p1}, Lcom/android/server/am/BroadcastConstants;->propertyOverrideFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 388
    invoke-static {p1}, Lcom/android/server/am/BroadcastConstants;->propertyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 387
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getDeviceConfigLong(Ljava/lang/String;J)J
    .locals 0

    .line 392
    invoke-static {p1}, Lcom/android/server/am/BroadcastConstants;->propertyOverrideFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-static {p1}, Lcom/android/server/am/BroadcastConstants;->propertyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 392
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMaxRunningQueues()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    add-int/2addr v0, p0

    return v0
.end method

.method public startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 3

    .line 332
    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    .line 334
    new-instance p2, Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/am/BroadcastConstants$SettingsObserver;-><init>(Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    .line 335
    iget-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateSettingsConstants()V

    .line 339
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance p1, Lcom/android/server/am/BroadcastConstants$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/BroadcastConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastConstants;)V

    const-string v0, "activity_manager_native_boot"

    invoke-static {v0, p2, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants()V

    return-void
.end method

.method public final updateDeviceConfigConstants()V
    .locals 6

    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    const-string v0, "bcast_max_running_process_queues"

    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    .line 408
    const-string v0, "bcast_extra_running_urgent_process_queues"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    .line 411
    const-string v0, "bcast_max_consecutive_urgent_dispatches"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    .line 414
    const-string v0, "bcast_max_consecutive_normal_dispatches"

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    .line 417
    const-string v0, "bcast_max_running_active_broadcasts"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 419
    const-string v0, "bcast_max_core_running_blocking_broadcasts"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 422
    const-string v0, "bcast_max_core_running_non_blocking_broadcasts"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 425
    const-string v0, "bcast_max_pending_broadcasts"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    .line 427
    const-string v0, "bcast_delay_normal_millis"

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    .line 429
    const-string v0, "bcast_delay_cached_millis"

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    .line 431
    const-string v0, "bcast_delay_urgent_millis"

    const-wide/32 v2, -0x1d4c0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 433
    const-string v0, "bcast_delay_foreground_proc_millis"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    .line 435
    const-string v0, "bcast_delay_persistent_proc_millis"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    .line 437
    const-string v0, "bcast_max_history_complete_size"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    .line 439
    const-string v0, "bcast_max_history_summary_size"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    .line 441
    const-string v0, "bcast_core_defer_until_active"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 443
    const-string/jumbo v0, "pending_cold_start_check_interval_millis"

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    .line 446
    const-string/jumbo v0, "max_frozen_outgoing_broadcasts"

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_FROZEN_OUTGOING_BROADCASTS:I

    .line 449
    const-string/jumbo v0, "pending_cold_start_abandon_timeout_millis"

    sget-wide v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v0

    sget v2, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    .line 453
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    sput-boolean p0, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    return-void

    :catchall_0
    move-exception v0

    .line 453
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateDeviceConfigConstants(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 397
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants()V

    return-void
.end method

.method public final updateSettingsConstants()V
    .locals 4

    .line 349
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bcast_timeout"

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 359
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bcast_allow_bg_activity_start_timeout"

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 353
    const-string v1, "BroadcastConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad broadcast settings in key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    monitor-exit p0

    return-void

    .line 361
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
