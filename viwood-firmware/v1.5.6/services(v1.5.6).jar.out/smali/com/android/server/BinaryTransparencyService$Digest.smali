.class public final Lcom/android/server/BinaryTransparencyService$Digest;
.super Ljava/lang/Record;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "algorithm",
        "value"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        [B
    }
.end annotation


# instance fields
.field public final algorithm:I

.field public final value:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 1866
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    return-void
.end method

.method public synthetic constructor <init>(I[BLcom/android/server/BinaryTransparencyService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$Digest;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/BinaryTransparencyService$Digest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/BinaryTransparencyService$Digest;

    iget v0, p0, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    iget v1, p1, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    iget-object p1, p1, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    .line 0
    iget v0, p0, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public algorithm()I
    .locals 0

    .line 1866
    iget p0, p0, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1866
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService$Digest;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1866
    iget v0, p0, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    invoke-static {v0, p0}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1866
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$Digest;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/BinaryTransparencyService$Digest;

    const-string v1, "algorithm;value"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()[B
    .locals 0

    .line 1866
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    return-object p0
.end method
