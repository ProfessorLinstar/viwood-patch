.class public Lcom/android/server/notification/ScheduleConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "ScheduleConditionProvider.java"


# static fields
.field public static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final DEBUG:Z = true

.field public static final SIMPLE_NAME:Ljava/lang/String;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mClock:Ljava/time/Clock;

.field public mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public mNextAlarmTime:J

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRegistered:Z

.field public final mSnoozedForAlarm:Landroid/util/ArraySet;

.field public final mSubscriptions:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSubscriptions(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevaluateSubscriptions(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-class v0, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".EVALUATE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>(Ljava/time/Clock;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Clock;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 65
    iput-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 345
    new-instance v0, Lcom/android/server/notification/ScheduleConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ScheduleConditionProvider$1;-><init>(Lcom/android/server/notification/ScheduleConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.SCP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mClock:Ljava/time/Clock;

    return-void
.end method

.method private evaluateSubscriptions()V
    .locals 10

    .line 164
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    .line 165
    iput-wide v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    .line 166
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->getNextAlarmClockAlarm()J

    move-result-wide v6

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v8, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->setRegistered(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/Uri;

    .line 171
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 172
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/service/notification/ScheduleCalendar;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptionLocked(Landroid/net/Uri;Landroid/service/notification/ScheduleCalendar;JJ)Landroid/service/notification/Condition;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 175
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_1
    move-object p0, v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 178
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/service/notification/Condition;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/service/notification/Condition;

    invoke-virtual {v1, p0}, Landroid/service/notification/ConditionProviderService;->notifyConditions([Landroid/service/notification/Condition;)V

    .line 180
    iget-wide v2, v1, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/server/notification/ScheduleConditionProvider;->updateAlarm(JJ)V

    return-void

    .line 178
    :goto_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private setRegistered(Z)V
    .locals 2

    .line 256
    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 257
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRegistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.SCP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    if-eqz p1, :cond_2

    .line 260
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/service/notification/ConditionProviderService;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public addSnoozed(Landroid/net/Uri;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->saveSnoozedLocked()V

    .line 298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final conditionSnoozed(Landroid/net/Uri;)Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;
    .locals 8

    .line 278
    sget-boolean p0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyCondition "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-static {p2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reason="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 278
    const-string p3, "ConditionProviders.SCP"

    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    new-instance v0, Landroid/service/notification/Condition;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const-string v2, "..."

    const-string v3, "..."

    const-string v4, "..."

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 6

    .line 93
    const-string p2, "    "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string p2, "      mConnected="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 95
    const-string p2, "      mRegistered="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 96
    const-string p2, "      mSubscriptions="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 98
    iget-object p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 100
    const-string v2, "        "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ScheduleCalendar;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/notification/ScheduleConditionProvider;->meetsSchedule(Landroid/service/notification/ScheduleCalendar;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "* "

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const-string v2, "  "

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 103
    const-string v2, "            "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ScheduleCalendar;

    invoke-virtual {v1}, Landroid/service/notification/ScheduleCalendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v1

    .line 108
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      snoozed due to alarm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 109
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    const-string v1, "mNextAlarmTime"

    iget-wide v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/SystemConditionProviderService;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 110
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 106
    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public evaluateSubscriptionLocked(Landroid/net/Uri;Landroid/service/notification/ScheduleCalendar;JJ)Landroid/service/notification/Condition;
    .locals 2

    .line 187
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p3, p4}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, p6}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 187
    const-string v1, "evaluateSubscriptionLocked cal=%s, now=%s, nextUserAlarmTime=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.SCP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x3

    .line 191
    const-string p3, "!invalidId"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object p2

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    return-object p2

    .line 195
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->conditionSnoozed(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const-string/jumbo v0, "snoozed"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object p1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "alarmCanceled"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->addSnoozed(Landroid/net/Uri;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 202
    const-string/jumbo v1, "meetsSchedule"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object p1

    goto :goto_1

    .line 205
    :cond_4
    const-string v0, "!meetsSchedule"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    goto :goto_0

    .line 208
    :goto_1
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 209
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide p5

    const-wide/16 v0, 0x0

    cmp-long p2, p5, v0

    if-lez p2, :cond_6

    cmp-long p2, p5, p3

    if-lez p2, :cond_6

    .line 211
    iget-wide p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    cmp-long p4, p2, v0

    if-eqz p4, :cond_5

    cmp-long p2, p5, p2

    if-gez p2, :cond_6

    .line 212
    :cond_5
    iput-wide p5, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    :cond_6
    return-object p1
.end method

.method public final getNextAlarmClockAlarm()J
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 246
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 247
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 246
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 248
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPendingIntent(J)Landroid/app/PendingIntent;
    .locals 2

    .line 233
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "time"

    .line 238
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0xc000000

    const/4 v0, 0x1

    .line 233
    invoke-static {p0, v0, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getSubscriptions()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Landroid/service/notification/ScheduleCalendar;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 0

    .line 88
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final meetsSchedule(Landroid/service/notification/ScheduleCalendar;J)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1, p2, p3}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBootComplete()V
    .locals 0

    .line 0
    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 116
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->readSnoozed()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 135
    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    .line 136
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 3

    .line 142
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 144
    const-string v1, "invalidId"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void

    :catchall_0
    move-exception p0

    .line 149
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3

    .line 155
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnsubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    .line 160
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void

    :catchall_0
    move-exception p0

    .line 158
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUserSwitched(Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final readSnoozed()V
    .locals 7

    .line 319
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    .line 320
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "snoozed_schedule_condition_provider"

    .line 325
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 322
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 327
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 328
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 329
    aget-object v5, v3, v4

    if-eqz v5, :cond_0

    .line 331
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 333
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 336
    :cond_1
    iget-object v6, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_2
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 340
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    throw p0

    .line 342
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final removeSnoozed(Landroid/net/Uri;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->saveSnoozedLocked()V

    .line 305
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final saveSnoozedLocked()V
    .locals 3

    .line 310
    const-string v0, ";"

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 312
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "snoozed_schedule_condition_provider"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final updateAlarm(JJ)V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 220
    invoke-virtual {p0, p3, p4}, Lcom/android/server/notification/ScheduleConditionProvider;->getPendingIntent(J)Landroid/app/PendingIntent;

    move-result-object p0

    .line 221
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long v1, p3, p1

    .line 222
    const-string v2, "ConditionProviders.SCP"

    if-lez v1, :cond_1

    .line 223
    sget-boolean v1, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 224
    invoke-static {p3, p4}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v1

    sub-long v3, p3, p1

    invoke-static {v3, v4}, Lcom/android/server/notification/SystemConditionProviderService;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 223
    const-string p2, "Scheduling evaluate for %s, in %s, now=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 225
    invoke-virtual {v0, p1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    .line 227
    :cond_1
    sget-boolean p0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Not scheduling evaluate"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
