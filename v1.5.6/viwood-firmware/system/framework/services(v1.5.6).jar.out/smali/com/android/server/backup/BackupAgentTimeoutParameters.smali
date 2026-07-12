.class public Lcom/android/server/backup/BackupAgentTimeoutParameters;
.super Landroid/util/KeyValueSettingObserver;
.source "BackupAgentTimeoutParameters.java"


# static fields
.field public static final DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x493e0L

.field public static final DEFAULT_KV_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x7530L

.field public static final DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS:J = 0xbb8L

.field public static final DEFAULT_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:J = 0x7530L

.field public static final DEFAULT_RESTORE_AGENT_TIMEOUT_MILLIS:J = 0xea60L

.field public static final DEFAULT_RESTORE_SESSION_TIMEOUT_MILLIS:J = 0xea60L

.field public static final DEFAULT_RESTORE_SYSTEM_AGENT_TIMEOUT_MILLIS:J = 0x2bf20L

.field public static final DEFAULT_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x1b7740L

.field public static final SETTING:Ljava/lang/String; = "backup_agent_timeout_parameters"

.field public static final SETTING_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "full_backup_agent_timeout_millis"

.field public static final SETTING_KV_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "kv_backup_agent_timeout_millis"

.field public static final SETTING_QUOTA_EXCEEDED_TIMEOUT_MILLIS:Ljava/lang/String; = "quota_exceeded_timeout_millis"

.field public static final SETTING_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_finished_timeout_millis"

.field public static final SETTING_RESTORE_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_timeout_millis"

.field public static final SETTING_RESTORE_SESSION_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_session_timeout_millis"

.field public static final SETTING_RESTORE_SYSTEM_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_system_agent_timeout_millis"

.field public static final SETTING_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "shared_backup_agent_timeout_millis"


# instance fields
.field public mFullBackupAgentTimeoutMillis:J

.field public mKvBackupAgentTimeoutMillis:J

.field public final mLock:Ljava/lang/Object;

.field public mQuotaExceededTimeoutMillis:J

.field public mRestoreAgentFinishedTimeoutMillis:J

.field public mRestoreAgentTimeoutMillis:J

.field public mRestoreSessionTimeoutMillis:J

.field public mRestoreSystemAgentTimeoutMillis:J

.field public mSharedBackupAgentTimeoutMillis:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 1

    .line 121
    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 118
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFullBackupAgentTimeoutMillis()J
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getKvBackupAgentTimeoutMillis()J
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getQuotaExceededTimeoutMillis()J
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRestoreAgentFinishedTimeoutMillis()J
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRestoreAgentTimeoutMillis(I)J
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreSystemAgentTimeoutMillis:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 190
    :cond_0
    iget-wide p0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    :goto_0
    monitor-exit v0

    return-wide p0

    .line 191
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRestoreSessionTimeoutMillis()J
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreSessionTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 0

    .line 125
    const-string p0, "backup_agent_timeout_parameters"

    invoke-static {p1, p0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSharedBackupAgentTimeoutMillis()J
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public update(Landroid/util/KeyValueListParser;)V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    const-string/jumbo v1, "kv_backup_agent_timeout_millis"

    const-wide/16 v2, 0x7530

    .line 131
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    .line 134
    const-string v1, "full_backup_agent_timeout_millis"

    const-wide/32 v4, 0x493e0

    .line 135
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    .line 138
    const-string/jumbo v1, "shared_backup_agent_timeout_millis"

    const-wide/32 v4, 0x1b7740

    .line 139
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    .line 142
    const-string/jumbo v1, "restore_agent_timeout_millis"

    const-wide/32 v4, 0xea60

    .line 143
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    .line 146
    const-string/jumbo v1, "restore_system_agent_timeout_millis"

    const-wide/32 v6, 0x2bf20

    .line 147
    invoke-virtual {p1, v1, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreSystemAgentTimeoutMillis:J

    .line 150
    const-string/jumbo v1, "restore_agent_finished_timeout_millis"

    .line 151
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    .line 154
    const-string/jumbo v1, "restore_session_timeout_millis"

    .line 155
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreSessionTimeoutMillis:J

    .line 158
    const-string/jumbo v1, "quota_exceeded_timeout_millis"

    const-wide/16 v2, 0xbb8

    .line 159
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
