.class public Lorg/apache/commons/math/MathException;
.super Ljava/lang/Exception;
.source "MathException.java"


# static fields
.field private static final serialVersionUID:J = 0x6715a06381085ecfL


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final pattern:Lorg/apache/commons/math/exception/util/Localizable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 98
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    iput-object v0, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    if-nez p1, :cond_0

    .line 99
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 86
    new-array p1, p1, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public getGeneralPattern()Lorg/apache/commons/math/exception/util/Localizable;
    .locals 0

    .line 160
    iget-object p0, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    return-object p0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/MathException;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/MathException;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/text/MessageFormat;

    iget-object v1, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    invoke-interface {v1, p1}, Lorg/apache/commons/math/exception/util/Localizable;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getSpecificPattern()Lorg/apache/commons/math/exception/util/Localizable;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public printStackTrace()V
    .locals 1

    .line 199
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/MathException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .line 209
    monitor-enter p1

    .line 210
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 214
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
