.class public Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;
.super Ljava/lang/Object;
.source "IntervalRandomNoiseGenerator.java"


# instance fields
.field public final mDistribution:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

.field public final mSamples:[D


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 35
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    .line 49
    new-instance v2, Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    invoke-direct {v2, p1, p2, v0, v1}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;-><init>(DD)V

    iput-object v2, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->refresh()V

    return-void

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha should be > 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addNoise(JJI)J
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    rem-int/lit8 p5, p5, 0x11

    aget-wide v0, v0, p5

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    invoke-virtual {v0}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->sample()D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/commons/math/MathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object p0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    aput-wide v0, p0, p5

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    sub-long/2addr p3, p1

    long-to-double p3, p3

    mul-double/2addr p3, v0

    double-to-long p3, p3

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public refresh()V
    .locals 2

    .line 81
    iget-object p0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public reseed(J)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->reseedRandomGenerator(J)V

    return-void
.end method
