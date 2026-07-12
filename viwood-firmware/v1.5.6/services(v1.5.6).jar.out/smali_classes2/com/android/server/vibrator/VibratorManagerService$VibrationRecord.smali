.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# instance fields
.field public final mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .locals 0

    .line 2271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2272
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 2299
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dumpCompact(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    .line 2304
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public getCreateUptimeMs()J
    .locals 2

    .line 2282
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCreateUptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupKey()I
    .locals 0

    .line 2277
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    return p0
.end method

.method public mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z
    .locals 3

    .line 2287
    instance-of v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2290
    :cond_0
    check-cast p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    .line 2291
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    .line 2292
    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    .line 2293
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getDumpAggregationKey()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getDumpAggregationKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
