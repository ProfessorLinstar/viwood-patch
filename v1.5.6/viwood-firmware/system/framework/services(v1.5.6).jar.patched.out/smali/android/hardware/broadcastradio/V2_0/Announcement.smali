.class public final Landroid/hardware/broadcastradio/V2_0/Announcement;
.super Ljava/lang/Object;
.source "Announcement.java"


# instance fields
.field public selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

.field public type:B

.field public vendorInfo:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 74
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 79
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 78
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 84
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/Announcement;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/Announcement;-><init>()V

    mul-int/lit8 v5, v1, 0x38

    int-to-long v5, v5

    .line 85
    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/broadcastradio/V2_0/Announcement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
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

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/Announcement;

    if-eq v2, v3, :cond_2

    return v1

    .line 32
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/Announcement;

    .line 33
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 36
    :cond_3
    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    iget-byte v3, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    if-eq v2, v3, :cond_4

    return v1

    .line 39
    :cond_4
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 47
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 48
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    .line 49
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    .line 50
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 95
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 96
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    const-wide/16 v0, 0x28

    add-long v7, p3, v0

    const-wide/16 v0, 0x30

    add-long/2addr p3, v0

    .line 98
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p3

    mul-int/lit8 p4, p3, 0x20

    int-to-long v3, p4

    .line 100
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x1

    move-object v2, p1

    .line 99
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p1

    .line 103
    iget-object p2, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 105
    new-instance p4, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    invoke-direct {p4}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    mul-int/lit8 v0, p2, 0x20

    int-to-long v0, v0

    .line 106
    invoke-virtual {p4, v2, p1, v0, v1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ".selector = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/AnnouncementType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", .vendorInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
