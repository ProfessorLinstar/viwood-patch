.class public Lcom/android/server/pm/dex/DynamicCodeLogger;
.super Ljava/lang/Object;
.source "DynamicCodeLogger.java"


# instance fields
.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

.field public mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method public static synthetic $r8$lambda$11aZGEwigi4eqhfsE87EXQLEOD8(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 298
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Lcom/android/server/pm/dex/PackageDynamicCodeLoading;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 79
    iput-object p2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 80
    iput-object p3, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 72
    new-instance p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-direct {p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    return-void
.end method


# virtual methods
.method public final fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    .line 209
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p2, p1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "package"

    .line 87
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public load(Ljava/util/Map;)V
    .locals 5

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 295
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 296
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 297
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/dex/DynamicCodeLogger$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/pm/dex/DynamicCodeLogger$$ExternalSyntheticLambda0;-><init>()V

    .line 298
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 299
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->readAndSync(Ljava/util/Map;)V

    return-void
.end method

.method public logDynamicCodeLoading(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 100
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 105
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 108
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 111
    iget v11, v10, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 113
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    const-wide/16 v12, 0x0

    .line 115
    const-string v15, "DynamicCodeLogger"

    if-ltz v2, :cond_3

    .line 116
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    :cond_2
    :goto_1
    move/from16 v16, v0

    goto :goto_4

    .line 122
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v4, v12, v13, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 123
    :cond_4
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :goto_2
    const/4 v2, 0x0

    .line 127
    :goto_3
    invoke-virtual {v8, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v2, :cond_2

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v5, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v5, v4, v11}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_1

    :goto_4
    if-nez v2, :cond_5

    move/from16 v0, v16

    goto :goto_0

    .line 141
    :cond_5
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    move v7, v0

    goto :goto_6

    .line 143
    :cond_6
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    .line 157
    :goto_6
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v2

    move-object v2, v0

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v14, v2

    .line 160
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got InstallerException when hashing file "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 164
    :goto_8
    iget-char v2, v10, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    const/16 v5, 0x44

    if-ne v2, v5, :cond_7

    .line 165
    const-string v2, "dcl"

    goto :goto_9

    .line 166
    :cond_7
    const-string v2, "dcln"

    .line 167
    :goto_9
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_8

    .line 171
    array-length v6, v0

    const/16 v7, 0x20

    if-ne v6, v7, :cond_8

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v16

    goto :goto_a

    .line 174
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got no hash for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v4, v3, v11}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    or-int v0, v16, v0

    .line 179
    :goto_a
    iget-object v3, v10, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 181
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, -0x1

    if-eqz v7, :cond_a

    .line 182
    iget v6, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_c

    .line 185
    :cond_a
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-interface {v7, v6, v12, v13, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_3
    move v6, v10

    :goto_c
    if-eq v6, v10, :cond_9

    .line 193
    invoke-virtual {v1, v2, v6, v5}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_b

    .line 146
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not infer CE/DE storage for path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v4, v3, v11}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    or-int v0, v16, v0

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_d

    .line 199
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :cond_d
    :goto_d
    return-void
.end method

.method public notifyPackageDataDestroyed(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removePackage(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removeUserPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public readAndSync(Ljava/util/Map;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read()V

    .line 281
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->syncData(Ljava/util/Map;)V

    return-void
.end method

.method public recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v3, 0x44

    move v4, p1

    move-object v2, p2

    move-object v1, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :cond_0
    return-void
.end method

.method public recordNative(ILjava/lang/String;)V
    .locals 8

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    array-length v1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 254
    aget-object v3, v0, v1

    .line 255
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 257
    iget-object v2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v5, 0x4e

    move-object v7, v3

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 259
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removePackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :cond_0
    return-void
.end method

.method public removeUserPackage(Ljava/lang/String;I)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :cond_0
    return-void
.end method

.method public writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 223
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public writeNow()V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->writeNow()V

    return-void
.end method
