.class public final Lcom/android/server/am/ProcessServiceRecord;
.super Ljava/lang/Object;
.source "ProcessServiceRecord.java"


# instance fields
.field public mAllowlistManager:Z

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBoundClientUids:Landroid/util/ArraySet;

.field public mConnectionGroup:I

.field public mConnectionImportance:I

.field public mConnectionService:Lcom/android/server/am/ServiceRecord;

.field public final mConnections:Landroid/util/ArraySet;

.field public mExecServicesFg:Z

.field public final mExecutingServices:Landroid/util/ArraySet;

.field public mFgServiceTypes:I

.field public mHasAboveClient:Z

.field public mHasClientActivities:Z

.field public mHasForegroundServices:Z

.field public mHasTopStartedAlmostPerceptibleServices:Z

.field public mHasTypeNoneFgs:Z

.field public mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

.field public mRepFgServiceTypes:I

.field public mRepHasForegroundServices:Z

.field public mScheduleServiceTimeoutPending:Z

.field public mSdkSandboxConnections:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Landroid/util/ArraySet;

.field public mTreatLikeActivity:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 132
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 147
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 159
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 160
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public addBoundClientUid(ILjava/lang/String;J)V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 575
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    return-void
.end method

.method public addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    .locals 9

    if-nez p1, :cond_0

    goto :goto_2

    .line 607
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 608
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 609
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 610
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 611
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 612
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    iget v5, v3, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    iget v5, v3, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 614
    invoke-virtual {v3}, Lcom/android/server/am/ConnectionRecord;->getFlags()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public addConnection(Lcom/android/server/am/ConnectionRecord;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->addSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V

    return-void
.end method

.method public final addSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V
    .locals 2

    .line 540
    iget-object p0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, p0, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 541
    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-boolean p0, p0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz p0, :cond_1

    .line 542
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 543
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    .line 545
    :cond_0
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public areAllShortForegroundServicesProcstateTimedOut(J)Z
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 259
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->hasUndemotedShortForegroundService(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public areForegroundServiceTypesSame(IZ)Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->getForegroundServiceTypes()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTypeNoneFgs:Z

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearBoundClientUids()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 622
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearBoundClientUids()V

    return-void
.end method

.method public containsAnyForegroundServiceTypes(I)Z
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->getForegroundServiceTypes()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 3

    .line 713
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 714
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mHasForegroundServices="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 715
    const-string p3, " forcingToImportant="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 717
    :cond_1
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez p3, :cond_2

    iget-wide p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-lez p3, :cond_3

    .line 719
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mHasTopStartedAlmostPerceptibleServices="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 721
    const-string p3, " mLastTopStartedAlmostPerceptibleBindRequestUptimeMs="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    iget-wide p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->println(J)V

    .line 724
    :cond_3
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz p3, :cond_5

    .line 725
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "hasClientActivities="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 726
    const-string p3, " hasAboveClient="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 727
    const-string p3, " treatLikeActivity="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 729
    :cond_5
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    if-nez p3, :cond_6

    iget p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    if-eqz p3, :cond_7

    .line 730
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "connectionGroup="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 731
    const-string p3, " Importance="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 732
    const-string p3, " Service="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 734
    :cond_7
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz p3, :cond_8

    .line 735
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "allowlistManager="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 737
    :cond_8
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    const-string p4, "  - "

    const/4 v0, 0x0

    if-lez p3, :cond_9

    .line 738
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Services:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_9

    .line 740
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_9
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_a

    .line 744
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Executing Services (fg="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    move v1, v0

    :goto_1
    if-ge v1, p3, :cond_a

    .line 747
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 750
    :cond_a
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_b

    .line 751
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mConnections:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    :goto_2
    if-ge v0, p3, :cond_b

    .line 753
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 757
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    const-string/jumbo p2, "scheduleServiceTimeoutPending="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    return-object p0
.end method

.method public getConnectionGroup()I
    .locals 0

    .line 344
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    return p0
.end method

.method public getConnectionImportance()I
    .locals 0

    .line 352
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    return p0
.end method

.method public getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public getForegroundServiceTypes()I
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNumForegroundServices()I
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 288
    iget-object v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public getSdkSandboxConnectionAt(I)Lcom/android/server/am/ConnectionRecord;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAboveClient()Z
    .locals 0

    .line 378
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    return p0
.end method

.method public hasClientActivities()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    return p0
.end method

.method public hasForegroundServices()Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    return p0
.end method

.method public hasNonShortForegroundServices()Z
    .locals 3

    .line 233
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTypeNoneFgs:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 241
    :cond_1
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    const/16 v0, 0x800

    if-eq p0, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public hasReportedForegroundServices()Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    return p0
.end method

.method public hasTopStartedAlmostPerceptibleServices()Z
    .locals 4

    .line 329
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasUndemotedShortForegroundService(J)Z
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 264
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 265
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->hasShortFgsInfo()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public incServiceCrashCountLocked(J)Z
    .locals 9

    .line 644
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 648
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_4

    .line 651
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 653
    iget-wide v5, v4, Lcom/android/server/am/ServiceRecord;->restartTime:J

    sget v7, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v5, p1, v5

    if-lez v5, :cond_1

    .line 654
    iput v3, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_2

    .line 656
    :cond_1
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 660
    :goto_2
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public final isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z
    .locals 6

    .line 310
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    .line 316
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_2

    .line 319
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    const/high16 v5, 0x10000

    .line 320
    invoke-virtual {v4, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public isTreatedLikeActivity()Z
    .locals 0

    .line 408
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    return p0
.end method

.method public modifyRawOomAdj(I)I
    .locals 0

    .line 382
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    if-eqz p0, :cond_6

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    if-ge p1, p0, :cond_1

    return p0

    :cond_1
    const/16 p0, 0xc8

    if-ge p1, p0, :cond_2

    return p0

    :cond_2
    const/16 p0, 0xfa

    if-ge p1, p0, :cond_3

    return p0

    :cond_3
    const/16 p0, 0x1f4

    if-ge p1, p0, :cond_4

    return p0

    :cond_4
    const/16 p0, 0x384

    if-ge p1, p0, :cond_5

    return p0

    :cond_5
    const/16 p0, 0x3e7

    if-ge p1, p0, :cond_6

    add-int/lit8 p1, p1, 0x1

    :cond_6
    :goto_0
    return p1
.end method

.method public noteScheduleServiceTimeoutPending(Z)V
    .locals 0

    .line 677
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    return-void
.end method

.method public numberOfConnections()I
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfExecutingServices()I
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfRunningServices()I
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfSdkSandboxConnections()I
    .locals 0

    .line 569
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCleanupApplicationRecordLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 670
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 671
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 672
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    return-void
.end method

.method public onProcessFrozenCancelled()V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->scheduleServiceTimeoutIfNeededLocked()V

    .line 694
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessUnfrozen()V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 687
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->scheduleServiceTimeoutIfNeededLocked()V

    .line 688
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeAllConnections()V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessServiceRecord;->removeSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public removeAllSdkSandboxConnections()V
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 560
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    :cond_0
    return-void
.end method

.method public removeConnection(Lcom/android/server/am/ConnectionRecord;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->removeSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V

    return-void
.end method

.method public final removeSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V
    .locals 1

    .line 550
    iget-object p0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, p0, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 551
    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-boolean p0, p0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz p0, :cond_0

    .line 552
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 553
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final scheduleServiceTimeoutIfNeededLocked()V
    .locals 5

    .line 702
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 705
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 706
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 707
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iput-wide v0, v4, Lcom/android/server/am/ServiceRecord;->executingStart:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConnectionGroup(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    return-void
.end method

.method public setConnectionImportance(I)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    return-void
.end method

.method public setConnectionService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    return-void
.end method

.method public setExecServicesFg(Z)V
    .locals 0

    .line 420
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    return-void
.end method

.method public setHasAboveClient(Z)V
    .locals 0

    .line 374
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    return-void
.end method

.method public setHasClientActivities(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 165
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasClientActivities(Z)V

    return-void
.end method

.method public setHasForegroundServices(ZIZ)V
    .locals 1

    .line 176
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 178
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "hasForegroundServices mismatch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 182
    iput p2, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    .line 183
    iput-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTypeNoneFgs:Z

    .line 184
    iget-object p2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundServices(Z)V

    const/16 p2, 0x100

    if-eqz p1, :cond_4

    .line 186
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    return-void

    .line 188
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    return-void
.end method

.method public setHasReportedForegroundServices(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    return-void
.end method

.method public setReportedForegroundServiceTypes(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepFgServiceTypes:I

    return-void
.end method

.method public setTreatLikeActivity(Z)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    return-void
.end method

.method public shouldExecServicesFg()Z
    .locals 0

    .line 416
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    return p0
.end method

.method public startExecutingService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->onServiceStarted(Landroid/content/pm/ServiceInfo;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 438
    :cond_1
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 439
    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 442
    iget-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v1, :cond_2

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    :cond_2
    return v0
.end method

.method public stopAllExecutingServices()V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public stopAllServices()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 471
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    return-void
.end method

.method public stopExecutingService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 5

    .line 456
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 457
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    :cond_0
    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_1
    return v0
.end method

.method public updateBoundClientUids()V
    .locals 15

    .line 579
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    .line 580
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 584
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 585
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 586
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    .line 588
    iget-object v5, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 589
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v5

    .line 590
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    .line 592
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move v9, v3

    .line 593
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 594
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 595
    iget v11, v10, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 596
    iget v11, v10, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v12, v10, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/am/ConnectionRecord;->getFlags()J

    move-result-wide v13

    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 600
    :cond_3
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    return-void
.end method

.method public updateHasAboveClientLocked()V
    .locals 4

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 361
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 364
    iget-object v3, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-ne v3, p0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    .line 366
    invoke-virtual {v2, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateHasTopStartedAlmostPerceptibleServices()V
    .locals 7

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    const-wide/16 v0, 0x0

    .line 297
    iput-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 298
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 300
    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    iget-wide v5, v2, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 303
    iget-boolean v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateHostingComonentTypeForBindingsLocked()V
    .locals 3

    .line 628
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x200

    if-ltz v0, :cond_1

    .line 629
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 638
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    return-void
.end method
