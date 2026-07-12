.class public Lcom/android/server/display/mode/VotesStatsReporter;
.super Ljava/lang/Object;
.source "VotesStatsReporter.java"


# instance fields
.field public final mIgnoredRenderRate:Z

.field public final mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    .line 44
    iput-boolean p1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    return-void
.end method

.method public static getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I
    .locals 2

    .line 110
    instance-of v0, p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    .line 111
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    :goto_0
    float-to-int p0, p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 112
    instance-of v0, p0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 113
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    goto :goto_0

    .line 114
    :cond_1
    instance-of v0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    .line 117
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;->mRefreshRates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 118
    iget v0, v0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_2
    return p1

    .line 120
    :cond_3
    instance-of v0, p0, Lcom/android/server/display/mode/CombinedVote;

    const/16 v1, 0x3e8

    if-eqz v0, :cond_4

    check-cast p0, Lcom/android/server/display/mode/CombinedVote;

    .line 121
    iget-object p0, p0, Lcom/android/server/display/mode/CombinedVote;->mVotes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/mode/Vote;

    .line 124
    invoke-static {v0, p1}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v0

    .line 123
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_4
    return v1
.end method


# virtual methods
.method public final reportVoteAdded(IILcom/android/server/display/mode/Vote;)V
    .locals 6

    .line 56
    iget-boolean p0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    invoke-static {p3, p0}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v4

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VotesStatsReporter."

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/32 v0, 0x20000

    .line 57
    invoke-static {v0, v1, p0, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/16 v0, 0x318

    move v1, p1

    move v2, p2

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    return-void
.end method

.method public reportVoteChanged(IILcom/android/server/display/mode/Vote;)V
    .locals 0

    if-nez p3, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVoteRemoved(II)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVoteAdded(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final reportVoteRemoved(II)V
    .locals 9

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VotesStatsReporter."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    const-wide/32 v1, 0x20000

    .line 66
    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v3, 0x318

    const/4 v6, 0x3

    move v4, p1

    move v5, p2

    .line 68
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    return-void
.end method

.method public reportVotesActivated(IILandroid/view/Display$Mode;Landroid/util/SparseArray;)V
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    const/16 v1, 0x18

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p3

    float-to-int p3, p3

    :goto_0
    move v6, p3

    goto :goto_1

    :cond_0
    const/4 p3, -0x1

    goto :goto_0

    :goto_1
    const/4 p3, 0x0

    move v3, p3

    :goto_2
    const/16 p3, 0x17

    if-gt v3, p3, :cond_5

    if-ge v3, v0, :cond_1

    if-ge v3, p2, :cond_1

    :goto_3
    move v2, p1

    goto :goto_5

    .line 82
    :cond_1
    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/display/mode/Vote;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    if-lt v3, v0, :cond_3

    if-ge v3, p2, :cond_3

    .line 89
    iget-boolean v1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    invoke-static {p3, v1}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v5

    const/16 v1, 0x318

    const/4 v4, 0x1

    move v2, p1

    .line 90
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    goto :goto_4

    :cond_3
    move v2, p1

    :goto_4
    if-lt v3, p2, :cond_4

    if-ge v3, v0, :cond_4

    .line 97
    iget-boolean p1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    invoke-static {p3, p1}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v5

    const/16 v1, 0x318

    const/4 v4, 0x2

    .line 98
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v2, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move p1, v2

    goto :goto_2

    :cond_5
    return-void
.end method
