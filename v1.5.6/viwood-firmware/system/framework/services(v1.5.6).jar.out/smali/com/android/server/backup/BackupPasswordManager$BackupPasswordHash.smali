.class public final Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"


# instance fields
.field public hash:Ljava/lang/String;

.field public salt:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    return-void
.end method
