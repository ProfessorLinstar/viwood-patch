.class public Lorg/apache/commons/math/MaxIterationsExceededException;
.super Lorg/apache/commons/math/ConvergenceException;
.source "MaxIterationsExceededException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c8a943861b452e6L


# instance fields
.field private final maxIterations:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 45
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->MAX_ITERATIONS_EXCEEDED:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math/ConvergenceException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 46
    iput p1, p0, Lorg/apache/commons/math/MaxIterationsExceededException;->maxIterations:I

    return-void
.end method

.method public varargs constructor <init>(ILorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math/ConvergenceException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 74
    iput p1, p0, Lorg/apache/commons/math/MaxIterationsExceededException;->maxIterations:I

    return-void
.end method
