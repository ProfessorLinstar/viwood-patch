.class Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# instance fields
.field public final mPackageHistory:Landroid/util/ArrayMap;

.field public mWindowSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 520
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 7

    .line 575
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 576
    :goto_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserPackage;

    .line 578
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongArrayQueue;

    .line 579
    iget-object v4, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 580
    const-string v4, ", u"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 581
    iget v2, v2, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 582
    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 585
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-lt v4, v2, :cond_0

    .line 586
    invoke-virtual {v3, v4}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v5

    invoke-static {v5, v6, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 587
    const-string v5, ", "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 589
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getNthLastWakeupForPackage(Ljava/lang/String;II)J
    .locals 1

    .line 566
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    const-wide/16 p1, 0x0

    if-nez p0, :cond_0

    return-wide p1

    .line 570
    :cond_0
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    sub-int/2addr v0, p3

    if-gez v0, :cond_1

    return-wide p1

    .line 571
    :cond_1
    invoke-virtual {p0, v0}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalWakeupsInWindow(Ljava/lang/String;I)I
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 558
    :cond_0
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p0

    return p0
.end method

.method public recordAlarmForPackage(Ljava/lang/String;IJ)V
    .locals 2

    .line 524
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    .line 525
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/LongArrayQueue;

    if-nez p2, :cond_0

    .line 527
    new-instance p2, Landroid/util/LongArrayQueue;

    invoke-direct {p2}, Landroid/util/LongArrayQueue;-><init>()V

    .line 528
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_0
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v0

    cmp-long p1, v0, p3

    if-gez p1, :cond_2

    .line 531
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 533
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->snapToWindow(Landroid/util/LongArrayQueue;)V

    return-void
.end method

.method public removeForPackage(Ljava/lang/String;I)V
    .locals 0

    .line 546
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    .line 547
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeForUser(I)V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 538
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserPackage;

    .line 539
    iget v1, v1, Landroid/content/pm/UserPackage;->userId:I

    if-ne v1, p1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final snapToWindow(Landroid/util/LongArrayQueue;)V
    .locals 4

    .line 551
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    add-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 552
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    :cond_0
    return-void
.end method
