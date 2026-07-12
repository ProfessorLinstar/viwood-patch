.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# static fields
.field public static ORIG_ENUMS:[I

.field public static PROTO_ENUMS:[I


# instance fields
.field public curProcStateSeq:J

.field public volatile hasInternetPermission:Z

.field public lastNetworkUpdatedProcStateSeq:J

.field public mCurAllowList:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mEphemeral:Z

.field public mForegroundServices:Z

.field public mIdle:Z

.field public mLastBackgroundTime:J

.field public mLastIdleTimeIfStillIdle:J

.field public mLastReportedChange:I

.field public mNumProcs:I

.field public mProcAdjChanged:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcRecords:Landroid/util/ArraySet;

.field public mRealLastIdleTime:J

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSetAllowList:Z

.field public mSetCapability:I

.field public mSetIdle:Z

.field public mSetProcState:I

.field public final mUid:I

.field public mUidIsFrozen:Z

.field public final networkStateLock:Ljava/lang/Object;

.field public final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public volatile procStateSeqWaitingForNetwork:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 150
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 159
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        -0x80000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 48
    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 104
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 184
    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 185
    iput-object p2, p0, Lcom/android/server/am/UidRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_0

    .line 186
    iget-object p1, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/UidRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    return-void
.end method


# virtual methods
.method public addProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areAllProcessesFrozen()Z
    .locals 1

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 396
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eq p1, v2, :cond_0

    .line 398
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public clearProcAdjChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9

    .line 451
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v1, 0x10500000001L

    .line 452
    iget v3, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 453
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v1

    const-wide v2, 0x10e00000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000003L

    .line 454
    iget-boolean v3, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000004L

    .line 455
    iget-boolean v3, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000005L

    .line 456
    iget-boolean v3, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 457
    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide v1, 0x10b00000006L

    move-object v0, p1

    .line 457
    invoke-static/range {v0 .. v6}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10800000007L

    .line 459
    iget-boolean v3, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 460
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_0

    int-to-long v3, v1

    .line 461
    sget-object v5, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v6, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    const-wide v1, 0x20e00000008L

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    :cond_0
    const-wide v1, 0x10500000009L

    .line 464
    iget v3, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10b0000000aL

    .line 466
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    .line 467
    iget-wide v5, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000002L

    .line 468
    iget-wide v5, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 470
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 472
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public forEachProcess(Ljava/util/function/Consumer;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurCapability()I
    .locals 0

    .line 244
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return p0
.end method

.method public getCurProcState()I
    .locals 0

    .line 197
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return p0
.end method

.method public getLastBackgroundTime()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-wide v0
.end method

.method public getLastIdleTimeIfStillIdle()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    return-wide v0
.end method

.method public getMinProcAdj()I
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x3e9

    :goto_0
    if-ltz v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getNumOfProcs()I
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public getProcAdjChanged()Z
    .locals 0

    .line 227
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return p0
.end method

.method public getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 379
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public getRealLastIdleTime()J
    .locals 2

    .line 285
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mRealLastIdleTime:J

    return-wide v0
.end method

.method public getSetCapability()I
    .locals 0

    .line 254
    iget p0, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return p0
.end method

.method public getSetProcState()I
    .locals 0

    .line 207
    iget p0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    return p0
.end method

.method public hasForegroundServices()Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return p0
.end method

.method public isCurAllowListed()Z
    .locals 0

    .line 320
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return p0
.end method

.method public isEphemeral()Z
    .locals 0

    .line 298
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 420
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    return p0
.end method

.method public isIdle()Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return p0
.end method

.method public isSetAllowListed()Z
    .locals 0

    .line 330
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return p0
.end method

.method public isSetIdle()Z
    .locals 0

    .line 350
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return p0
.end method

.method public noteProcAdjChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return-void
.end method

.method public removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/16 v0, 0x13

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 442
    iput v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method

.method public setCurAllowListed(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return-void
.end method

.method public setCurCapability(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method

.method public setCurProcState(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return-void
.end method

.method public setEphemeral(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return-void
.end method

.method public setForegroundServices(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return-void
.end method

.method public setFrozen(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    return-void
.end method

.method public setIdle(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return-void
.end method

.method public setLastBackgroundTime(J)V
    .locals 0

    .line 269
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-void
.end method

.method public setLastIdleTime(J)V
    .locals 2

    .line 290
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 292
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mRealLastIdleTime:J

    :cond_0
    return-void
.end method

.method public setLastReportedChange(I)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    return-void
.end method

.method public setSetAllowListed(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return-void
.end method

.method public setSetCapability(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return-void
.end method

.method public setSetIdle(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return-void
.end method

.method public setSetProcState(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 477
    const-string v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    if-eqz v1, :cond_0

    .line 484
    const-string v1, " ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    if-eqz v1, :cond_1

    .line 487
    const-string v1, " fgServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v1, :cond_2

    .line 490
    const-string v1, " allowlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_2
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 493
    const-string v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 496
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v1, :cond_4

    .line 497
    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_4
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_11

    .line 500
    const-string v1, " change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 504
    const-string v1, "gone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 506
    :goto_0
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x2

    const-string/jumbo v4, "|"

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 508
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_6
    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 513
    :cond_7
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    .line 515
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_8
    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 520
    :cond_9
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    .line 522
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_a
    const-string v1, "cached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    move v2, v1

    .line 527
    :goto_1
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_d

    if-eqz v2, :cond_c

    .line 529
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_c
    const-string/jumbo v1, "uncached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_d
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/high16 v3, -0x80000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    if-eqz v2, :cond_e

    .line 535
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_e
    const-string/jumbo v1, "procstate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_f
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_11

    if-eqz v2, :cond_10

    .line 541
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_10
    const-string/jumbo v1, "procadj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_11
    const-string v1, " procs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget v1, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, " seq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, " caps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateHasInternetPermission()V
    .locals 2

    .line 446
    const-string v0, "android.permission.INTERNET"

    iget v1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    return-void
.end method
