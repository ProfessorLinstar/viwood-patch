.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"


# static fields
.field public static REASON_NAMES:[Ljava/lang/String;


# instance fields
.field public final allowParallelSyncs:Z

.field public expectedRuntime:J

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field public volatile mImmutableExtras:Landroid/os/Bundle;

.field public final owningPackage:Ljava/lang/String;

.field public final owningUid:I

.field public final periodMillis:J

.field public final reason:I

.field public retries:I

.field public scheduleEjAsRegularJob:Z

.field public final sourcePeriodicId:I

.field public syncExemptionFlag:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 57
    const-string v6, "MasterSyncAuto"

    const-string v7, "UserStart"

    const-string v0, "DataSettingsChanged"

    const-string v1, "AccountsUpdated"

    const-string v2, "ServiceChanged"

    const-string v3, "Periodic"

    const-string v4, "IsSyncable"

    const-string v5, "AutoSync"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 1

    move-object v0, p1

    .line 122
    new-instance p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p1, v0, p7, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-object p6, p8

    move p7, p9

    move p8, p10

    invoke-direct/range {p0 .. p8}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 15

    move-object/from16 v0, p1

    .line 134
    iget-object v1, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v5, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v6, v0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-boolean v7, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iget v9, v0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v14, 0x0

    move-object v0, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V
    .locals 15

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    .line 129
    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 145
    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 146
    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 147
    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 148
    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 149
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 150
    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 151
    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 152
    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 153
    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 154
    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/4 p1, -0x1

    .line 155
    iput p1, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 156
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 157
    iput p14, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    return-void
.end method

.method public static extrasToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    invoke-static {p0, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 583
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 3

    if-nez p0, :cond_0

    .line 570
    const-string/jumbo p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 573
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 575
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 577
    :cond_1
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 284
    :cond_0
    const-string v2, "SyncManagerJob"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 288
    :cond_1
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v4, "accountType"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 290
    const-string/jumbo v6, "provider"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 291
    const-string/jumbo v7, "userId"

    const v8, 0x7fffffff

    invoke-virtual {v0, v7, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 292
    const-string/jumbo v9, "owningUid"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 293
    const-string/jumbo v9, "owningPackage"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 294
    const-string/jumbo v9, "reason"

    invoke-virtual {v0, v9, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 295
    const-string/jumbo v9, "source"

    invoke-virtual {v0, v9, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 296
    const-string v8, "allowParallelSyncs"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 297
    const-string/jumbo v8, "isPeriodic"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 298
    const-string/jumbo v8, "sourcePeriodicId"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 299
    const-string/jumbo v8, "periodMillis"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 300
    const-string v8, "flexMillis"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 301
    const-string/jumbo v8, "syncExemptionFlag"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 303
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 305
    const-string/jumbo v8, "syncExtras"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 307
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 310
    :cond_2
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 311
    const-string v10, "ACCOUNT:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x8

    .line 312
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 313
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v9

    .line 314
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v16, v8

    invoke-virtual {v9, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 315
    invoke-virtual {v9, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v8

    :goto_1
    move-object/from16 v8, v16

    goto :goto_0

    .line 320
    :cond_4
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v11, v1, v6, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 323
    new-instance v10, Lcom/android/server/content/SyncOperation;

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v24}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 326
    const-string/jumbo v1, "jobId"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 327
    const-string v1, "expectedRuntime"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 328
    const-string/jumbo v1, "retries"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lcom/android/server/content/SyncOperation;->retries:I

    .line 329
    const-string v1, "ejDowngradedToRegular"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    return-object v10
.end method

.method public static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_3

    if-eqz p0, :cond_2

    .line 479
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 480
    array-length v2, v1

    if-ne v2, v0, :cond_0

    const/4 p0, 0x0

    .line 481
    aget-object p0, v1, p0

    return-object p0

    .line 483
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 487
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 489
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    neg-int p0, p1

    sub-int/2addr p0, v0

    .line 493
    sget-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_4

    .line 494
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 496
    :cond_4
    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public areExtrasEqual(Landroid/os/Bundle;Z)Z
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-static {p0, p1, p2}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result p0

    return p0
.end method

.method public createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .locals 15

    .line 162
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_0
    new-instance v0, Lcom/android/server/content/SyncOperation;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v6, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget v9, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    iget-wide v10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/4 v14, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    return-object v0
.end method

.method public dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;
    .locals 7

    .line 399
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    const-string v2, "JobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 403
    const-string p4, "***"

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p4, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    .line 404
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 405
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " u"

    .line 406
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 407
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    const-string p4, " ["

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 409
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    .line 410
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    sget-object v3, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 413
    const-string v3, " ExpectedIn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 414
    invoke-static {v1, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    const-string v3, "expedited"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    const-string v3, " EXPEDITED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_2
    const-string/jumbo v3, "schedule_as_expedited_job"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 421
    const-string v3, " EXPEDITED-JOB"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    if-eqz v3, :cond_3

    .line 423
    const-string v3, "(scheduled-as-regular)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_3
    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ExemptionFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 433
    :cond_4
    const-string v3, " STANDBY-EXEMPTED(TOP)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 430
    :cond_5
    const-string v3, " STANDBY-EXEMPTED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_6
    :goto_1
    const-string v3, " Reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget v3, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v3}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-boolean p1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz p1, :cond_7

    .line 442
    const-string p1, " (period="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v1, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 444
    const-string p1, " flex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-static {v1, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 446
    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_7
    iget p1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    if-lez p1, :cond_8

    .line 449
    const-string p1, " Retries="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget p1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    if-nez p2, :cond_a

    .line 453
    const-string p1, " Owner={"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget p1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v1, p1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object p1, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_9

    .line 458
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget p1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 460
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 459
    invoke-virtual {p3, p1, p2}, Lcom/android/server/content/SyncAdapterStateFetcher;->getStandbyBucket(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget p0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {p3, p0}, Lcom/android/server/content/SyncAdapterStateFetcher;->isAppActive(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 464
    const-string p0, " [ACTIVE]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_9
    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 473
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public enableBackoff()V
    .locals 1

    .line 532
    const-string v0, "ignore_backoff"

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncOperation;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public enableTwoWaySync()V
    .locals 1

    .line 517
    const-string/jumbo v0, "upload"

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncOperation;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public getClonedExtras()Landroid/os/Bundle;
    .locals 1

    .line 618
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getExtrasAsString()Ljava/lang/String;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/content/SyncOperation;->extrasToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJobBias()I
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x14

    return p0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasDoNotRetry()Z
    .locals 2

    .line 536
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v0, "do_not_retry"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public hasIgnoreBackoff()Z
    .locals 2

    .line 521
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v0, "ignore_backoff"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public hasRequireCharging()Z
    .locals 2

    .line 552
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v0, "require_charging"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAppStandbyExempted()Z
    .locals 0

    .line 561
    iget p0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConflict(Lcom/android/server/content/SyncOperation;)Z
    .locals 3

    .line 339
    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 340
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v1, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 344
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isDerivedFromFailedPeriodicSync()Z
    .locals 1

    .line 358
    iget p0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isExpedited()Z
    .locals 2

    .line 506
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v0, "expedited"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIgnoreSettings()Z
    .locals 2

    .line 548
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v0, "ignore_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isInitialization()Z
    .locals 2

    .line 502
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v0, "initialize"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNotAllowedOnMetered()Z
    .locals 2

    .line 540
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v0, "allow_metered"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isScheduledAsExpeditedJob()Z
    .locals 2

    .line 556
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v0, "schedule_as_expedited_job"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isUpload()Z
    .locals 2

    .line 510
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v0, "upload"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const/4 v2, 0x1

    .line 353
    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v3, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iget-wide p0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeExtra(Ljava/lang/String;)V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 609
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 612
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 613
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 614
    iput-object v1, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    return-void
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .locals 2

    .line 597
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 598
    iget v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 599
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 600
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toJobInfoExtras()Landroid/os/PersistableBundle;
    .locals 10

    .line 207
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 209
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 211
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 212
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "accountType"

    const-string v6, "accountName"

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 214
    instance-of v8, v7, Landroid/accounts/Account;

    if-eqz v8, :cond_0

    .line 215
    check-cast v7, Landroid/accounts/Account;

    .line 216
    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    .line 217
    iget-object v9, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v6, v9}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v6, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACCOUNT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 222
    :cond_0
    instance-of v5, v7, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 223
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 224
    :cond_1
    instance-of v5, v7, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 225
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 226
    :cond_2
    instance-of v5, v7, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 227
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 228
    :cond_3
    instance-of v5, v7, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 229
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 230
    :cond_4
    instance-of v5, v7, Ljava/lang/Double;

    if-eqz v5, :cond_5

    .line 231
    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 232
    :cond_5
    instance-of v5, v7, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 233
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-nez v7, :cond_7

    const/4 v5, 0x0

    .line 235
    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_7
    const-string v4, "SyncManager"

    const-string v5, "Unknown extra type."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    :cond_8
    const-string/jumbo v2, "syncExtras"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 242
    const-string v1, "SyncManagerJob"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-string/jumbo v2, "provider"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string/jumbo v1, "owningUid"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string/jumbo v1, "owningPackage"

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v1, "reason"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string/jumbo v1, "source"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v1, "allowParallelSyncs"

    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    const-string/jumbo v1, "jobId"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string/jumbo v1, "isPeriodic"

    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    const-string/jumbo v1, "sourcePeriodicId"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string/jumbo v1, "periodMillis"

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 257
    const-string v1, "flexMillis"

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 258
    const-string v1, "expectedRuntime"

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 259
    const-string/jumbo v1, "retries"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string/jumbo v1, "syncExemptionFlag"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v1, "ejDowngradedToRegular"

    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final toKey()Ljava/lang/String;
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    const-string/jumbo v2, "provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " account {name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v2, " isPeriodic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 381
    const-string v2, " period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    const-string v2, " flex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 383
    const-string p0, " extras: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 394
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wakeLockName()Ljava/lang/String;
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0
.end method
