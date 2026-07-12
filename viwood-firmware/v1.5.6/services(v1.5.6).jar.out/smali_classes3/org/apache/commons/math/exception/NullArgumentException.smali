.class public Lorg/apache/commons/math/exception/NullArgumentException;
.super Lorg/apache/commons/math/exception/MathIllegalArgumentException;
.source "NullArgumentException.java"


# static fields
.field private static final serialVersionUID:J = -0x539cc8a80344c4feL


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/exception/util/Localizable;)V
    .locals 2

    .line 48
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
