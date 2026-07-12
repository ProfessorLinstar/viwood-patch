.class public Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
.super Ljava/lang/Object;
.source "PackageManagerBackupAgent.java"


# instance fields
.field public sigHashes:Ljava/util/ArrayList;

.field public versionCode:J


# direct methods
.method public constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 126
    iput-object p4, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    return-void
.end method
