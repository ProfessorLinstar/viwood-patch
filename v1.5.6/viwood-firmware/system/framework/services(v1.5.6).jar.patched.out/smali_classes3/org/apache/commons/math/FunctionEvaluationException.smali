.class public Lorg/apache/commons/math/FunctionEvaluationException;
.super Lorg/apache/commons/math/MathException;
.source "FunctionEvaluationException.java"


# static fields
.field private static final serialVersionUID:J = 0x133679ea1abbe904L


# instance fields
.field private argument:[D


# direct methods
.method public varargs constructor <init>(DLorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 86
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    const/4 p3, 0x1

    .line 87
    new-array p3, p3, [D

    const/4 p4, 0x0

    aput-wide p1, p3, p4

    iput-object p3, p0, Lorg/apache/commons/math/FunctionEvaluationException;->argument:[D

    return-void
.end method
