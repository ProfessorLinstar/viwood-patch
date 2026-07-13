.class public Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
.super Ljava/lang/Object;
.source "KeyValueAdbBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPackage:Landroid/content/pm/PackageInfo;

.field public final mPipe:Landroid/os/ParcelFileDescriptor;

.field public final mToken:I

.field public final synthetic this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    .line 200
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 201
    iput p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mToken:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 207
    const-string v1, "KeyValueAdbBackupEngine"

    :try_start_0
    new-instance v7, Landroid/app/backup/FullBackupDataOutput;

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v7, v0}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 208
    new-instance v8, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmPackageManager(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {v8, v7, v0}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;-><init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing manifest for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v9, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmManifestFile(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmDataDir(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v11

    const-string/jumbo v12, "k"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmManifestFile(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing key-value package payload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "k"

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmDataDir(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmBackupDataName(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    .line 223
    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x4

    .line 231
    new-array v2, v2, [B

    .line 232
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 234
    :catch_0
    :try_start_2
    const-string v0, "Unable to finalize backup stream!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmBackupManagerService(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mToken:I

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    .line 246
    :catch_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 244
    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running full backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 246
    :goto_4
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 247
    throw v0
.end method
