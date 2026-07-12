.class public abstract Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;
.super Lorg/apache/commons/math/distribution/AbstractDistribution;
.source "AbstractContinuousDistribution.java"

# interfaces
.implements Lorg/apache/commons/math/distribution/ContinuousDistribution;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x872367e4cbe0c2L


# instance fields
.field protected final randomData:Lorg/apache/commons/math/random/RandomDataImpl;

.field private solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/math/distribution/AbstractDistribution;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/commons/math/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 56
    iput-wide v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->solverAbsoluteAccuracy:D

    return-void
.end method


# virtual methods
.method public abstract getDomainLowerBound(D)D
.end method

.method public abstract getDomainUpperBound(D)D
.end method

.method public abstract getInitialDomain(D)D
.end method

.method public abstract getSolverAbsoluteAccuracy()D
.end method

.method public inverseCumulativeProbability(D)D
    .locals 12

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ltz v2, :cond_2

    cmpl-double v2, p1, v3

    if-gtz v2, :cond_2

    .line 97
    new-instance v5, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;

    invoke-direct {v5, p0, p1, p2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;-><init>(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;D)V

    .line 114
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->getDomainLowerBound(D)D

    move-result-wide v8

    .line 115
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->getDomainUpperBound(D)D

    move-result-wide v10

    .line 119
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->getInitialDomain(D)D

    move-result-wide v6

    .line 118
    invoke-static/range {v5 .. v11}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;->bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)[D

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/math/ConvergenceException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    .line 138
    aget-wide v6, p1, p2

    const/4 p2, 0x1

    aget-wide v8, p1, p2

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v10

    .line 138
    invoke-static/range {v5 .. v11}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D

    move-result-wide p0

    return-wide p0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 127
    invoke-interface {v5, v8, v9}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v2

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    return-wide v8

    .line 130
    :cond_0
    invoke-interface {v5, v10, v11}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v2

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    return-wide v10

    .line 134
    :cond_1
    new-instance p0, Lorg/apache/commons/math/MathException;

    invoke-direct {p0, p1}, Lorg/apache/commons/math/MathException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 91
    :cond_2
    sget-object p0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 91
    invoke-static {p0, p1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public reseedRandomGenerator(J)V
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/random/RandomDataImpl;->reSeed(J)V

    return-void
.end method

.method public sample()D
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math/random/RandomDataImpl;->nextInversionDeviate(Lorg/apache/commons/math/distribution/ContinuousDistribution;)D

    move-result-wide v0

    return-wide v0
.end method
