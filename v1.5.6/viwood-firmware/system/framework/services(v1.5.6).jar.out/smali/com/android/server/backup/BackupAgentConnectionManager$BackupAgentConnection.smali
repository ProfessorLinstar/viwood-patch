.class public final Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;
.super Ljava/lang/Object;
.source "BackupAgentConnectionManager.java"


# instance fields
.field public final appInfo:Landroid/content/pm/ApplicationInfo;

.field public backupAgent:Landroid/app/IBackupAgent;

.field public final backupMode:I

.field public connecting:Z

.field public final inRestrictedMode:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IZ)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->connecting:Z

    .line 114
    iput-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    iput p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->backupMode:I

    .line 116
    iput-boolean p3, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->inRestrictedMode:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/ApplicationInfo;IZLcom/android/server/backup/BackupAgentConnectionManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;-><init>(Landroid/content/pm/ApplicationInfo;IZ)V

    return-void
.end method
