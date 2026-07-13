.class public Lcom/android/server/usage/BroadcastResponseStatsLogger;
.super Ljava/lang/Object;
.source "BroadcastResponseStatsLogger.java"


# static fields
.field public static final MAX_LOG_SIZE:I


# instance fields
.field public final mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

.field public final mLock:Ljava/lang/Object;

.field public final mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;


# direct methods
.method public static synthetic $r8$lambda$A-r2wcV2w4QjqlPjHFaij6oV5bQ()Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;-><init>(Lcom/android/server/usage/BroadcastResponseStatsLogger-IA;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$W1F85tjQJ7p6e3fOCAIRsqTjcl4(I)Ljava/lang/Object;
    .locals 0

    .line 54
    new-array p0, p0, [Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    return-object p0
.end method

.method public static synthetic $r8$lambda$lW8VT65-e47HoACtwf8YZwpc8Xs()Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;-><init>(Lcom/android/server/usage/BroadcastResponseStatsLogger-IA;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$wkyHpYbAHm1Dorsn7ksUN7TwqCk(I)Ljava/lang/Object;
    .locals 0

    .line 57
    new-array p0, p0, [Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    sput v0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    new-instance v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;-><init>()V

    sget v3, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 55
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    new-instance v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    return-void
.end method

.method public static getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;
    .locals 1

    .line 157
    invoke-static {p5, p6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 158
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    move-object p1, p0

    move-object p0, p5

    move-object p5, p3

    move-object p3, p2

    move-object p2, v0

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    .line 155
    const-string p1, "broadcast:%s; srcUid=%d, tgtPkg=%s, tgtUsr=%d, id=%d, state=%s"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;
    .locals 0

    .line 166
    invoke-static {p3, p4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->notificationEventToString(I)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 165
    const-string/jumbo p1, "notification:%s; event=<%s>, pkg=%s, usr=%d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static notificationEventToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 180
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    const-string p0, "cancelled"

    return-object p0

    .line 176
    :cond_1
    const-string/jumbo p0, "updated"

    return-object p0

    .line 174
    :cond_2
    const-string/jumbo p0, "posted"

    return-object p0
.end method


# virtual methods
.method public dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    const-string v1, "Broadcast events (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 88
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 92
    const-string v1, "Notification events (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 94
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 95
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .locals 14

    .line 62
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "ResponseStatsTracker"

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    .line 64
    invoke-static/range {v2 .. v9}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    move v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    .line 70
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .locals 8

    .line 75
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "ResponseStatsTracker"

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {p1, p2, v2, p4, p5}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 80
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 81
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
