.class public Lorg/apache/commons/math/random/RandomDataImpl;
.super Ljava/lang/Object;
.source "RandomDataImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x8b2985bcf4804f4L


# instance fields
.field private rand:Lorg/apache/commons/math/random/RandomGenerator;

.field private secRand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 114
    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->secRand:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public final getRan()Lorg/apache/commons/math/random/RandomGenerator;
    .locals 3

    .line 701
    iget-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    if-nez v0, :cond_0

    .line 702
    new-instance v0, Lorg/apache/commons/math/random/JDKRandomGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math/random/JDKRandomGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math/random/RandomGenerator;->setSeed(J)V

    .line 705
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    return-object p0
.end method

.method public nextInversionDeviate(Lorg/apache/commons/math/distribution/ContinuousDistribution;)D
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 903
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math/random/RandomDataImpl;->nextUniform(DD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math/distribution/ContinuousDistribution;->inverseCumulativeProbability(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public nextUniform(DD)D
    .locals 4

    cmpl-double v0, p1, p3

    if-gez v0, :cond_1

    .line 516
    invoke-virtual {p0}, Lorg/apache/commons/math/random/RandomDataImpl;->getRan()Lorg/apache/commons/math/random/RandomGenerator;

    move-result-object p0

    .line 519
    invoke-interface {p0}, Lorg/apache/commons/math/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 521
    invoke-interface {p0}, Lorg/apache/commons/math/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    sub-double/2addr p3, p1

    mul-double/2addr v0, p3

    add-double/2addr p1, v0

    return-wide p1

    .line 513
    :cond_1
    new-instance p0, Lorg/apache/commons/math/exception/NumberIsTooLargeException;

    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 514
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public reSeed(J)V
    .locals 1

    .line 734
    iget-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Lorg/apache/commons/math/random/JDKRandomGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math/random/JDKRandomGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 737
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math/random/RandomGenerator;->setSeed(J)V

    return-void
.end method
