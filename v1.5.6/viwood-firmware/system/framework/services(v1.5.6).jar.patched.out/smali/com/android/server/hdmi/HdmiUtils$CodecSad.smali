.class public Lcom/android/server/hdmi/HdmiUtils$CodecSad;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# instance fields
.field public final audioCodec:I

.field public final sad:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput p1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 769
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 779
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 780
    check-cast p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 781
    iget v0, p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 782
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 789
    iget v0, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 790
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 791
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 789
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
