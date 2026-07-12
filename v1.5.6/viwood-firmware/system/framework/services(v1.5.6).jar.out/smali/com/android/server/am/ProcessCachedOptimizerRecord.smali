.class public final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "ProcessCachedOptimizerRecord.java"


# static fields
.field static final IS_FROZEN:Ljava/lang/String; = "isFrozen"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mEarliestFreezableTimeMillis:J

.field public mForceCompact:Z

.field public mFreezeExempt:Z

.field public mFreezeSticky:Z

.field public mFreezeUnfreezeTime:J

.field public mFreezerOverride:Z

.field public mFrozen:Z

.field public final mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mHasCollectedFrozenPSS:Z

.field public mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public mLastCompactTime:J

.field public mLastOomAdjChangeReason:I

.field public mLastUsedTimeout:J

.field public mPendingCompact:Z

.field public mPendingFreeze:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public mShouldNotFreeze:Z

.field public mShouldNotFreezeAdjSeq:I

.field public mShouldNotFreezeReason:I


# direct methods
.method public static synthetic $r8$lambda$6e1WKBdmUHOww6OyL-WUh31gNYE(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchFrozenEvent$1(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBmyY4u0xa6PxtuMQNuHUc2IWu0(Ljava/io/PrintWriter;Landroid/util/Pair;)V
    .locals 1

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LTcRtyqLvcipvWyqTX8k356MCns(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchUnfrozenEvent$2(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZHn3tWVRvIRmtdxS9KMoU_F4R4(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchFrozenEvent$0(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-6XxJyWq6MDe_Td30gYfonqo00(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchUnfrozenEvent$3(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 420
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 421
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public addFrozenProcessListener(Ljava/util/concurrent/Executor;Landroid/app/ActivityManagerInternal$FrozenProcessListener;)V
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchFrozenEvent()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchUnfrozenEvent()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 431
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastCompactTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 432
    const-string v0, " lastCompactProfile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 434
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    const-string v0, "hasPendingCompaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 437
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isFreezeExempt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 438
    const-string v0, " isPendingFreeze="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 439
    const-string v0, " isFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "earliestFreezableTimeMs="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 442
    iget-object p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 443
    const-string p2, " mFrozenProcessListeners="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 446
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getEarliestFreezableTime()J
    .locals 2

    .line 365
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    return-wide v0
.end method

.method public getFreezeUnfreezeTime()J
    .locals 2

    .line 304
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-wide v0
.end method

.method public getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0
.end method

.method public getLastCompactTime()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-wide v0
.end method

.method public getLastOomAdjChangeReason()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    return p0
.end method

.method public getLastUsedTimeout()J
    .locals 2

    .line 375
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    return-wide v0
.end method

.method public getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0
.end method

.method public getReqCompactSource()Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-object p0
.end method

.method public hasFreezerOverride()Z
    .locals 0

    .line 294
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return p0
.end method

.method public hasPendingCompact()Z
    .locals 0

    .line 236
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return p0
.end method

.method public init(J)V
    .locals 0

    .line 425
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method public isForceCompact()Z
    .locals 0

    .line 246
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return p0
.end method

.method public isFreezeExempt()Z
    .locals 0

    .line 385
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return p0
.end method

.method public isFreezeSticky()Z
    .locals 0

    .line 270
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 256
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return p0
.end method

.method public isPendingFreeze()Z
    .locals 0

    .line 395
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return p0
.end method

.method public final synthetic lambda$dispatchFrozenEvent$0(Landroid/util/Pair;)V
    .locals 0

    .line 409
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManagerInternal$FrozenProcessListener;

    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-interface {p1, p0}, Landroid/app/ActivityManagerInternal$FrozenProcessListener;->onProcessFrozen(I)V

    return-void
.end method

.method public final synthetic lambda$dispatchFrozenEvent$1(Landroid/util/Pair;)V
    .locals 2

    .line 409
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$dispatchUnfrozenEvent$2(Landroid/util/Pair;)V
    .locals 0

    .line 415
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManagerInternal$FrozenProcessListener;

    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-interface {p1, p0}, Landroid/app/ActivityManagerInternal$FrozenProcessListener;->onProcessUnfrozen(I)V

    return-void
.end method

.method public final synthetic lambda$dispatchUnfrozenEvent$3(Landroid/util/Pair;)V
    .locals 2

    .line 415
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEarliestFreezableTime(J)V
    .locals 0

    .line 370
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    return-void
.end method

.method public setForceCompact(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return-void
.end method

.method public setFreezeExempt(Z)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return-void
.end method

.method public setFreezeSticky(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    return-void
.end method

.method public setFreezeUnfreezeTime(J)V
    .locals 0

    .line 309
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method public setFreezerOverride(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return-void
.end method

.method public setFrozen(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return-void
.end method

.method public setHasCollectedFrozenPSS(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    return-void
.end method

.method public setHasPendingCompact(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return-void
.end method

.method public setLastCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-void
.end method

.method public setLastCompactTime(J)V
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-void
.end method

.method public setLastOomAdjChangeReason(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    return-void
.end method

.method public setLastUsedTimeout(J)V
    .locals 0

    .line 380
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    return-void
.end method

.method public setPendingFreeze(Z)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return-void
.end method

.method public setReqCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-void
.end method

.method public setReqCompactSource(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-void
.end method

.method public setShouldNotFreeze(ZII)V
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    return-void
.end method

.method public setShouldNotFreeze(ZZII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 342
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eq p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    and-int/lit8 v1, p3, -0x2

    .line 354
    :cond_2
    iget p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    if-ne v1, p2, :cond_3

    iget-boolean p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eq p1, p2, :cond_4

    .line 355
    :cond_3
    iput p4, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeAdjSeq:I

    .line 357
    :cond_4
    iput v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    .line 359
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return v0
.end method

.method public shouldNotFreeze()Z
    .locals 0

    .line 314
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return p0
.end method

.method public shouldNotFreezeAdjSeq()I
    .locals 0

    .line 324
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeAdjSeq:I

    return p0
.end method

.method public shouldNotFreezeReason()I
    .locals 0

    .line 319
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    return p0
.end method

.method public skipPSSCollectionBecauseFrozen()Z
    .locals 2

    .line 274
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 278
    iget-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 284
    iput-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    return v0
.end method
