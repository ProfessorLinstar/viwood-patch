.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# instance fields
.field public final mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

.field public final mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 2199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2200
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 2203
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;-><init>(II)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    monitor-enter p0

    .line 2217
    :try_start_0
    const-string v0, "Recent vibrations:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2219
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2220
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2222
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2223
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2224
    const-string v0, "Aggregated vibration history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2226
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2227
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1

    monitor-enter p0

    .line 2231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized record(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .locals 2

    monitor-enter p0

    .line 2208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    invoke-direct {v1, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;-><init>(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 2209
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->getLatest()Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    move-result-object p1

    check-cast p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2214
    :cond_0
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
