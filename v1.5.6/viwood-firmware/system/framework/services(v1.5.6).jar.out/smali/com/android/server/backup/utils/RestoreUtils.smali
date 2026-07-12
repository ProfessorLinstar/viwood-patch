.class public abstract Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# direct methods
.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .locals 16

    move-object/from16 v0, p5

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing from backup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 83
    :try_start_0
    new-instance v3, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils-IA;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    .line 87
    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object/from16 v6, p6

    .line 88
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :try_start_2
    iget-object v7, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-wide v10, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v8, 0x10000

    .line 99
    :try_start_3
    new-array v9, v8, [B

    .line 100
    iget-wide v10, v0, Lcom/android/server/backup/FileMetadata;->size:J

    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_2

    int-to-long v12, v8

    cmp-long v14, v12, v10

    if-gez v14, :cond_0

    goto :goto_1

    :cond_0
    move-wide v12, v10

    :goto_1
    long-to-int v12, v12

    move-object/from16 v13, p0

    .line 103
    invoke-virtual {v13, v9, v1, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-ltz v12, :cond_1

    int-to-long v14, v12

    move/from16 p1, v5

    move-object/from16 v5, p7

    .line 105
    invoke-interface {v5, v14, v15}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_4

    :cond_1
    move/from16 p1, v5

    move-object/from16 v5, p7

    .line 107
    :goto_2
    invoke-virtual {v7, v9, v1, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v14, v12

    sub-long/2addr v10, v14

    move/from16 v5, p1

    goto :goto_0

    :cond_2
    move/from16 p1, v5

    if-eqz v7, :cond_3

    .line 110
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v0

    goto :goto_6

    .line 113
    :cond_3
    :goto_3
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    :try_start_5
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 135
    :try_start_6
    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v3, p4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    return p1

    :catch_0
    move-exception v0

    goto :goto_8

    :goto_4
    if-eqz v7, :cond_5

    .line 92
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    if-eqz v6, :cond_6

    .line 91
    :try_start_9
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 117
    :goto_8
    :try_start_b
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 119
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 202
    :catch_1
    const-string v0, "Unable to transcribe restored apk for install"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
