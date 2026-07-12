.class public Lcom/android/server/power/WakeLockLog$LogEntry;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# instance fields
.field public flags:I

.field public packageName:Ljava/lang/String;

.field public tag:Lcom/android/server/power/WakeLockLog$TagData;

.field public time:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final flagsToString(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 501
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetLEVEL_TO_STRING()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 v1, v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 503
    const-string v0, ",on-after-release"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    iget v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 506
    const-string v0, ",acq-causes-wake"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_1
    iget p0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_2

    .line 509
    const-string p0, ",system-wakelock"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public set(JILcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 0

    .line 441
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 442
    iput p3, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 443
    iput-object p4, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 444
    iput p5, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 464
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 4

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - RESET"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 480
    :cond_0
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez v1, :cond_1

    const-string v1, "---"

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_2

    .line 484
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "ACQ"

    goto :goto_1

    :cond_3
    const-string p1, "REL"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez p1, :cond_4

    const-string p1, "UNKNOWN"

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-ne p1, v1, :cond_5

    .line 493
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$LogEntry;->flagsToString(Ljava/lang/StringBuilder;)V

    .line 495
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez v0, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 525
    const-string p1, "System"

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    return-void

    .line 529
    :cond_1
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget p2, p2, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 533
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_3

    .line 536
    array-length p2, p1

    if-lez p2, :cond_3

    const/4 p2, 0x0

    .line 537
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    .line 538
    array-length p1, p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",..."

    .line 541
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method
