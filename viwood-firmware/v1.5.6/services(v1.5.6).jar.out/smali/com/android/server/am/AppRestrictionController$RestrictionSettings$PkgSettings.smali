.class public final Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# instance fields
.field public mCurrentRestrictionLevel:I

.field public mLastNotificationShownTime:[J

.field public mLastRestrictionLevel:I

.field public mLevelChangeTime:J

.field public mNotificationId:[I

.field public final mPackageName:Ljava/lang/String;

.field public mReason:I

.field public final mUid:I

.field public final synthetic this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 471
    iput p3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    const/4 p1, 0x0

    .line 472
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 609
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    .line 610
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 611
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 612
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    iput-wide v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 613
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 614
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-eqz v1, :cond_0

    .line 615
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 618
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-eqz p0, :cond_1

    .line 619
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    :cond_1
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;J)V
    .locals 6

    .line 508
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    .line 511
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 512
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    invoke-static {v1}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 514
    :cond_0
    :goto_0
    const-string v1, " levelChange="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 516
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 517
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 518
    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 519
    const-string v2, " lastNoti("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmNotificationHelper(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    const-string v2, ")="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    aget-wide v2, v2, v1

    sub-long/2addr v2, p2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    const-string p2, " effectiveExemption="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-virtual {p2, p0}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 526
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 630
    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-nez v2, :cond_1

    goto :goto_0

    .line 633
    :cond_1
    check-cast p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 634
    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    iget-wide v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 639
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 640
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 642
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getCurrentRestrictionLevel()I
    .locals 0

    .line 541
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return p0
.end method

.method public getLastNotificationTime(I)J
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 560
    :cond_0
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getLastRestrictionLevel()I
    .locals 0

    .line 546
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return p0
.end method

.method public getNotificationId(I)I
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 588
    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 551
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 536
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    return p0
.end method

.method public setLastNotificationTime(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 566
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V

    return-void
.end method

.method public setLastNotificationTime(IJZ)V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 574
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    aput-wide p2, v0, p1

    if-eqz p4, :cond_1

    .line 578
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 579
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    :cond_1
    return-void
.end method

.method public setLevelChangeTime(J)V
    .locals 0

    .line 603
    iput-wide p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    return-void
.end method

.method public setNotificationId(II)V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 595
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 597
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    aput p2, p0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    const-string v1, "RestrictionLevel{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 497
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    invoke-static {v1}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    invoke-static {p0}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    .line 503
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(III)I
    .locals 2

    .line 477
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    if-eq p1, v0, :cond_0

    .line 478
    iput v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 479
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 480
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    const v0, 0xff00

    and-int/2addr p2, v0

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p2, p3

    .line 481
    iput p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 482
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p2

    iget p3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 485
    :cond_0
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return p0
.end method
