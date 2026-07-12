.class public Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# static fields
.field public static final DEBUG:Z

.field public static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPhoneApp:Landroid/content/ComponentName;

.field public final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 48
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>(Lcom/android/server/notification/ZenModeFiltering-IA;)V

    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    return-void
.end method

.method public static audienceMatches(IF)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered unknown source: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .locals 1

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 326
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 331
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 335
    const-string/jumbo v0, "reminder"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IFI)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 106
    const-string/jumbo p0, "no interruptions"

    invoke-static {v1, p0, p8}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;I)V

    return v1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 110
    const-string p0, "alarms only"

    invoke-static {v1, p0, p8}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 114
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v2, 0x0

    .line 115
    invoke-static {p1, p0, p4, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 116
    const-string/jumbo p0, "repeat caller"

    invoke-static {v0, p0, p8}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;I)V

    return v0

    .line 119
    :cond_2
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result p0

    if-nez p0, :cond_3

    .line 120
    const-string p0, "calls not allowed"

    invoke-static {v1, p0, p8}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;I)V

    return v1

    :cond_3
    if-eqz p5, :cond_4

    .line 124
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result p0

    .line 127
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result p1

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "contact affinity "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p8}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;I)V

    return p1

    .line 133
    :cond_4
    const-string/jumbo p0, "no restrictions"

    invoke-static {v0, p0, p8}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;I)V

    return v0
.end method

.method public static maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    .line 281
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->hasInterceptBeenSet()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->hasInterceptBeenSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-eq v0, p1, :cond_2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 296
    invoke-static {p0, p2}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return-void

    .line 298
    :cond_3
    invoke-static {p0, p2}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 316
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    .line 317
    invoke-static {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result p0

    if-nez p0, :cond_0

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!audienceMatches,affinity="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 321
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "affinity="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0
.end method

.method public static ts(J)Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final canRecordBypassDnd(Lcom/android/server/notification/NotificationRecord;Landroid/app/NotificationManager$Policy;)Z
    .locals 0

    .line 152
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 153
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cleanUpCallersAfter(J)V
    .locals 0

    .line 389
    sget-object p0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$mcleanUpCallsAfter(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    sget-object p0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmThresholdMinutes(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    invoke-static {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmTelCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RepeatCallers.mTelCalls="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 72
    :goto_0
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmTelCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmTelCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    const-string v3, " at "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmTelCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/notification/ZenModeFiltering;->ts(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmOtherCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RepeatCallers.mOtherCalls="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    :goto_1
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmOtherCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmOtherCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    const-string v2, " at "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmOtherCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/notification/ZenModeFiltering;->ts(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 339
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "call"

    .line 340
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isConversation(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 371
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result p0

    return p0
.end method

.method public final isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 312
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 360
    sget-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default phone app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    .line 362
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz p0, :cond_2

    .line 363
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isMedia(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 344
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 345
    sget-object p1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 350
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 351
    sget-object p1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public recordCall(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    .line 143
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$mrecordCall(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V

    return-void
.end method

.method public shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 165
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string p0, "criticalNotification"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    .line 269
    const-string/jumbo p0, "unknownZenMode"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 176
    :cond_2
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 178
    const-string p0, "alarm"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 181
    :cond_3
    const-string p0, "alarmsOnly"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 173
    :cond_4
    const-string/jumbo p0, "none"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 185
    :cond_5
    invoke-virtual {p0, p3, p2}, Lcom/android/server/notification/ZenModeFiltering;->canRecordBypassDnd(Lcom/android/server/notification/NotificationRecord;Landroid/app/NotificationManager$Policy;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 186
    const-string/jumbo p0, "priorityApp"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 190
    :cond_6
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 191
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result p0

    if-nez p0, :cond_7

    .line 192
    const-string p0, "!allowAlarms"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 195
    :cond_7
    const-string p0, "allowedAlarm"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 198
    :cond_8
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 199
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result p0

    if-nez p0, :cond_9

    .line 200
    const-string p0, "!allowEvents"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 203
    :cond_9
    const-string p0, "allowedEvent"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 206
    :cond_a
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 207
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result p0

    if-nez p0, :cond_b

    .line 208
    const-string p0, "!allowReminders"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 211
    :cond_b
    const-string p0, "allowedReminder"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 214
    :cond_c
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMedia(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 215
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result p0

    if-nez p0, :cond_d

    .line 216
    const-string p0, "!allowMedia"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 219
    :cond_d
    const-string p0, "allowedMedia"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 222
    :cond_e
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 223
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result p0

    if-nez p0, :cond_f

    .line 224
    const-string p0, "!allowSystem"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 227
    :cond_f
    const-string p0, "allowedSystem"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 230
    :cond_10
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isConversation(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 231
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 232
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne p1, v2, :cond_11

    .line 233
    const-string p0, "conversationAnyone"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_11
    if-ne p1, v1, :cond_12

    .line 237
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 238
    const-string p0, "conversationMatches"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 245
    :cond_12
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 246
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 248
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object v3

    .line 247
    invoke-static {p1, p0, v1, v3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 249
    const-string/jumbo p0, "repeatCaller"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    .line 252
    :cond_13
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result p0

    if-nez p0, :cond_14

    .line 253
    const-string p0, "!allowCalls"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 256
    :cond_14
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result p0

    invoke-static {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0

    .line 258
    :cond_15
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 259
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result p0

    if-nez p0, :cond_16

    .line 260
    const-string p0, "!allowMessages"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2

    .line 263
    :cond_16
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result p0

    invoke-static {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0

    .line 266
    :cond_17
    const-string p0, "!priority"

    invoke-static {p3, v2, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v2
.end method
