.class public Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;
.super Ljava/lang/Object;
.source "VirtualDeviceLog.java"


# instance fields
.field public final mDeviceId:I

.field public final mOwnerUid:I

.field public final mTimestamp:J

.field public final mType:I


# direct methods
.method public constructor <init>(IIJI)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mType:I

    .line 96
    iput p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mDeviceId:I

    .line 97
    iput-wide p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mTimestamp:J

    .line 98
    iput p5, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mOwnerUid:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;)V
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->-$$Nest$sfgetDATE_FORMAT()Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    iget-wide v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string p2, " - "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mType:I

    sget v1, Lcom/android/server/companion/virtual/VirtualDeviceLog;->TYPE_CREATED:I

    if-ne p2, v1, :cond_0

    const-string p2, "START"

    goto :goto_0

    :cond_0
    const-string p2, "CLOSE"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string p2, " Device ID: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mDeviceId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mOwnerUid:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mOwnerUid:I

    invoke-virtual {p3, p0}, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->getPackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
