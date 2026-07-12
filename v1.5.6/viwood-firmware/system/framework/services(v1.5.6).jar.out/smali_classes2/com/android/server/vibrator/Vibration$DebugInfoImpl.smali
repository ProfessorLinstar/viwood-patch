.class public final Lcom/android/server/vibrator/Vibration$DebugInfoImpl;
.super Ljava/lang/Object;
.source "Vibration.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession$DebugInfo;


# instance fields
.field public final mAdaptiveScale:F

.field public final mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final mCreateTime:J

.field public final mCreateUptime:J

.field public final mDurationMs:J

.field public final mEndTime:J

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public final mPlayedEffect:Landroid/os/CombinedVibration;

.field public final mScaleLevel:I

.field public final mStartTime:J

.field public final mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

.field public final mStatus:Lcom/android/server/vibrator/VibrationSession$Status;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    iput-object p2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 160
    iget v0, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object p2, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 161
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p2

    .line 160
    invoke-virtual {p4, v0, p3, p2, p1}, Lcom/android/server/vibrator/VibrationStats;->toStatsInfo(IIILcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 162
    iput-object p5, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    .line 163
    iput-object p6, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 164
    iput p7, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    .line 165
    iput p8, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    .line 166
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 168
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getCreateUptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateUptime:J

    .line 169
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getCreateTimeDebug()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    .line 170
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getStartTimeDebug()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    .line 171
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getEndTimeDebug()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    .line 172
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getDurationDebug()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 7

    .line 257
    const-string v0, "Vibration:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "durationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    const/4 v1, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playedEffect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "originalEffect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptiveScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.2f"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callerInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    .line 275
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000001L

    .line 276
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000002L

    .line 277
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000007L

    .line 278
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 279
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide v1, 0x10e00000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b00000005L

    .line 281
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 282
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 283
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    .line 284
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    .line 285
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 286
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 288
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_0

    const-wide v1, 0x10b00000003L

    .line 289
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_1

    const-wide v1, 0x10b00000004L

    .line 292
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 295
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpCompact(Landroid/util/IndentingPrintWriter;)V
    .locals 13

    .line 224
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 225
    :goto_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    .line 227
    invoke-static {v4, v5, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_1

    .line 228
    const-string v0, "external"

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_1
    const-string v0, "effect"

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 229
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    .line 230
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 231
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v10, v0, v4

    const-string v12, ""

    if-nez v10, :cond_2

    move-object v10, v12

    goto :goto_3

    :cond_2
    invoke-static {v0, v1, v2}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 232
    :goto_3
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    move-object v11, v12

    goto :goto_4

    :cond_3
    invoke-static {v0, v1, v2}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_4
    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 225
    const-string v1, "%s | %8s | %20s | duration: %5dms | start: %12s | end: %12s"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    .line 235
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 236
    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 237
    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 233
    const-string v2, " | scale: %8s (adaptive=%.2f) | flags: %4s | usage: %s"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " | audioUsage="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 243
    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v4

    .line 242
    invoke-static {v4}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 245
    :cond_4
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v5, v5, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    filled-new-array {v4, v2, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 245
    const-string v4, " | %s (uid=%d, deviceId=%d) | reason: %s"

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    const/4 v5, 0x0

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v4

    .line 251
    :goto_5
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 248
    const-string v4, " | played: %s | original: %s"

    invoke-static {v3, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V
    .locals 2

    .line 325
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x20b00000001L

    .line 326
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p4

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    .line 327
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Sequential;)V
    .locals 5

    .line 308
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v0, 0x0

    .line 309
    :goto_0
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 310
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    .line 311
    instance-of v2, v1, Landroid/os/CombinedVibration$Mono;

    const-wide v3, 0x20b00000001L

    if-eqz v2, :cond_0

    .line 312
    check-cast v1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V

    goto :goto_1

    .line 314
    :cond_0
    instance-of v2, v1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v2, :cond_1

    .line 315
    check-cast v1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V

    .line 318
    :cond_1
    :goto_1
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide v2, 0x20500000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V
    .locals 4

    .line 332
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v0, 0x0

    .line 333
    :goto_0
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 334
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const-wide v2, 0x20500000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 335
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    const-wide v2, 0x20b00000001L

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V
    .locals 1

    .line 301
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 302
    invoke-virtual {v0, p4}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p4

    .line 303
    invoke-virtual {p4}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p4

    check-cast p4, Landroid/os/CombinedVibration$Sequential;

    .line 300
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Sequential;)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V
    .locals 4

    .line 342
    instance-of v0, p4, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_1

    check-cast p4, Landroid/os/VibrationEffect$Composed;

    .line 343
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 344
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    const-wide v2, 0x10b00000001L

    .line 345
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V

    goto :goto_0

    :cond_0
    const-wide v0, 0x10500000002L

    .line 347
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 348
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1
    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V
    .locals 2

    .line 387
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 388
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result p0

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 389
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    .line 390
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 391
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V
    .locals 2

    .line 396
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 397
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result p0

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10200000002L

    .line 398
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10500000003L

    .line 399
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 400
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V
    .locals 4

    .line 376
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 377
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10200000002L

    .line 378
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10200000003L

    .line 379
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10200000004L

    .line 380
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10200000005L

    .line 381
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 382
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V
    .locals 4

    .line 368
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 369
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10200000002L

    .line 370
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10200000003L

    .line 371
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 372
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V
    .locals 2

    .line 354
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 355
    instance-of v0, p4, Landroid/os/vibrator/StepSegment;

    if-eqz v0, :cond_0

    const-wide v0, 0x10b00000003L

    .line 356
    check-cast p4, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V

    goto :goto_0

    .line 357
    :cond_0
    instance-of v0, p4, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_1

    const-wide v0, 0x10b00000004L

    .line 358
    check-cast p4, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V

    goto :goto_0

    .line 359
    :cond_1
    instance-of v0, p4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v0, :cond_2

    const-wide v0, 0x10b00000001L

    .line 360
    check-cast p4, Landroid/os/vibrator/PrebakedSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V

    goto :goto_0

    .line 361
    :cond_2
    instance-of v0, p4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v0, :cond_3

    const-wide v0, 0x10b00000002L

    .line 362
    check-cast p4, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V

    .line 364
    :cond_3
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public getCreateUptimeMillis()J
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateUptime:J

    return-wide v0
.end method

.method public getDumpAggregationKey()Ljava/lang/Object;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationAdaptiveHapticScale(IF)V

    .line 214
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibrationReportedAsync(Lcom/android/server/vibrator/VibrationStats$StatsInfo;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 218
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    .line 217
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationCountAndSizeIfVendorEffect(ILandroid/os/CombinedVibration;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    .line 199
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playedEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    .line 206
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adaptiveScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    .line 207
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.2f"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
