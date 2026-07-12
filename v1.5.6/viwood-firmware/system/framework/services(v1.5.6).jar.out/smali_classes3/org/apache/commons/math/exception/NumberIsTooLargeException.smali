.class public Lorg/apache/commons/math/exception/NumberIsTooLargeException;
.super Lorg/apache/commons/math/exception/MathIllegalNumberException;
.source "NumberIsTooLargeException.java"


# static fields
.field private static final serialVersionUID:J = 0x3c1742cdad69f2e7L


# instance fields
.field private final boundIsAllowed:Z

.field private final max:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 2

    if-eqz p4, :cond_0

    .line 68
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->NUMBER_TOO_LARGE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->NUMBER_TOO_LARGE_BOUND_EXCLUDED:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    :goto_0
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    .line 66
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/commons/math/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 72
    iput-object p3, p0, Lorg/apache/commons/math/exception/NumberIsTooLargeException;->max:Ljava/lang/Number;

    .line 73
    iput-boolean p4, p0, Lorg/apache/commons/math/exception/NumberIsTooLargeException;->boundIsAllowed:Z

    return-void
.end method
