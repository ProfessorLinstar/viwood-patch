.class public Lcom/android/server/backup/AppSpecificLocalesBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "AppSpecificLocalesBackupHelper.java"


# instance fields
.field public final mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 59
    const-string v0, "app_locales"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    .line 61
    const-class p1, Lcom/android/server/locales/LocaleManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/locales/LocaleManagerInternal;

    iput-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 4

    .line 102
    const-string v0, "app_locales"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppLocalesBackupHelper"

    const/4 v2, 0x1

    const-string v3, "app_locales:locales"

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    iget v0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/locales/LocaleManagerInternal;->stageAndApplyRestoredPayload([BI)V

    .line 105
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestored(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 109
    const-string p2, "Couldn\'t communicate with locale manager"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    const-string/jumbo p1, "restore_failed"

    invoke-virtual {p0, v3, v2, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestoreFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 116
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected restore key "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    const-string/jumbo p1, "unexpected_key"

    invoke-virtual {p0, v3, v2, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .locals 6

    .line 71
    const-string v0, "app_locales"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppLocalesBackupHelper"

    const/4 v2, 0x1

    const-string v3, "app_locales:locales"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    iget v0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/server/locales/LocaleManagerInternal;->getBackupPayload(I)[B

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 79
    const-string v0, "Couldn\'t communicate with locale manager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    const-string p1, "backup_failed"

    invoke-virtual {p0, v3, v2, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected backup key "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    const-string/jumbo p1, "unexpected_key"

    invoke-virtual {p0, v3, v2, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4
.end method
