.class public abstract Lcom/android/server/display/mode/RefreshRateVote;
.super Ljava/lang/Object;
.source "RefreshRateVote.java"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mMaxRefreshRate:F

.field public final mMinRefreshRate:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    .line 34
    iput p2, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/mode/RefreshRateVote;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/display/mode/RefreshRateVote;

    .line 41
    iget v1, p1, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    iget v3, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    iget p1, p1, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    .line 42
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshRateVote{  mMinRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
