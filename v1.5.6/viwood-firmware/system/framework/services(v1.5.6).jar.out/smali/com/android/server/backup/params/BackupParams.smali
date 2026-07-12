.class public Lcom/android/server/backup/params/BackupParams;
.super Ljava/lang/Object;
.source "BackupParams.java"


# instance fields
.field public dirName:Ljava/lang/String;

.field public fullPackages:Ljava/util/ArrayList;

.field public kvPackages:Ljava/util/ArrayList;

.field public listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public nonIncrementalBackup:Z

.field public observer:Landroid/app/backup/IBackupObserver;

.field public userInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/backup/params/BackupParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 46
    iput-object p2, p0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    .line 48
    iput-object p4, p0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    .line 49
    iput-object p5, p0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    .line 50
    iput-object p6, p0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 51
    iput-object p7, p0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 52
    iput-boolean p8, p0, Lcom/android/server/backup/params/BackupParams;->userInitiated:Z

    .line 53
    iput-boolean p9, p0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    .line 54
    iput-object p10, p0, Lcom/android/server/backup/params/BackupParams;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method
