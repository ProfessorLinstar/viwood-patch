.class public Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactoryImpl;
.super Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;
.source "UnivariateRealSolverFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newBrentSolver()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;
    .locals 0

    .line 50
    new-instance p0, Lorg/apache/commons/math/analysis/solvers/BrentSolver;

    invoke-direct {p0}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;-><init>()V

    return-object p0
.end method

.method public newDefaultSolver()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactoryImpl;->newBrentSolver()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    move-result-object p0

    return-object p0
.end method
