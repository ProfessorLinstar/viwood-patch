.class public abstract Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;
.super Lorg/apache/commons/math/ConvergingAlgorithmImpl;
.source "UnivariateRealSolverImpl.java"

# interfaces
.implements Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;


# instance fields
.field public defaultFunctionValueAccuracy:D

.field public functionValueAccuracy:D

.field public result:D

.field public resultComputed:Z


# direct methods
.method public constructor <init>(ID)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;-><init>(ID)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->resultComputed:Z

    const-wide p1, 0x3cd203af9ee75616L    # 1.0E-15

    .line 99
    iput-wide p1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->defaultFunctionValueAccuracy:D

    .line 100
    iput-wide p1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    return-void
.end method


# virtual methods
.method public final clearResult()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->iterationCount:I

    .line 218
    iput-boolean v0, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->resultComputed:Z

    return-void
.end method

.method public final setResult(DI)V
    .locals 0

    .line 193
    iput-wide p1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    .line 194
    iput p3, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->iterationCount:I

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->resultComputed:Z

    return-void
.end method

.method public verifyInterval(DD)V
    .locals 0

    cmpl-double p0, p1, p3

    if-gez p0, :cond_0

    return-void

    .line 260
    :cond_0
    sget-object p0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 262
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 260
    invoke-static {p0, p1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method
