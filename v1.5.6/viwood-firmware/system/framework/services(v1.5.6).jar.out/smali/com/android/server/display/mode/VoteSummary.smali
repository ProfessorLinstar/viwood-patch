.class public final Lcom/android/server/display/mode/VoteSummary;
.super Ljava/lang/Object;
.source "VoteSummary.java"


# instance fields
.field public appRequestBaseModeRefreshRate:F

.field public disableRefreshRateSwitching:Z

.field public height:I

.field public final mIsDisplayResolutionRangeVotingEnabled:Z

.field public final mLoggingEnabled:Z

.field public final mSupportedModesVoteEnabled:Z

.field public final mSupportsFrameRateOverride:Z

.field public maxPhysicalRefreshRate:F

.field public maxRenderFrameRate:F

.field public minHeight:I

.field public minPhysicalRefreshRate:F

.field public minRenderFrameRate:F

.field public minWidth:I

.field public rejectedModeIds:Ljava/util/Set;

.field public requestedRefreshRates:Ljava/util/Set;

.field public supportedModeIds:Ljava/util/List;

.field public supportedRefreshRates:Ljava/util/List;

.field public width:I


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    .line 71
    iput-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 72
    iput-boolean p2, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    .line 73
    iput-boolean p3, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 74
    iput-boolean p4, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->reset()V

    return-void
.end method

.method public static equalsWithinFloatTolerance(FF)Z
    .locals 2

    .line 0
    const v0, 0x3c23d70a    # 0.01f

    sub-float v1, p1, v0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    add-float/2addr p1, v0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V
    .locals 2

    .line 102
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    if-eqz p1, :cond_2

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/VoteSummary;->updateSummaryWithBestAllowedResolution([Landroid/view/Display$Mode;)V

    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p2

    iput p2, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 104
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 108
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_3

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adjustSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public applyVotes(Landroid/util/SparseArray;II)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->reset()V

    move v0, p3

    :goto_0
    if-lt v0, p2, :cond_1

    .line 84
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/mode/Vote;

    if-nez v1, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-interface {v1, p0}, Lcom/android/server/display/mode/Vote;->updateSummary(Lcom/android/server/display/mode/VoteSummary;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_2

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyVotes for range ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p3}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public disableModeSwitching(F)V
    .locals 1

    .line 192
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 193
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 195
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disabled mode switching on summary: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public disableRenderRateSwitching(F)V
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VoteSummary;->isRenderRateAchievable(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 207
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_1

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disabled render rate switching on summary: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public filterModes([Landroid/view/Display$Mode;)Ljava/util/List;
    .locals 7

    .line 127
    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 130
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 133
    :goto_0
    array-length v3, p1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_a

    aget-object v5, p1, v4

    .line 134
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateRefreshRatesSupported(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeSupported(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 140
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeRejected(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 143
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeSize(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeWithinPhysicalRefreshRange(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    .line 149
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeWithinRenderRefreshRange(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    .line 152
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeRenderRateAchievable(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    .line 155
    :cond_8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    invoke-static {v5, v6}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v5

    if-eqz v5, :cond_9

    move v1, v2

    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    if-eqz v1, :cond_b

    .line 161
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_b
    return-object v0
.end method

.method public final isRenderRateAchievable(F)Z
    .locals 4

    .line 341
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    div-float v0, p1, v0

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    .line 342
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 345
    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    sub-float/2addr p0, v1

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isValid()Z
    .locals 7

    .line 349
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const-string v1, ", maxRenderFrameRate="

    const/4 v2, 0x0

    const-string v3, "VoteSummary"

    if-lez v0, :cond_1

    .line 350
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vote summary resulted in empty set (invalid frame rate range): minRenderFrameRate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    if-eqz v4, :cond_3

    .line 359
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    iget-boolean p0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p0, :cond_2

    .line 361
    const-string p0, "Vote summary resulted in empty set (empty supportedModes)"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 367
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_5

    .line 368
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 369
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_6

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested refreshRate is outside frame rate range: requestedRefreshRates="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", requestedRefreshRate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", minRenderFrameRate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 2

    .line 114
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 116
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 118
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 119
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iget p1, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 121
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "limitRefreshRanges: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 411
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 412
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 413
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 414
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    const/4 v1, -0x1

    .line 415
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 416
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    const/4 v1, 0x0

    .line 417
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 418
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    .line 419
    iput-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    .line 420
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 421
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    .line 423
    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    .line 424
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 425
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Summary reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoteSummary"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;)Landroid/view/Display$Mode;
    .locals 2

    .line 175
    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    .line 177
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display$Mode;

    .line 178
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 188
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Display$Mode;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoteSummary{ minPhysicalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxPhysicalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disableRefreshRateSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appRequestBaseModeRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", requestRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rejectedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDisplayResolutionRangeVotingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedModesVoteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportsFrameRateOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateSummaryWithBestAllowedResolution([Landroid/view/Display$Mode;)V
    .locals 9

    .line 384
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 385
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    const/4 v2, -0x1

    .line 386
    iput v2, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 387
    iput v2, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 389
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, p1, v3

    .line 390
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-gt v6, v0, :cond_2

    .line 391
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-gt v6, v1, :cond_2

    .line 392
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    iget v7, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    if-lt v6, v7, :cond_2

    .line 393
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    iget v7, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    if-lt v6, v7, :cond_2

    .line 394
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    const v8, 0x3c23d70a    # 0.01f

    sub-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 395
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    mul-int/2addr v6, v7

    if-gt v6, v4, :cond_1

    .line 401
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    if-ne v7, v0, :cond_2

    .line 402
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    if-ne v7, v1, :cond_2

    .line 404
    :cond_1
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 405
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    move v4, v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final validateModeRejected(Landroid/view/Display$Mode;)Z
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is a rejectedMode: mode.modeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rejectedModeIds="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final validateModeRenderRateAchievable(Landroid/view/Display$Mode;)Z
    .locals 3

    .line 266
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/VoteSummary;->isRenderRateAchievable(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outside frame rate bounds: minRenderFrameRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", maxRenderFrameRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", modePhysicalRefreshRate="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final validateModeSize(Landroid/view/Display$Mode;)Z
    .locals 2

    .line 212
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    if-ne v0, v1, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 214
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wrong size: desiredWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": desiredHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": actualWidth="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": actualHeight="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 215
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final validateModeSupported(Landroid/view/Display$Mode;)Z
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedMode not found: mode.modeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", supportedModeIds="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 288
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final validateModeWithinPhysicalRefreshRange(Landroid/view/Display$Mode;)Z
    .locals 3

    .line 227
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 231
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 233
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v1, :cond_2

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outside refresh rate bounds: minPhysicalRefreshRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", maxPhysicalRefreshRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", modeRefreshRate="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final validateModeWithinRenderRefreshRange(Landroid/view/Display$Mode;)Z
    .locals 3

    .line 246
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 249
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    if-nez v1, :cond_2

    .line 250
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 252
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outside render rate bounds: minRenderFrameRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", maxRenderFrameRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", modeRefreshRate="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final validateRefreshRatesSupported(Landroid/view/Display$Mode;)Z
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 317
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    iget v4, v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    invoke-static {v3, v4}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v3

    iget v2, v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    invoke-static {v3, v2}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 322
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_3

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedRefreshRates not found: mode.refreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mode.vsyncRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", supportedRefreshRates="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 323
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v1
.end method
