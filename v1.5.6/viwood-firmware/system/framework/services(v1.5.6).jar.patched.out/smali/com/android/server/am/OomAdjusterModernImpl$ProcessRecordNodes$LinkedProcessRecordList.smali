.class public Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"


# instance fields
.field public final HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final mValueFunction:Ljava/util/function/ToIntFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/ToIntFunction;)V
    .locals 3

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 510
    new-instance v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    invoke-direct {v2, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 514
    iput-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 515
    iput-object v0, v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 516
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public offer(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;)V
    .locals 4

    .line 527
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    iget-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-interface {v0, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 531
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    iget-object v3, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-interface {v2, v3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    if-le v2, v0, :cond_0

    .line 532
    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    goto :goto_0

    .line 536
    :cond_0
    iput-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 537
    iget-object p0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object p0, p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 538
    iget-object p0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 539
    iput-object p1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    return-void
.end method

.method public poll()Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 521
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 522
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    return-object v0
.end method

.method public reset()V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eq v1, p0, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v3, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 574
    :cond_0
    iput-object p0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 575
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    return-void
.end method
