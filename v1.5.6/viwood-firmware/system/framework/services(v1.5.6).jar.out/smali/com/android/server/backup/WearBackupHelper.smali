.class public Lcom/android/server/backup/WearBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "WearBackupHelper.java"


# instance fields
.field public final mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    const-string/jumbo v0, "wear"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/android/server/backup/WearBackupInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/WearBackupInternal;

    iput-object v0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1

    .line 45
    const-string/jumbo v0, "wear"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0, p2}, Lcom/android/server/backup/WearBackupInternal;->applyRestoredPayload([B)V

    :cond_0
    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    .line 38
    const-string/jumbo v0, "wear"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/backup/WearBackupInternal;->getBackupPayload(Landroid/app/backup/BackupRestoreEventLogger;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
