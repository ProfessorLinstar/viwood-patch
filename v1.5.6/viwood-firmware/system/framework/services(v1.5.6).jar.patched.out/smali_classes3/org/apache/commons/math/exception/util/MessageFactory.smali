.class public abstract Lorg/apache/commons/math/exception/util/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# direct methods
.method public static varargs buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 65
    new-instance v1, Ljava/text/MessageFormat;

    invoke-interface {p2, p0}, Lorg/apache/commons/math/exception/util/Localizable;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 66
    invoke-virtual {v1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 70
    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    new-instance p2, Ljava/text/MessageFormat;

    invoke-interface {p1, p0}, Lorg/apache/commons/math/exception/util/Localizable;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 73
    invoke-virtual {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
