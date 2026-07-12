.class public Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# instance fields
.field public final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    return-void
.end method


# virtual methods
.method public fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 586
    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p4, :cond_1

    :goto_0
    move-object v1, p4

    goto :goto_1

    .line 591
    :cond_1
    new-instance p4, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {p4}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    goto :goto_0

    :goto_1
    const/4 p4, 0x0

    .line 593
    aget-byte p4, p1, p4

    shr-int/lit8 v2, p4, 0x6

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    move v3, v4

    :cond_2
    const/4 v2, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_3

    .line 640
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Type not recognized ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "PowerManagerService.WLLog"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 612
    :cond_3
    array-length v2, p1

    if-ge v2, v4, :cond_4

    goto :goto_2

    :cond_4
    and-int/lit8 p4, p4, 0x7f

    .line 618
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object p0

    .line 619
    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    add-long/2addr v2, p2

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v5, p0

    .line 620
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v1

    .line 600
    :cond_5
    array-length v3, p1

    if-ge v3, v2, :cond_6

    goto :goto_2

    :cond_6
    and-int/lit8 v6, p4, 0x3f

    .line 605
    aget-byte p4, p1, v5

    and-int/lit8 p4, p4, 0x7f

    .line 606
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v5

    .line 607
    aget-byte p0, p1, v4

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    add-long v2, p0, p2

    const/4 v4, 0x1

    .line 608
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v1

    .line 624
    :cond_7
    array-length p0, p1

    const/16 p2, 0x9

    if-ge p0, p2, :cond_8

    :goto_2
    return-object v0

    .line 628
    :cond_8
    aget-byte p0, p1, v5

    int-to-long p2, p0

    const-wide/16 v5, 0xff

    and-long/2addr p2, v5

    const/16 p0, 0x38

    shl-long/2addr p2, p0

    aget-byte p0, p1, v4

    int-to-long v3, p0

    and-long/2addr v3, v5

    const/16 p0, 0x30

    shl-long/2addr v3, p0

    or-long/2addr p2, v3

    aget-byte p0, p1, v2

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x28

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x4

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x5

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x6

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x10

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x7

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x8

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    aget-byte p0, p1, p0

    int-to-long p0, p0

    and-long/2addr p0, v5

    or-long v2, p2, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 636
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v1

    :cond_9
    :goto_3
    return-object v0
.end method

.method public final getRelativeTime(JJ)I
    .locals 0

    .line 0
    cmp-long p0, p3, p1

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sub-long/2addr p3, p1

    const-wide/16 p0, 0xff

    cmp-long p0, p3, p0

    if-lez p0, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    long-to-int p0, p3

    return p0
.end method

.method public toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .locals 9

    .line 681
    iget v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_1

    .line 702
    array-length v0, p2

    if-lt v0, v3, :cond_1

    .line 703
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result p3

    if-gez p3, :cond_0

    return p3

    .line 708
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result p0

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p2, v2

    and-int/lit16 p0, p3, 0xff

    int-to-byte p0, p0

    .line 709
    aput-byte p0, p2, v4

    :cond_1
    return v3

    .line 733
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz p2, :cond_5

    .line 684
    array-length v0, p2

    if-lt v0, v1, :cond_5

    .line 685
    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-virtual {p0, p3, p4, v5, v6}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result p3

    if-gez p3, :cond_4

    return p3

    .line 690
    :cond_4
    iget p4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 p4, p4, 0x3f

    or-int/lit8 p4, p4, 0x40

    int-to-byte p4, p4

    aput-byte p4, p2, v2

    .line 692
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, p2, v4

    and-int/lit16 p0, p3, 0xff

    int-to-byte p0, p0

    .line 693
    aput-byte p0, p2, v3

    :cond_5
    return v1

    .line 718
    :cond_6
    iget-wide p0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/16 p3, 0x9

    if-eqz p2, :cond_7

    .line 719
    array-length p4, p2

    if-lt p4, p3, :cond_7

    .line 720
    aput-byte v2, p2, v2

    const/16 p4, 0x38

    shr-long v5, p0, p4

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int p4, v5

    int-to-byte p4, p4

    .line 721
    aput-byte p4, p2, v4

    const/16 p4, 0x30

    shr-long v4, p0, p4

    and-long/2addr v4, v7

    long-to-int p4, v4

    int-to-byte p4, p4

    .line 722
    aput-byte p4, p2, v3

    const/16 p4, 0x28

    shr-long v2, p0, p4

    and-long/2addr v2, v7

    long-to-int p4, v2

    int-to-byte p4, p4

    .line 723
    aput-byte p4, p2, v1

    const/16 p4, 0x20

    shr-long v0, p0, p4

    and-long/2addr v0, v7

    long-to-int p4, v0

    int-to-byte p4, p4

    const/4 v0, 0x4

    .line 724
    aput-byte p4, p2, v0

    const/16 p4, 0x18

    shr-long v0, p0, p4

    and-long/2addr v0, v7

    long-to-int p4, v0

    int-to-byte p4, p4

    const/4 v0, 0x5

    .line 725
    aput-byte p4, p2, v0

    const/16 p4, 0x10

    shr-long v0, p0, p4

    and-long/2addr v0, v7

    long-to-int p4, v0

    int-to-byte p4, p4

    const/4 v0, 0x6

    .line 726
    aput-byte p4, p2, v0

    const/16 p4, 0x8

    shr-long v0, p0, p4

    and-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x7

    .line 727
    aput-byte v0, p2, v1

    and-long/2addr p0, v7

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 728
    aput-byte p0, p2, p4

    :cond_7
    return p3
.end method
