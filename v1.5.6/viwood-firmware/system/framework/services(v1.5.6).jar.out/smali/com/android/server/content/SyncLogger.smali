.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# static fields
.field public static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .locals 2

    const-class v0, Lcom/android/server/content/SyncLogger;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/android/server/content/SyncLogger;

    invoke-direct {v1}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static logSafe(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 321
    const-string p0, "[null]"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logSafe(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 333
    const-string p0, "[null]"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toSafeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 329
    const-string p0, "[null]"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->toSafeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 325
    const-string p0, "[null]"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public enabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 0

    .line 109
    const-string p0, ""

    return-object p0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public purgeOldLogs()V
    .locals 0

    .line 0
    return-void
.end method
