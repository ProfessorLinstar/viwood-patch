.class public Lcom/android/server/display/mode/RefreshRateVote$RenderVote;
.super Lcom/android/server/display/mode/RefreshRateVote;
.source "RefreshRateVote.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 79
    instance-of v0, p1, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/display/mode/RefreshRateVote;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderVote{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateVote;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 2

    .line 70
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v1, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 71
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iget v1, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 73
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    return-void
.end method
