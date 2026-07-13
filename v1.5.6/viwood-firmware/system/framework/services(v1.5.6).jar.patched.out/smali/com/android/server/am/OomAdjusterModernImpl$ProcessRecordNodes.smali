.class public Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"


# instance fields
.field public mFirstPopulatedSlot:I

.field public final mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

.field public final mSlotFunction:Ljava/util/function/ToIntFunction;

.field public final mType:I

.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public static synthetic $r8$lambda$1fW7yf2z7Pgv749DQUgfBRaf7aQ(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl;->adjToSlot(I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TZt9shA5uGR6y6KMomqwUImYth0(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$bQ88-2swpGH2IsZbscjy6IA3z44(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$dVky852B00emlsqiXMSJCZhOi8g(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl;->processStateToSlot(I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f3jBBX76pazR-KkVwKD4h19bcRw(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xRsLLgodHEUbn_iuIPZpAnHO0RE(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V
    .locals 2

    .line 279
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 277
    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 280
    iput p2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 292
    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda4;-><init>()V

    .line 293
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    goto :goto_0

    .line 288
    :cond_0
    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda2;-><init>()V

    .line 289
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    goto :goto_0

    .line 284
    :cond_1
    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>()V

    .line 285
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    .line 297
    :goto_0
    new-array v0, p3, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    :goto_1
    if-ge p1, p3, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    invoke-direct {v1, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;-><init>(Ljava/util/function/ToIntFunction;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 301
    :cond_2
    new-array p1, p3, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 302
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->resetLastNodes()V

    return-void
.end method


# virtual methods
.method public final getCurrentSlot(Lcom/android/server/am/ProcessRecord;)I
    .locals 1

    .line 490
    iget p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 494
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl;->adjToSlot(I)I

    move-result p0

    return p0

    .line 492
    :cond_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl;->processStateToSlot(I)I

    move-result p0

    return p0
.end method

.method public offer(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 402
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    .line 404
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    .line 405
    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    if-ge p1, v1, :cond_0

    .line 407
    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 409
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    .line 410
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object p0, p0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->offer(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;)V

    return-void
.end method

.method public poll()Lcom/android/server/am/ProcessRecord;
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v0, v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 390
    iget v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    if-ge v3, v0, :cond_1

    .line 391
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->poll()Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    move-result-object v2

    if-nez v2, :cond_0

    .line 394
    iget v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return-object v1

    .line 398
    :cond_2
    iget-object p0, v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 312
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->reset()V

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->setLastNodeToHead(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetLastNodes()V
    .locals 0

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    return-void
.end method

.method public setLastNodeToHead(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object p0, v0, p1

    return-void
.end method

.method public unlink(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 466
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->getCurrentSlot(Lcom/android/server/am/ProcessRecord;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 469
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v1, p0, p1

    if-ne v1, v0, :cond_0

    .line 470
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object v1, p0, p1

    .line 473
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    return-void
.end method
