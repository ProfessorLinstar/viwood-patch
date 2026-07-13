.class public abstract Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;
.super Ljava/lang/Object;
.source "UnivariateRealSolverUtils.java"


# direct methods
.method public static bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)[D
    .locals 8

    const v7, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 128
    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;->bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D

    move-result-object p0

    return-object p0
.end method

.method public static bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move/from16 v5, p7

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    if-lez v5, :cond_4

    cmpg-double v8, p1, v1

    if-ltz v8, :cond_3

    cmpl-double v8, p1, v3

    if-gtz v8, :cond_3

    cmpl-double v8, v1, v3

    if-gez v8, :cond_3

    move-wide/from16 v8, p1

    move-wide v10, v8

    move v12, v7

    :cond_0
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v13

    .line 189
    invoke-static {v8, v9, v1, v2}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v8

    add-double/2addr v10, v13

    .line 190
    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math/util/FastMath;->min(DD)D

    move-result-wide v10

    .line 191
    invoke-interface {v0, v8, v9}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v13

    .line 193
    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v15

    add-int/2addr v12, v6

    mul-double v17, v13, v15

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_1

    if-ge v12, v5, :cond_1

    cmpl-double v18, v8, v1

    if-gtz v18, :cond_0

    cmpg-double v18, v10, v3

    if-ltz v18, :cond_0

    :cond_1
    if-gtz v17, :cond_2

    const/4 v0, 0x2

    .line 205
    new-array v0, v0, [D

    aput-wide v8, v0, v7

    aput-wide v10, v0, v6

    return-object v0

    .line 199
    :cond_2
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v6, Lorg/apache/commons/math/exception/util/LocalizedFormats;->FAILED_BRACKETING:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 201
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 202
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math/ConvergenceException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 178
    :cond_3
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_BRACKETING_PARAMETERS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 180
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 174
    :cond_4
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_MAX_ITERATIONS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 171
    :cond_5
    new-instance v0, Lorg/apache/commons/math/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math/exception/NullArgumentException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;)V

    throw v0
.end method

.method public static setup(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 226
    :cond_0
    new-instance p0, Lorg/apache/commons/math/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math/exception/NullArgumentException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;)V

    throw p0
.end method

.method public static solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D
    .locals 1

    .line 79
    invoke-static {p0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;->setup(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V

    .line 80
    invoke-static {}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils$LazyHolder;->access$000()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;->newDefaultSolver()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    move-result-object v0

    .line 81
    invoke-interface {v0, p5, p6}, Lorg/apache/commons/math/ConvergingAlgorithm;->setAbsoluteAccuracy(D)V

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    move-object p0, v0

    .line 82
    invoke-interface/range {p0 .. p5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide p0

    return-wide p0
.end method
