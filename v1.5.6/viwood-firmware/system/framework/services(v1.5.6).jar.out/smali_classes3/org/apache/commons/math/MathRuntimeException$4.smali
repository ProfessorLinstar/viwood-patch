.class Lorg/apache/commons/math/MathRuntimeException$4;
.super Ljava/lang/IllegalArgumentException;
.source "MathRuntimeException.java"


# static fields
.field private static final serialVersionUID:J = -0x3b762231632f99f1L


# instance fields
.field final synthetic val$arguments:[Ljava/lang/Object;

.field final synthetic val$pattern:Lorg/apache/commons/math/exception/util/Localizable;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    iput-object p2, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalizedMessage()Ljava/lang/String;
    .locals 2

    .line 408
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    iget-object p0, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lorg/apache/commons/math/MathRuntimeException;->access$000(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 402
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    iget-object p0, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lorg/apache/commons/math/MathRuntimeException;->access$000(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
