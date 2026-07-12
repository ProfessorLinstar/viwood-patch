.class public abstract Lorg/apache/commons/math/exception/MathIllegalNumberException;
.super Lorg/apache/commons/math/exception/MathIllegalArgumentException;
.source "MathIllegalNumberException.java"


# static fields
.field private static final serialVersionUID:J = -0x67595d29f3bbad06L


# instance fields
.field private final argument:Ljava/lang/Number;


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 0

    .line 50
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4}, Lorg/apache/commons/math/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 51
    iput-object p3, p0, Lorg/apache/commons/math/exception/MathIllegalNumberException;->argument:Ljava/lang/Number;

    return-void
.end method
