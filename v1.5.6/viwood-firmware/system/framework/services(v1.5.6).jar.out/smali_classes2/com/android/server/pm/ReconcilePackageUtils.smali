.class public abstract Lcom/android/server/pm/ReconcilePackageUtils;
.super Ljava/lang/Object;
.source "ReconcilePackageUtils.java"


# static fields
.field public static final ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 62
    sput-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    return-void
.end method

.method public static isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .locals 1

    .line 346
    iget p0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .locals 1

    .line 350
    iget p0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;
    .locals 27

    move-object/from16 v2, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 71
    const-string v11, "PackageManager"

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    new-instance v13, Landroid/util/ArrayMap;

    .line 75
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v13, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 77
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 79
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 82
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 83
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->onReconcileStarted()V

    .line 86
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    .line 86
    invoke-virtual {v13, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v9, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    .line 94
    invoke-static {v14, v3}, Lcom/android/server/pm/SharedLibraryUtils;->addSharedLibraryToPackageVersionMap(Ljava/util/Map;Landroid/content/pm/SharedLibraryInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shared Library "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is being installed twice in this set!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x6

    .line 96
    invoke-static {v0, v1}, Lcom/android/server/pm/ReconcileFailure;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/ReconcileFailure;

    move-result-object v0

    throw v0

    .line 105
    :cond_2
    const-string v0, "android"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 107
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 108
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v9, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    move-result-object v5

    .line 114
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v1

    if-nez v1, :cond_6

    .line 115
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_3

    move v1, v6

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    or-int/2addr v1, v6

    .line 119
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v8

    .line 120
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 121
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 118
    invoke-static {v8, v6, v7, v1, v4}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 124
    :cond_5
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "May not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to replace"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0xa

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_6
    move-object v1, v4

    .line 132
    :goto_4
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v6

    .line 133
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v7

    .line 134
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v8

    .line 135
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v19

    .line 137
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v17

    if-nez v17, :cond_7

    move-object/from16 v17, v4

    goto :goto_5

    .line 138
    :cond_7
    invoke-virtual {v9, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getStaticSharedLibLatestVersionSetting(Lcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageSetting;

    move-result-object v17

    :goto_5
    if-eqz v17, :cond_8

    :goto_6
    move-object/from16 v4, v17

    goto :goto_7

    .line 143
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v17

    goto :goto_6

    :goto_7
    if-eqz v8, :cond_9

    .line 148
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v17

    move-object/from16 v20, v17

    goto :goto_8

    :cond_9
    const/16 v20, 0x0

    :goto_8
    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    const/high16 v17, 0x4000000

    and-int v17, v6, v17

    if-eqz v17, :cond_b

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v26, v1

    move-object/from16 v24, v15

    move-object/from16 v15, p5

    goto :goto_b

    :cond_b
    const/16 v25, 0x0

    goto :goto_a

    .line 153
    :goto_b
    invoke-virtual {v15, v4}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    .line 155
    invoke-virtual {v10, v4, v1, v6}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v6

    move-object/from16 v18, v1

    const-string v1, " signature changed; retaining data."

    const-string v2, "System package "

    if-eqz v6, :cond_e

    .line 157
    invoke-virtual {v10, v4, v8}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    if-eqz v7, :cond_d

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 169
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_c
    move-object/from16 v18, v3

    move-object/from16 v6, v20

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v20, v5

    goto/16 :goto_15

    .line 162
    :cond_d
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " upgrade keys do not match the previously installed version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v6, p2

    .line 174
    :try_start_0
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 175
    invoke-static {v0}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v21

    .line 176
    invoke-static {v0}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v22

    .line 177
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isRollback()Z

    move-result v23

    move-object/from16 v17, v4

    .line 179
    invoke-static/range {v17 .. v23}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v4
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v0, v18

    move-object/from16 v18, v3

    move-object v3, v0

    move-object/from16 v0, v20

    .line 188
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x10

    if-nez v19, :cond_10

    .line 189
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v19

    if-nez v19, :cond_10

    if-nez v7, :cond_10

    if-nez v25, :cond_10

    if-eqz v0, :cond_10

    if-eqz v24, :cond_10

    .line 191
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v19
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v19, :cond_10

    move/from16 v19, v4

    .line 192
    :try_start_2
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v20, v5

    const/4 v5, 0x4

    :try_start_3
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-preload app associated with system signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_11

    .line 197
    sget-boolean v4, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    if-nez v4, :cond_11

    .line 199
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/SystemConfig;->getPackageToSharedUidAllowList()Landroid/util/ArrayMap;

    move-result-object v4

    .line 200
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 201
    iget-object v6, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 202
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_e

    :catch_0
    move-exception v0

    :goto_d
    move/from16 v4, v19

    goto/16 :goto_13

    .line 203
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-preload app "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " signed with platform signature and joining shared uid: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", allowList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v4, Lcom/android/server/pm/ReconcileFailure;

    const/16 v5, -0x6b

    invoke-direct {v4, v5, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v4

    :catch_1
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_d

    :cond_10
    move/from16 v19, v4

    move-object/from16 v20, v5

    goto :goto_e

    :catch_2
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v20, v5

    goto/16 :goto_13

    :cond_11
    :goto_e
    if-eqz v3, :cond_16

    .line 221
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 223
    invoke-virtual {v4, v0}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v5

    if-eq v5, v4, :cond_15

    .line 230
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 231
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_12

    move-object/from16 v17, v0

    .line 232
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v4

    .line 233
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 235
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v4, 0x2

    .line 234
    invoke-virtual {v5, v0, v4}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object v5, v0

    goto :goto_10

    :cond_12
    move-object/from16 v17, v0

    move-object/from16 v21, v4

    :cond_13
    :goto_10
    move-object/from16 v0, v17

    move-object/from16 v4, v21

    goto :goto_f

    :cond_14
    move-object/from16 v17, v0

    .line 239
    iget-object v0, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v5, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_11

    :cond_15
    move-object/from16 v17, v0

    .line 242
    :goto_11
    iget-object v0, v3, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 243
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v3, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_12

    :cond_16
    move-object/from16 v17, v0

    :cond_17
    :goto_12
    move-object/from16 v6, v17

    move/from16 v8, v19

    const/4 v7, 0x0

    goto/16 :goto_15

    :catch_3
    move-exception v0

    move-object/from16 v20, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v5

    const/4 v4, 0x0

    goto :goto_13

    :catch_4
    move-exception v0

    .line 302
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Signing certificates comparison made on incomparable signing details but somehow passed verifySignatures!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_13
    if-eqz v7, :cond_1c

    .line 250
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    if-eqz v3, :cond_1a

    .line 261
    iget-object v5, v3, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-eqz v5, :cond_19

    .line 263
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    const/4 v7, 0x2

    .line 262
    invoke-static {v5, v6, v3, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v5

    if-nez v5, :cond_19

    .line 266
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_18

    .line 273
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature mismatch for shared user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x68

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 282
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature mismatch on system package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for shared user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_19
    iget-object v5, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 292
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 293
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v3, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    const/4 v6, 0x1

    goto :goto_14

    :cond_1a
    const/4 v5, 0x0

    move v6, v5

    .line 296
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 298
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move v8, v4

    move v7, v6

    move-object v6, v0

    .line 308
    :goto_15
    new-instance v0, Lcom/android/server/pm/ReconciledPackage;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v5, v20

    move-object/from16 v4, v26

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ReconciledPackage;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V

    .line 320
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1b

    .line 321
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1b

    .line 326
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 325
    invoke-virtual {v9, v1, v13, v14}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_16

    :catch_5
    move-exception v0

    .line 329
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 333
    :cond_1b
    :goto_16
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->onReconcileFinished()V

    .line 334
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    move-object/from16 v15, v24

    goto/16 :goto_1

    .line 248
    :cond_1c
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    throw v1

    :cond_1d
    return-object v12
.end method
