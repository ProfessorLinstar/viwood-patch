.class public final Lcom/android/server/pm/PackageMetrics;
.super Ljava/lang/Object;
.source "PackageMetrics.java"


# instance fields
.field public final mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mInstallStartTimestampMillis:J

.field public final mInstallSteps:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    .line 100
    iput-object p1, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    return-void
.end method

.method public static getUid(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 191
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 193
    :cond_0
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public static onDependencyInstallationFailure(ILjava/lang/String;IILandroid/content/pm/PackageInstaller$SessionParams;I)V
    .locals 35

    move-object/from16 v0, p4

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v1

    move/from16 v24, v1

    goto :goto_0

    :cond_1
    move/from16 v24, v2

    .line 352
    :goto_0
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iget v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v3, v3, 0x800

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move/from16 v26, v4

    goto :goto_1

    :cond_2
    move/from16 v26, v2

    :goto_1
    iget v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    move/from16 v29, v4

    goto :goto_2

    :cond_3
    move/from16 v29, v2

    :goto_2
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const/16 v33, 0x1

    const/16 v3, 0x20c

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p2

    move/from16 v22, p3

    move/from16 v34, p5

    move/from16 v32, v0

    move/from16 v25, v1

    invoke-static/range {v3 .. v34}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    return-void
.end method

.method public static onUninstallSucceeded(Lcom/android/server/pm/PackageRemovedInfo;II)V
    .locals 11

    .line 285
    iget-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 290
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 296
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v4

    .line 297
    iget-object v5, p0, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 298
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v6

    .line 299
    iget v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 300
    invoke-static {v0, p2}, Lcom/android/server/pm/PackageMetrics;->getUid(II)I

    move-result v2

    iget-boolean v9, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    iget-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    xor-int/lit8 v10, v0, 0x1

    const/16 v1, 0x22a

    const/4 v8, 0x1

    move v7, p1

    .line 299
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(II[I[I[I[IIIZZ)V

    .line 303
    iget-object p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 304
    iget-wide v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 305
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/pm/PackageMetrics;->reportUninstallationToSecurityLog(Ljava/lang/String;JI)V

    return-void
.end method

.method public static onVerificationFailed(Lcom/android/server/pm/VerifyingSession;)V
    .locals 32

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getSessionId()I

    move-result v1

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getRet()I

    move-result v8

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getInstallerPackageUid()I

    move-result v19

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getDataLoaderType()I

    move-result v21

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getUserActionRequiredType()I

    move-result v22

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isInstant()Z

    move-result v23

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isInherit()Z

    move-result v26

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isStaged()Z

    move-result v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v0, 0x20c

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 309
    invoke-static/range {v0 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    return-void
.end method

.method public static reportComponentStateChanged(IIIZZI)V
    .locals 7

    const/16 v0, 0x35f

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 496
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZI)V

    return-void
.end method

.method public static reportComponentStateChanged(Lcom/android/server/pm/Computer;Ljava/util/List;I)V
    .locals 9

    if-eqz p1, :cond_2

    .line 478
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 484
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;

    .line 485
    iget v3, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mUid:I

    iget v4, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentOldState:I

    iget v5, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentNewState:I

    .line 488
    invoke-virtual {v2, p0, p2}, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->isLauncherActivity(Lcom/android/server/pm/Computer;I)Z

    move-result v6

    iget-boolean v7, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    iget v8, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mCallingUid:I

    .line 485
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageMetrics;->reportComponentStateChanged(IIIZZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 479
    :cond_2
    :goto_1
    const-string p0, "PackageMetrics"

    const-string p1, "Fail to report component state due to metrics is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static reportUninstallationToSecurityLog(Ljava/lang/String;JI)V
    .locals 1

    .line 413
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 417
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3347b

    .line 416
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public final getApksSize(Ljava/io/File;)J
    .locals 3

    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 200
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageMetrics$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/pm/PackageMetrics$1;-><init>(Lcom/android/server/pm/PackageMetrics;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v1, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :catch_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getInstallStepDurations()Landroid/util/Pair;
    .locals 8

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 246
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageMetrics$InstallStep;->getDurationMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 249
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageMetrics$InstallStep;->getDurationMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v3, p0, [I

    .line 254
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [J

    :goto_1
    if-ge v2, p0, :cond_2

    .line 256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onInstallFailed()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    return-void
.end method

.method public onInstallSucceed()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationToSecurityLog(I)V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    return-void
.end method

.method public onStepFinished(I)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics$InstallStep;->finish()V

    :cond_0
    return-void
.end method

.method public onStepFinished(IJ)V
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-direct {v0, p2, p3}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onStepStarted(I)V
    .locals 1

    .line 227
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-direct {v0}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final reportInstallationStats(Z)V
    .locals 38

    move-object/from16 v0, p0

    .line 113
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 114
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    if-nez v1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    sub-long v22, v2, v4

    .line 123
    invoke-virtual {v0}, Lcom/android/server/pm/PackageMetrics;->getInstallStepDurations()Landroid/util/Pair;

    move-result-object v2

    .line 124
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v10

    .line 125
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOriginUsers()[I

    move-result-object v12

    if-nez p1, :cond_2

    .line 128
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallFromAdb()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 134
    :goto_2
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageUid()I

    move-result v25

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_5

    .line 138
    iget-object v5, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->isInstallForUsers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 141
    iget-object v5, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 143
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v3

    .line 144
    new-instance v6, Ljava/io/File;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageMetrics;->getApksSize(Ljava/io/File;)J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide v5, v3

    :goto_3
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    goto :goto_4

    .line 147
    :cond_4
    iget-object v5, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 149
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    .line 150
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageMetrics;->getApksSize(Ljava/io/File;)J

    move-result-wide v5

    goto :goto_3

    :cond_5
    move-wide/from16 v16, v3

    move-wide/from16 v18, v16

    .line 156
    :goto_4
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 157
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getSessionId()I

    move-result v7

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 159
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageMetrics;->getUid(II)I

    move-result v9

    .line 161
    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v11

    .line 163
    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v13

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 164
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v14

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 165
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInternalErrorCode()I

    move-result v15

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v1

    check-cast v20, [I

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v1

    check-cast v21, [J

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 171
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v24

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 174
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v27

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 175
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getRequireUserAction()I

    move-result v28

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 176
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstantInstall()Z

    move-result v29

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 177
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v30

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 178
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v31

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 179
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallInherit()Z

    move-result v32

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 180
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallForUsers()Z

    move-result v33

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v34

    iget-object v1, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 184
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isDependencyInstallerEnabled()Z

    move-result v36

    iget-object v0, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 185
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getMissingSharedLibraryCount()I

    move-result v37

    const/16 v6, 0x20c

    const/16 v26, -0x1

    const/16 v35, 0x0

    .line 156
    invoke-static/range {v6 .. v37}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    return-void
.end method

.method public final reportInstallationToSecurityLog(I)V
    .locals 4

    .line 386
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    .line 399
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result p0

    if-nez p0, :cond_2

    .line 400
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33479

    .line 400
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    .line 403
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3347a

    .line 403
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
