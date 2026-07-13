.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# instance fields
.field public final mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

.field public mSize:I

.field public mStartIndex:I


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 562
    new-array v0, v0, [Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    const/4 v0, 0x0

    .line 563
    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    .line 564
    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V
    .locals 5

    .line 573
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    add-int v2, v0, v1

    const/4 v3, 0x5

    rem-int/2addr v2, v3

    .line 574
    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    aput-object p1, v4, v2

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 576
    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 578
    iput v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    return-void
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 588
    const-string v0, "attention check cache:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 590
    :goto_0
    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    if-ge v0, v1, :cond_1

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->get(I)Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmTimestamp(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmResult(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(I)Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    .locals 1

    .line 583
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    iget p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x5

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getLast()Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    .locals 2

    .line 568
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x5

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    aget-object p0, p0, v0

    return-object p0
.end method
