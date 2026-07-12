.class public abstract Lorg/apache/commons/math/ConvergingAlgorithmImpl;
.super Ljava/lang/Object;
.source "ConvergingAlgorithmImpl.java"

# interfaces
.implements Lorg/apache/commons/math/ConvergingAlgorithm;


# instance fields
.field public absoluteAccuracy:D

.field public defaultAbsoluteAccuracy:D

.field public defaultMaximalIterationCount:I

.field public defaultRelativeAccuracy:D

.field public iterationCount:I

.field public maximalIterationCount:I

.field public relativeAccuracy:D


# direct methods
.method public constructor <init>(ID)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p2, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->defaultAbsoluteAccuracy:D

    const-wide v0, 0x3d06849b86a12b9bL    # 1.0E-14

    .line 65
    iput-wide v0, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->defaultRelativeAccuracy:D

    .line 66
    iput-wide p2, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    .line 67
    iput-wide v0, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    .line 68
    iput p1, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->defaultMaximalIterationCount:I

    .line 69
    iput p1, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->iterationCount:I

    return-void
.end method


# virtual methods
.method public setAbsoluteAccuracy(D)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    return-void
.end method
