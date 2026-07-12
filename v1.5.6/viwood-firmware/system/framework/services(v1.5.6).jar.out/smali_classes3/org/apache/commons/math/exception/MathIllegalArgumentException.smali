.class public abstract Lorg/apache/commons/math/exception/MathIllegalArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "MathIllegalArgumentException.java"


# static fields
.field private static final serialVersionUID:J = -0x539cc8a80344c4feL


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final general:Lorg/apache/commons/math/exception/util/Localizable;

.field private final specific:Lorg/apache/commons/math/exception/util/Localizable;


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/math/exception/MathIllegalArgumentException;->specific:Lorg/apache/commons/math/exception/util/Localizable;

    .line 63
    iput-object p2, p0, Lorg/apache/commons/math/exception/MathIllegalArgumentException;->general:Lorg/apache/commons/math/exception/util/Localizable;

    .line 64
    invoke-static {p3}, Lorg/apache/commons/math/exception/util/ArgUtils;->flatten([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math/exception/MathIllegalArgumentException;->arguments:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/exception/MathIllegalArgumentException;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/exception/MathIllegalArgumentException;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/apache/commons/math/exception/MathIllegalArgumentException;->specific:Lorg/apache/commons/math/exception/util/Localizable;

    iget-object v1, p0, Lorg/apache/commons/math/exception/MathIllegalArgumentException;->general:Lorg/apache/commons/math/exception/util/Localizable;

    iget-object p0, p0, Lorg/apache/commons/math/exception/MathIllegalArgumentException;->arguments:[Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Lorg/apache/commons/math/exception/util/MessageFactory;->buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
