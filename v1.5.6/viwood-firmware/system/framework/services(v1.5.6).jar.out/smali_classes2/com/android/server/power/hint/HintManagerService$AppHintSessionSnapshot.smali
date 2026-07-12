.class public Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# instance fields
.field public mCurrentSessionCount:I

.field public mGraphicsPipelineSessionCount:I

.field public mMaxConcurrentSession:I

.field public mMaxThreadCount:I

.field public mPowerEfficientSessionCount:I

.field public mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

.field public final mTargetDurationNsCountPQSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .locals 1

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    .line 513
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQSize:I

    const/4 p1, 0x0

    .line 565
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    .line 566
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    .line 567
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    .line 568
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    .line 569
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    .line 570
    new-instance p1, Ljava/util/PriorityQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public getMaxConcurrentSession()I
    .locals 0

    .line 611
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    return p0
.end method

.method public getMaxThreadCount()I
    .locals 0

    .line 615
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    return p0
.end method

.method public getPowerEfficientSessionCount()I
    .locals 0

    .line 619
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    return p0
.end method

.method public logGraphicsPipelineSession()V
    .locals 1

    .line 589
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    return-void
.end method

.method public logPowerEfficientSession()V
    .locals 1

    .line 585
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    return-void
.end method

.method public targetDurationNsList()[J
    .locals 5

    const/4 v0, 0x5

    .line 628
    new-array v1, v0, [J

    .line 629
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 632
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTargetDurationNs()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public updateTargetDurationNs(J)V
    .locals 4

    .line 597
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    .line 598
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTargetDurationNs()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 599
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->setCount(I)V

    .line 600
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->setTimestamp()V

    return-void

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 605
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;-><init>(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;J)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateThreadCount(I)V
    .locals 1

    .line 593
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    return-void
.end method

.method public updateUponSessionClose()V
    .locals 1

    .line 581
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    return-void
.end method

.method public updateUponSessionCreation(IJ)V
    .locals 2

    .line 574
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    .line 575
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    .line 576
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    .line 577
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateTargetDurationNs(J)V

    return-void
.end method
