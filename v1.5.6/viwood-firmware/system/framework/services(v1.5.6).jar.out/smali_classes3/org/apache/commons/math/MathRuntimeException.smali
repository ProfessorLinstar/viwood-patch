.class public abstract Lorg/apache/commons/math/MathRuntimeException;
.super Ljava/lang/RuntimeException;
.source "MathRuntimeException.java"


# static fields
.field private static final serialVersionUID:J = 0x7db74ddedac69d52L


# direct methods
.method public static synthetic access$000(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math/MathRuntimeException;->buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 137
    new-instance v0, Ljava/text/MessageFormat;

    invoke-interface {p1, p0}, Lorg/apache/commons/math/exception/util/Localizable;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 394
    new-instance v0, Lorg/apache/commons/math/MathRuntimeException$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math/MathRuntimeException$4;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    return-object v0
.end method
