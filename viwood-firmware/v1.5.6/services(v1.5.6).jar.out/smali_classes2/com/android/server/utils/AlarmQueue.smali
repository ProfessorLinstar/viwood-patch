.class public abstract Lcom/android/server/utils/AlarmQueue;
.super Ljava/lang/Object;
.source "AlarmQueue.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

.field public final mAlarmTag:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mDumpTitle:Ljava/lang/String;

.field public final mExactAlarm:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

.field public mLastFireTimeElapsed:J

.field public final mLock:Ljava/lang/Object;

.field public mMinTimeBetweenAlarmsMs:J

.field public final mScheduleAlarmRunnable:Ljava/lang/Runnable;

.field public mTriggerTimeElapsed:J


# direct methods
.method public static synthetic $r8$lambda$DeDtocjgDWALOI-1DvzM6Os-uU4(Lcom/android/server/utils/AlarmQueue;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->lambda$setNextAlarmLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmTag(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/utils/AlarmQueue;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExactAlarm(Lcom/android/server/utils/AlarmQueue;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMinTimeBetweenAlarmsMs(Lcom/android/server/utils/AlarmQueue;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTriggerTimeElapsed(Lcom/android/server/utils/AlarmQueue;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/server/utils/AlarmQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/AlarmQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 9

    .line 170
    new-instance v8, Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-direct {v8}, Lcom/android/server/utils/AlarmQueue$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V
    .locals 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/android/server/utils/AlarmQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/AlarmQueue$1;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-direct {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    const-wide/16 v0, -0x1

    .line 151
    iput-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 178
    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    .line 179
    iput-object p3, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    .line 180
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    .line 181
    iput-boolean p5, p0, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    .line 182
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 183
    iput-object p8, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    const-wide/16 p1, 0x0

    cmp-long p1, p6, p1

    if-ltz p1, :cond_0

    .line 187
    iput-wide p6, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    return-void

    .line 185
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "min time between alarms must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addAlarm(Ljava/lang/Object;J)V
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    move-result v1

    .line 197
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 198
    iget-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    cmp-long p1, p2, v2

    if-gez p1, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 202
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 363
    const-string v1, " alarms:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 366
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 367
    const-string p0, "NOT WAITING"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 369
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Pair;

    const/4 v1, 0x0

    .line 370
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 371
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 372
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 373
    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 374
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 380
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMinTimeBetweenAlarmsMs()J
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 213
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract isForUser(Ljava/lang/Object;I)Z
.end method

.method public final synthetic lambda$setNextAlarmLocked$0()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    return-void
.end method

.method public onAlarm()V
    .locals 7

    .line 338
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/AlarmQueue$Injector;->getElapsedRealtime()J

    move-result-wide v2

    .line 341
    iput-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    .line 342
    :goto_0
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 344
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_0

    .line 345
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v5, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v5, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 351
    :cond_0
    iget-wide v4, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 352
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->processExpiredAlarms(Landroid/util/ArraySet;)V

    :cond_1
    return-void

    .line 352
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract processExpiredAlarms(Landroid/util/ArraySet;)V
.end method

.method public removeAlarmForKey(Ljava/lang/Object;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 222
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAlarmsForUserId(I)V
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    .line 230
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    if-ltz v2, :cond_1

    .line 231
    aget-object v5, v1, v2

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 232
    invoke-virtual {p0, v5, p1}, Lcom/android/server/utils/AlarmQueue;->isForUser(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 240
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAlarmsIf(Ljava/util/function/Predicate;)V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    .line 256
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    if-ltz v2, :cond_1

    .line 257
    aget-object v5, v1, v2

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 258
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 266
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAllAlarms()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    const-wide/16 v1, 0x0

    .line 247
    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 248
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMinTimeBetweenAlarmsMs(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 275
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "min time between alarms must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setNextAlarmLocked()V
    .locals 4

    .line 291
    iget-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    return-void
.end method

.method public final setNextAlarmLocked(J)V
    .locals 7

    .line 300
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 301
    iget-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    iput-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 315
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v3, 0xea60

    .line 322
    iget-wide v5, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 323
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 324
    iget-wide v5, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    sub-long v0, v5, v3

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    cmp-long v0, v5, p1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 331
    :cond_2
    :goto_0
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 332
    iget-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
