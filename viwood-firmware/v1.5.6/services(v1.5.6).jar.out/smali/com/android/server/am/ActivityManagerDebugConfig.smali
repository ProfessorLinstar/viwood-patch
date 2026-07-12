.class public abstract Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field public static APPEND_CATEGORY_NAME:Z = false

.field public static DEBUG_ALL:Z

.field public static DEBUG_ALLOWLISTS:Z

.field public static DEBUG_ANR:Z

.field public static DEBUG_BACKGROUND_CHECK:Z

.field public static DEBUG_BACKUP:Z

.field public static DEBUG_BROADCAST:Z

.field public static DEBUG_BROADCAST_LIGHT:Z

.field public static DEBUG_COMPACTION:Z

.field public static DEBUG_FOREGROUND_SERVICE:Z

.field public static DEBUG_FREEZER:Z

.field public static DEBUG_LRU:Z

.field public static DEBUG_MU:Z

.field public static DEBUG_NETWORK:Z

.field public static DEBUG_OOM_ADJ:Z

.field public static DEBUG_OOM_ADJ_REASON:Z

.field public static DEBUG_PERMISSIONS_REVIEW:Z

.field public static DEBUG_POWER:Z

.field public static DEBUG_POWER_QUICK:Z

.field public static DEBUG_PROCESSES:Z

.field public static DEBUG_PROCESS_OBSERVERS:Z

.field public static DEBUG_PROVIDER:Z

.field public static DEBUG_PSS:Z

.field public static DEBUG_RSS:Z

.field public static DEBUG_SERVICE:Z

.field public static DEBUG_SERVICE_EXECUTING:Z

.field public static DEBUG_UID_OBSERVERS:Z

.field public static DEBUG_USAGE_STATS:Z

.field public static final LOG_WRITER_INFO:Ljava/io/PrintWriter;

.field public static final POSTFIX_BACKUP:Ljava/lang/String;

.field public static final POSTFIX_BROADCAST:Ljava/lang/String;

.field public static final POSTFIX_CLEANUP:Ljava/lang/String;

.field public static final POSTFIX_LRU:Ljava/lang/String;

.field public static final POSTFIX_OOM_ADJ:Ljava/lang/String;

.field public static final POSTFIX_POWER:Ljava/lang/String;

.field public static final POSTFIX_PROCESSES:Ljava/lang/String;

.field public static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

.field public static final POSTFIX_PSS:Ljava/lang/String;

.field public static final POSTFIX_RSS:Ljava/lang/String;

.field public static final POSTFIX_SERVICE:Ljava/lang/String;

.field public static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

.field public static final POSTFIX_UID_OBSERVERS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const/4 v2, 0x4

    const-string v3, "ActivityManager"

    invoke-direct {v1, v2, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    .line 55
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    .line 56
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    .line 57
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 58
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 59
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 60
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    .line 61
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    .line 62
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 63
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 64
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    .line 65
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 66
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    .line 67
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 68
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 69
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 70
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 71
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 72
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 73
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    .line 74
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 75
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    .line 76
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 77
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 78
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 79
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 80
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALLOWLISTS:Z

    .line 83
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "_Backup"

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BACKUP:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 84
    const-string v2, "_Broadcast"

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BROADCAST:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 85
    const-string v2, "_Cleanup"

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CLEANUP:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 86
    const-string v2, "_LRU"

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LRU:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 89
    const-string v2, "_OomAdj"

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_OOM_ADJ:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 90
    const-string v2, "_Power"

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_POWER:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 92
    const-string v2, "_ProcessObservers"

    goto :goto_6

    :cond_6
    move-object v2, v1

    :goto_6
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 93
    const-string v2, "_Processes"

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESSES:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 94
    const-string v2, "_Pss"

    goto :goto_8

    :cond_8
    move-object v2, v1

    :goto_8
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PSS:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 95
    const-string v2, "_Rss"

    goto :goto_9

    :cond_9
    move-object v2, v1

    :goto_9
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RSS:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 96
    const-string v2, "_Service"

    goto :goto_a

    :cond_a
    move-object v2, v1

    :goto_a
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 98
    const-string v2, "_ServiceExecuting"

    goto :goto_b

    :cond_b
    move-object v2, v1

    :goto_b
    sput-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 100
    const-string v1, "_UidObservers"

    :cond_c
    sput-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_UID_OBSERVERS:Ljava/lang/String;

    return-void
.end method
