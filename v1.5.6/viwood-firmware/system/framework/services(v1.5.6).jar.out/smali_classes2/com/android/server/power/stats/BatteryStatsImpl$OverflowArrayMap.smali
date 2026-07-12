.class public abstract Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public mActiveOverflow:Landroid/util/ArrayMap;

.field public mCurOverflow:Ljava/lang/Object;

.field public mLastCleanupTimeMs:J

.field public mLastClearTimeMs:J

.field public mLastOverflowFinishTimeMs:J

.field public mLastOverflowTimeMs:J

.field public final mMap:Landroid/util/ArrayMap;

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;I)V
    .locals 0

    .line 4071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4063
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 4072
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    .line 4088
    const-string p1, ""

    .line 4090
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4091
    const-string v0, "*overflow*"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4092
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public cleanup(J)V
    .locals 3

    .line 4097
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    .line 4098
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 4099
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 4100
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 4103
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const-string v0, "BatteryStatsImpl"

    const-string v1, "*overflow*"

    if-nez p1, :cond_2

    .line 4106
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up with no active overflow, but have overflow entry "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 4108
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4107
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4111
    :cond_1
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    return-void

    .line 4114
    :cond_2
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 4115
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cleaning up with active overflow, but no overflow entry: cur="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " map="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 4116
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4115
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getMap()Landroid/util/ArrayMap;
    .locals 0

    .line 4076
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public abstract instantiateObject()Ljava/lang/Object;
.end method

.method public startObject(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    .line 4123
    const-string p1, ""

    .line 4125
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4132
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    const-string v2, "*overflow*"

    if-eqz v0, :cond_3

    .line 4133
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    if-eqz v0, :cond_3

    .line 4136
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-nez p2, :cond_2

    .line 4139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Have active overflow "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but null overflow"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryStatsImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 4141
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4143
    :cond_2
    iget p0, v0, Landroid/util/MutableInt;->value:I

    add-int/2addr p0, v1

    iput p0, v0, Landroid/util/MutableInt;->value:I

    return-object p2

    .line 4150
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4151
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetMAX_WAKELOCKS_PER_UID()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 4154
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 4157
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 4158
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4160
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v2, :cond_5

    .line 4161
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 4163
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/MutableInt;

    invoke-direct {v3, v1}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4164
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    return-object v0

    .line 4169
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object p2

    .line 4170
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public stopObject(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 5

    if-nez p1, :cond_0

    .line 4176
    const-string p1, ""

    .line 4178
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4185
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    .line 4186
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    if-eqz v0, :cond_3

    .line 4189
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 4191
    iget v2, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/util/MutableInt;->value:I

    if-gtz v2, :cond_2

    .line 4193
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4194
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    :cond_2
    return-object v1

    .line 4203
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4204
    const-string v1, "Unable to find object for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4205
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4206
    const-string p1, " in uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4207
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4208
    const-string p1, " mapsize="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4209
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4210
    const-string p1, " activeoverflow="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4211
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4212
    const-string p1, " curoverflow="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4213
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4215
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    .line 4216
    const-string p1, " lastOverflowTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4219
    :cond_4
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_5

    .line 4220
    const-string p1, " lastOverflowFinishTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4221
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4223
    :cond_5
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_6

    .line 4224
    const-string p1, " lastClearTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4225
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4227
    :cond_6
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_7

    .line 4228
    const-string p1, " lastCleanupTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4229
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    sub-long/2addr p0, p2

    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4231
    :cond_7
    const-string p0, "BatteryStatsImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
