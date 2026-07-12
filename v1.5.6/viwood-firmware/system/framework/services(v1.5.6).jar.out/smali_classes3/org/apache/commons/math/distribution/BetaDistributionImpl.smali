.class public Lorg/apache/commons/math/distribution/BetaDistributionImpl;
.super Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;
.source "BetaDistributionImpl.java"

# interfaces
.implements Lorg/apache/commons/math/distribution/ContinuousDistribution;


# static fields
.field private static final serialVersionUID:J = -0x10f54b9581f4e2a4L


# instance fields
.field private alpha:D

.field private beta:D

.field private final solverAbsoluteAccuracy:D

.field private z:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 85
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;-><init>()V

    .line 73
    iput-wide p1, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->alpha:D

    .line 74
    iput-wide p3, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->beta:D

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 75
    iput-wide p1, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->z:D

    .line 76
    iput-wide p5, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->solverAbsoluteAccuracy:D

    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_1

    return-wide v0

    .line 205
    :cond_1
    iget-wide v5, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->alpha:D

    iget-wide v7, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->beta:D

    move-wide v3, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math/special/Beta;->regularizedBeta(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDomainLowerBound(D)D
    .locals 0

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getDomainUpperBound(D)D
    .locals 0

    .line 0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method public getInitialDomain(D)D
    .locals 0

    .line 0
    return-wide p1
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    .line 224
    iget-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    return-wide v0

    .line 176
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->inverseCumulativeProbability(D)D

    move-result-wide p0

    return-wide p0
.end method
