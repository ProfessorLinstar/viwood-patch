.class public final Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;
.super Ljava/lang/Object;
.source "AmFmRegionConfig.java"


# instance fields
.field public fmDeemphasis:B

.field public fmRds:B

.field public ranges:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    if-eq v2, v3, :cond_2

    return v1

    .line 36
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 37
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 40
    :cond_3
    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-byte v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 43
    :cond_4
    iget-byte p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    iget-byte p1, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 51
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 52
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    .line 53
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-byte p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    .line 54
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 51
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x10

    int-to-long v3, v1

    .line 102
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x1

    move-object v2, p1

    move-wide v7, p3

    .line 101
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p1

    .line 105
    iget-object p3, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_0

    .line 107
    new-instance p4, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    invoke-direct {p4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;-><init>()V

    mul-int/lit8 v1, p3, 0x10

    int-to-long v3, v1

    .line 108
    invoke-virtual {p4, v2, p1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x10

    add-long/2addr p3, v7

    .line 112
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    const-wide/16 p3, 0x11

    add-long/2addr p3, v7

    .line 113
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x18

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 73
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ".ranges = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .fmDeemphasis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/Deemphasis;->dumpBitfield(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", .fmRds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-byte p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    invoke-static {p0}, Landroid/hardware/broadcastradio/V2_0/Rds;->dumpBitfield(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
