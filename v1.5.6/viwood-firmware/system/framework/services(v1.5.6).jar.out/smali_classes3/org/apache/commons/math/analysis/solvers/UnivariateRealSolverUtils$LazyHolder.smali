.class public abstract Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils$LazyHolder;
.super Ljava/lang/Object;
.source "UnivariateRealSolverUtils.java"


# static fields
.field public static final FACTORY:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    invoke-static {}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;->newInstance()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils$LazyHolder;->FACTORY:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;
    .locals 1

    .line 234
    sget-object v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils$LazyHolder;->FACTORY:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;

    return-object v0
.end method
