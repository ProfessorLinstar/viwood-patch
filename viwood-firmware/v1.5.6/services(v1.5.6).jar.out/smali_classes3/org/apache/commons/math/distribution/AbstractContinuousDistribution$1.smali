.class public Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;
.super Ljava/lang/Object;
.source "AbstractContinuousDistribution.java"

# interfaces
.implements Lorg/apache/commons/math/analysis/UnivariateRealFunction;


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

.field public final synthetic val$p:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;D)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    iput-wide p2, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->val$p:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 5

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math/distribution/Distribution;->cumulativeProbability(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->val$p:D
    :try_end_0
    .catch Lorg/apache/commons/math/MathException; {:try_start_0 .. :try_end_0} :catch_0

    sub-double/2addr v0, v2

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 107
    :cond_0
    new-instance v0, Lorg/apache/commons/math/FunctionEvaluationException;

    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CUMULATIVE_PROBABILITY_RETURNED_NAN:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->val$p:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p2, v1, p0}, Lorg/apache/commons/math/FunctionEvaluationException;-><init>(DLorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :catch_0
    move-exception p0

    .line 104
    new-instance v0, Lorg/apache/commons/math/FunctionEvaluationException;

    invoke-virtual {p0}, Lorg/apache/commons/math/MathException;->getSpecificPattern()Lorg/apache/commons/math/exception/util/Localizable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math/MathException;->getGeneralPattern()Lorg/apache/commons/math/exception/util/Localizable;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math/MathException;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p2, v1, p0}, Lorg/apache/commons/math/FunctionEvaluationException;-><init>(DLorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
