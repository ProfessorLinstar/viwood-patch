.class public final Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;
.super Ljava/lang/Object;
.source "ProgramListChunk.java"


# instance fields
.field public complete:Z

.field public modified:Ljava/util/ArrayList;

.field public purge:Z

.field public removed:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 31
    iput-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

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

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    if-eq v2, v3, :cond_2

    return v1

    .line 57
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 58
    iget-boolean v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    iget-boolean v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 61
    :cond_3
    iget-boolean v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    iget-boolean v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 64
    :cond_4
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 67
    :cond_5
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 75
    iget-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    .line 78
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    .line 79
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 75
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 126
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    .line 127
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    const-wide/16 v0, 0x8

    add-long v7, p3, v0

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 129
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x78

    int-to-long v3, v1

    .line 131
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x1

    move-object v2, p1

    .line 130
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p1

    move-object v1, v2

    .line 134
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    if-ge v2, v0, :cond_0

    .line 136
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    mul-int/lit8 v4, v2, 0x78

    int-to-long v4, v4

    .line 137
    invoke-virtual {v3, v1, p1, v4, v5}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 138
    iget-object v4, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x18

    add-long v6, p3, v2

    const-wide/16 v2, 0x20

    add-long/2addr p3, v2

    .line 142
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    mul-int/lit8 p3, p1, 0x10

    int-to-long v2, p3

    .line 144
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    .line 143
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p2

    .line 147
    iget-object p3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v9, p1, :cond_1

    .line 149
    new-instance p3, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-direct {p3}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    mul-int/lit8 p4, v9, 0x10

    int-to-long v2, p4

    .line 150
    invoke-virtual {p3, v1, p2, v2, v3}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 151
    iget-object p4, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x28

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 100
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ".purge = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .complete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", .modified = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", .removed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
