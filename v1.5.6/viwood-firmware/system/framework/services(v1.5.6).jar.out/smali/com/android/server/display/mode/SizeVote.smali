.class public Lcom/android/server/display/mode/SizeVote;
.super Ljava/lang/Object;
.source "SizeVote.java"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mHeight:I

.field public final mMinHeight:I

.field public final mMinWidth:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    .line 47
    iput p2, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    .line 48
    iput p3, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    .line 49
    iput p4, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/mode/SizeVote;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/display/mode/SizeVote;

    .line 76
    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    iget v3, p1, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    iget v3, p1, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    iget v3, p1, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    iget p1, p1, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 82
    iget v0, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeVote{ mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 5

    .line 54
    iget v0, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    if-lez v1, :cond_1

    .line 58
    iget v2, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v4, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    if-ne v4, v3, :cond_0

    .line 59
    iput v1, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 60
    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 61
    iget v0, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 62
    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    return-void

    .line 63
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    if-eqz v0, :cond_1

    .line 64
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 65
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 66
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 67
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    :cond_1
    return-void
.end method
