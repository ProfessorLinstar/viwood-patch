.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;
.super Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.source "VibratorControlService.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    return-void
.end method


# virtual methods
.method public declared-synchronized dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    monitor-enter p0

    if-nez p2, :cond_0

    .line 526
    :try_start_0
    const-string p2, "SCALE:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 528
    :cond_0
    const-string p2, "UNKNOWN:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized findGroupKeyProtoFieldId(I)J
    .locals 0

    monitor-enter p0

    .line 534
    monitor-exit p0

    const-wide p0, 0x20b0000001cL

    return-wide p0
.end method
