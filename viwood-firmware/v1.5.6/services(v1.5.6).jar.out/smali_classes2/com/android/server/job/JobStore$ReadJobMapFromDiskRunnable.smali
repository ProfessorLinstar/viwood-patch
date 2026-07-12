.class public final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public final rtcGood:Z

.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1105
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 1111
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 1112
    iput-object p4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1229
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 3

    .line 1537
    const-string p0, "jobid"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1538
    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1539
    const-string v2, "class"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1540
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object p1
.end method

.method public final buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 10

    .line 1563
    const-string/jumbo p0, "net-capabilities-csv"

    const/4 v0, 0x0

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1565
    const-string/jumbo v1, "net-forbidden-capabilities-csv"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1567
    const-string/jumbo v2, "net-transport-types-csv"

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    goto :goto_1

    .line 1570
    :cond_1
    :goto_0
    const-string/jumbo v3, "net-capabilities"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1571
    const-string/jumbo v4, "net-unwanted-capabilities"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1573
    const-string/jumbo v5, "net-transport-types"

    invoke-interface {p2, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p0, :cond_5

    if-eqz v2, :cond_5

    .line 1579
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1580
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 1582
    invoke-static {p0}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object p0

    array-length v4, p0

    move v5, v6

    :goto_2
    if-ge v5, v4, :cond_2

    aget v8, p0, v5

    .line 1583
    invoke-virtual {v3, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1586
    :cond_2
    invoke-static {v1}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object p0

    array-length v1, p0

    move v4, v6

    :goto_3
    if-ge v4, v1, :cond_3

    aget v5, p0, v4

    .line 1587
    invoke-virtual {v3, v5}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1590
    :cond_3
    invoke-static {v2}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object p0

    array-length v1, p0

    :goto_4
    if-ge v6, v1, :cond_4

    aget v2, p0, v6

    .line 1591
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1594
    :cond_4
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-string v1, "estimated-download-bytes"

    const-wide/16 v2, -0x1

    .line 1596
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "estimated-upload-bytes"

    .line 1598
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1595
    invoke-virtual {p0, v4, v5, v8, v9}, Landroid/app/job/JobInfo$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-string/jumbo v1, "minimum-network-chunk-bytes"

    .line 1601
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1600
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumNetworkChunkBytes(J)Landroid/app/job/JobInfo$Builder;

    goto/16 :goto_8

    :cond_5
    if-eqz v3, :cond_c

    if-eqz v5, :cond_c

    .line 1606
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1607
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 1610
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_5
    const/16 v8, 0x19

    if-ge v3, v2, :cond_7

    aget v9, v1, v3

    if-gt v9, v8, :cond_6

    .line 1613
    invoke-virtual {p0, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1616
    :cond_7
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_6
    if-ge v3, v2, :cond_9

    aget v4, v1, v3

    if-gt v4, v8, :cond_8

    .line 1619
    invoke-virtual {p0, v4}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1624
    :cond_9
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    :goto_7
    if-ge v6, v2, :cond_b

    aget v3, v1, v6

    const/4 v4, 0x7

    if-gt v3, v4, :cond_a

    .line 1627
    invoke-virtual {p0, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1630
    :cond_b
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_8

    .line 1635
    :cond_c
    const-string p0, "connectivity"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1637
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1639
    :cond_d
    const-string/jumbo p0, "metered"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x4

    .line 1641
    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1643
    :cond_e
    const-string/jumbo p0, "unmetered"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p0, 0x2

    .line 1645
    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1647
    :cond_f
    const-string/jumbo p0, "not-roaming"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x3

    .line 1649
    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1653
    :cond_10
    :goto_8
    const-string p0, "idle"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1655
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 1657
    :cond_11
    const-string p0, "charging"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1659
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1661
    :cond_12
    const-string p0, "battery-not-low"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1663
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1665
    :cond_13
    const-string/jumbo p0, "storage-not-low"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1667
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_14
    return-void
.end method

.method public final buildRtcExecutionTimesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;
    .locals 5

    .line 1697
    const-string p0, "delay"

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1698
    invoke-interface {p1, v2, p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1699
    const-string p0, "deadline"

    const-wide v3, 0x7fffffffffffffffL

    .line 1700
    invoke-interface {p1, v2, p0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    .line 1701
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 1676
    const-string p0, "initial-backoff"

    const/4 v0, 0x0

    invoke-interface {p2, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1678
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1679
    const-string p0, "backoff-policy"

    invoke-interface {p2, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1680
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1681
    invoke-virtual {p1, v1, v2, p0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_0
    return-void
.end method

.method public final readDebugTagsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Set;
    .locals 3

    .line 1765
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 1767
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1769
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1770
    const-string v1, "debug-tag"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1774
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 1777
    :try_start_0
    const-string/jumbo v0, "tag"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1782
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1779
    const-string v1, "JobStore"

    const-string v2, "Invalid debug tag persisted to disk"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1768
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_2
    return-object p0
.end method

.method public final readJobMapImpl(Ljava/io/InputStream;ZJ)Ljava/util/List;
    .locals 9

    .line 1234
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 1236
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 1237
    const-string v8, "JobStore"

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    .line 1239
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p1

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-ne p1, v7, :cond_2

    .line 1243
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1244
    const-string p0, "No persisted jobs."

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    .line 1249
    :cond_2
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1250
    const-string v1, "job-info"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    const-string/jumbo v1, "version"

    invoke-interface {v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gt v3, v7, :cond_8

    if-gez v3, :cond_3

    goto :goto_3

    .line 1259
    :cond_3
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    :goto_1
    if-ne v0, v6, :cond_6

    .line 1263
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1265
    const-string v1, "job"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move v1, p2

    move-wide v4, p3

    .line 1267
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLcom/android/modules/utils/TypedXmlPullParser;IJ)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    move-object p2, v0

    if-eqz p0, :cond_5

    .line 1269
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1270
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Read out "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v8, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_4
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1274
    :cond_5
    const-string p0, "Error reading job from file."

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v1, p2

    move-wide v4, p3

    move-object p2, p0

    .line 1278
    :goto_2
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    if-ne v0, v7, :cond_7

    return-object p1

    :cond_7
    move-object p0, p2

    move p2, v1

    move-wide p3, v4

    goto :goto_1

    .line 1255
    :cond_8
    :goto_3
    const-string p0, "Invalid version number, aborting jobs file read."

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v0
.end method

.method public final readJobWorkItemFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobWorkItem;
    .locals 10

    .line 1734
    const-string p0, "JobStore"

    new-instance v0, Landroid/app/job/JobWorkItem$Builder;

    invoke-direct {v0}, Landroid/app/job/JobWorkItem$Builder;-><init>()V

    .line 1736
    const-string v1, "delivery-count"

    const/4 v2, 0x0

    .line 1737
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobWorkItem$Builder;->setDeliveryCount(I)Landroid/app/job/JobWorkItem$Builder;

    move-result-object v1

    .line 1739
    const-string v3, "estimated-download-bytes"

    const-wide/16 v4, -0x1

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "estimated-upload-bytes"

    .line 1741
    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1738
    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/app/job/JobWorkItem$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobWorkItem$Builder;

    move-result-object v1

    const-string/jumbo v3, "minimum-network-chunk-bytes"

    .line 1743
    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobWorkItem$Builder;->setMinimumNetworkChunkBytes(J)Landroid/app/job/JobWorkItem$Builder;

    .line 1745
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1747
    :try_start_0
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 1748
    invoke-virtual {v0, p1}, Landroid/app/job/JobWorkItem$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobWorkItem$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1755
    :try_start_1
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem$Builder;->build()Landroid/app/job/JobWorkItem;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 1757
    const-string v0, "Invalid JobWorkItem"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception p1

    .line 1750
    const-string v0, "Persisted extras contained invalid data"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final readJobWorkItemsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 4

    .line 1707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1711
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1712
    const-string v2, "job-work-item"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1717
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobWorkItemFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobWorkItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1719
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1724
    const-string v2, "JobStore"

    const-string v3, "Problem with persisted JobWorkItem"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1710
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final restoreJobFromXml(ZLcom/android/modules/utils/TypedXmlPullParser;IJ)Lcom/android/server/job/controllers/JobStatus;
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v0, p3

    move-wide/from16 v3, p4

    .line 1297
    const-string v5, "JobStore"

    const/4 v6, 0x0

    .line 1301
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 1302
    invoke-virtual {v7, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 1303
    const-string/jumbo v9, "uid"

    invoke-interface {v2, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a

    .line 1306
    const-string/jumbo v9, "priority"

    if-nez v0, :cond_0

    .line 1307
    :try_start_1
    invoke-interface {v2, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1309
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :cond_0
    if-lt v0, v8, :cond_2

    .line 1312
    const-string v0, "bias"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1314
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    .line 1316
    :cond_1
    invoke-interface {v2, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1318
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 1321
    :cond_2
    :goto_0
    const-string v0, "flags"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1323
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 1325
    :cond_3
    const-string v0, "internalFlags"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1327
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    goto :goto_1

    :cond_4
    const/16 v29, 0x0

    .line 1329
    :goto_1
    const-string/jumbo v0, "sourceUserId"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, -0x1

    :goto_2
    move v14, v0

    goto :goto_3

    .line 1330
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1332
    :goto_3
    const-string v0, "lastSuccessfulRunTime"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v9, 0x0

    if-nez v0, :cond_6

    move-wide/from16 v22, v9

    goto :goto_4

    .line 1333
    :cond_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v22, v15

    .line 1335
    :goto_4
    const-string v0, "lastFailedRunTime"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move-wide/from16 v24, v9

    goto :goto_5

    .line 1336
    :cond_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v24, v15

    .line 1338
    :goto_5
    const-string v0, "cumulativeExecutionTime"

    .line 1339
    invoke-interface {v2, v6, v0, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v26
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1345
    const-string/jumbo v0, "sourcePackageName"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1346
    const-string/jumbo v0, "namespace"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1347
    const-string/jumbo v0, "sourceTag"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1352
    :cond_8
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v13, 0x4

    if-eq v0, v13, :cond_8

    const/4 v15, 0x2

    if-ne v0, v15, :cond_9

    .line 1355
    const-string v0, "constraints"

    move-wide/from16 v18, v9

    .line 1356
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move-object/from16 v28, v6

    goto/16 :goto_10

    .line 1361
    :cond_a
    :try_start_2
    invoke-virtual {v1, v7, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1376
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1380
    :goto_6
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    if-eq v0, v13, :cond_1b

    if-eq v0, v15, :cond_b

    return-object v6

    .line 1387
    :cond_b
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;

    move-result-object v9

    .line 1389
    invoke-static {v9, v3, v4}, Lcom/android/server/job/JobStore;->-$$Nest$smconvertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v0

    .line 1391
    const-string/jumbo v10, "periodic"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1393
    :try_start_3
    const-string/jumbo v8, "period"

    invoke-interface {v2, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v10, v14

    .line 1394
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1395
    const-string v8, "flex"

    invoke-interface {v2, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1396
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v21, v9

    move-wide/from16 v8, v18

    goto :goto_7

    :catch_0
    move-object/from16 v28, v6

    goto :goto_9

    :cond_c
    move-object/from16 v21, v9

    move-wide v8, v13

    .line 1397
    :goto_7
    invoke-virtual {v7, v13, v14, v8, v9}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v28, v6

    .line 1402
    :try_start_4
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    add-long v30, v3, v13

    add-long v30, v30, v8

    cmp-long v6, v18, v30

    if-lez v6, :cond_d

    add-long v18, v3, v8

    add-long v18, v18, v13

    sub-long v8, v18, v8

    .line 1407
    const-string v6, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    .line 1410
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    .line 1411
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1412
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    div-long v30, v30, v32

    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    div-long v30, v8, v32

    .line 1413
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v15

    div-long v30, v18, v32

    move-wide/from16 v32, v8

    .line 1415
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v13, v14, v0, v15, v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 1408
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_d
    :goto_8
    move-object v6, v0

    goto :goto_a

    .line 1422
    :catch_1
    :goto_9
    const-string v0, "Error reading periodic execution criteria, skipping."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v28

    :cond_e
    move-object/from16 v28, v6

    move-object/from16 v21, v9

    move v10, v14

    .line 1425
    const-string/jumbo v6, "one-off"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1427
    :try_start_5
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v8, v18

    if-eqz v6, :cond_f

    .line 1428
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1430
    :cond_f
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v6, v8, v13

    if-eqz v6, :cond_d

    .line 1431
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 1432
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v3

    .line 1431
    invoke-virtual {v7, v8, v9}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    .line 1445
    :goto_a
    invoke-virtual {v1, v7, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1447
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 1451
    :cond_10
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v8, 0x4

    if-eq v0, v8, :cond_10

    const/4 v9, 0x2

    if-ne v0, v9, :cond_17

    .line 1453
    const-string v0, "extras"

    .line 1454
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_f

    .line 1463
    :cond_11
    :try_start_6
    invoke-static {v2}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v8

    .line 1464
    invoke-virtual {v7, v8}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1469
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v9, :cond_12

    .line 1472
    const-string v13, "job-work-item"

    .line 1473
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1474
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobWorkItemsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v13

    goto :goto_b

    :cond_12
    move-object/from16 v13, v28

    :goto_b
    if-ne v0, v9, :cond_13

    .line 1477
    const-string v0, "debug-info"

    .line 1478
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1480
    :try_start_7
    const-string/jumbo v0, "trace-tag"

    move-object/from16 v9, v28

    invoke-interface {v2, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    .line 1482
    const-string v9, "Invalid trace tag persisted to disk"

    invoke-static {v5, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    :goto_c
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1485
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readDebugTagsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->addDebugTags(Ljava/util/Set;)V

    .line 1486
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    :cond_13
    const/4 v1, 0x0

    .line 1500
    :try_start_8
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1507
    const-string v2, "android"

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v8, :cond_14

    const-string v2, "SyncManagerJob"

    .line 1509
    invoke-virtual {v8, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1510
    const-string/jumbo v2, "owningPackage"

    invoke-virtual {v8, v2, v11}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1511
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_14
    invoke-static {v11, v10, v3, v4}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v15

    move v14, v10

    .line 1520
    new-instance v10, Lcom/android/server/job/controllers/JobStatus;

    .line 1521
    invoke-static {v11}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1523
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-eqz p1, :cond_15

    const/16 v28, 0x0

    goto :goto_d

    :cond_15
    move-object/from16 v28, v21

    :goto_d
    const/16 v30, 0x0

    move-object v11, v13

    move-object v13, v2

    move-object v2, v11

    move-object v11, v0

    move-wide/from16 v20, v3

    .line 1525
    invoke-direct/range {v10 .. v30}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;JJJJJLandroid/util/Pair;II)V

    if-eqz v2, :cond_16

    move v8, v1

    .line 1527
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_16

    .line 1528
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    invoke-virtual {v10, v0}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_16
    return-object v10

    :catch_3
    move-exception v0

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to build job from XML, ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v28, 0x0

    return-object v28

    :catch_4
    move-exception v0

    .line 1466
    const-string v1, "Persisted extras contained invalid data"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v28

    .line 1455
    :cond_17
    :goto_f
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1456
    const-string v0, "Error reading extras, skipping."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-object v28

    .line 1435
    :catch_5
    const-string v0, "Error reading job execution criteria, skipping."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v28

    .line 1439
    :cond_19
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/16 v28, 0x0

    return-object v28

    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v28, v6

    .line 1372
    const-string v1, "Constraints contained invalid data"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v28

    :catch_7
    move-exception v0

    move-object/from16 v28, v6

    .line 1369
    const-string v1, "Error I/O Exception."

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v28

    :catch_8
    move-exception v0

    move-object/from16 v28, v6

    .line 1366
    const-string v1, "Error Parser Exception."

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v28

    :catch_9
    move-object/from16 v28, v6

    .line 1363
    const-string v0, "Error reading constraints, skipping."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-object v28

    .line 1341
    :catch_a
    const-string v0, "Error parsing job\'s required fields, skipping"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    return-object v28
.end method

.method public run()V
    .locals 21

    move-object/from16 v1, p0

    .line 1117
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    const-string v0, "JobStore"

    const-string v2, "jobs directory isn\'t a directory O.O"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    .line 1129
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v2, :cond_1

    .line 1135
    const-string v0, "JobStore"

    const-string v1, "Couldn\'t get job file list"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1139
    :cond_1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 1141
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v5, v0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1142
    :try_start_1
    array-length v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v8, v6, :cond_a

    aget-object v14, v2, v8

    .line 1143
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v15, "jobs.xml"

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetSPLIT_FILE_PATTERN()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1144
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v16, v2

    move/from16 v18, v6

    move/from16 v20, v8

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 1148
    :cond_2
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0, v14}, Lcom/android/server/job/JobStore;->-$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    :try_start_2
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v15
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1150
    :try_start_3
    iget-boolean v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-virtual {v1, v15, v0, v3, v4}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/InputStream;ZJ)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v16, v2

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    .line 1152
    :goto_1
    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_5

    .line 1153
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v17, v0

    .line 1154
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v18, v6

    .line 1155
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    move/from16 v19, v7

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v20, v8

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v8

    .line 1154
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/job/JobStore$JobSet;->get(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1164
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 1165
    iput-wide v3, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1166
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    add-int/lit8 v9, v9, 0x1

    .line 1169
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    const/16 v6, 0x3e8

    if-ne v0, v6, :cond_4

    add-int/lit8 v10, v10, 0x1

    .line 1171
    invoke-static {v2}, Lcom/android/server/job/JobStore;->-$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_4

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    move-object v2, v0

    goto :goto_6

    :cond_4
    :goto_3
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v0, v17

    move/from16 v6, v18

    move/from16 v8, v20

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_4
    move/from16 v20, v8

    goto :goto_2

    :catchall_3
    move-exception v0

    :goto_5
    move/from16 v18, v6

    goto :goto_4

    :cond_5
    move/from16 v18, v6

    move/from16 v20, v8

    if-eqz v15, :cond_7

    .line 1177
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_5

    :goto_6
    if-eqz v15, :cond_6

    .line 1149
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v18, v6

    move/from16 v20, v8

    .line 1185
    :goto_8
    :try_start_a
    const-string v2, "JobStore"

    const-string v6, "Unexpected exception"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v18, v6

    move/from16 v20, v8

    .line 1181
    :goto_9
    const-string v2, "JobStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_4
    move-object/from16 v16, v2

    move/from16 v18, v6

    move/from16 v20, v8

    .line 1179
    :catch_5
    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find jobs file: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_7
    :goto_a
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 1188
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "jobs_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_b
    move v12, v2

    goto :goto_c

    .line 1194
    :cond_8
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "jobs_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    :goto_c
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v2, v16

    move/from16 v6, v18

    goto/16 :goto_0

    .line 1201
    :cond_a
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iget v0, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v0, :cond_b

    .line 1202
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v9, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 1203
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v10, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 1204
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v11, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 1206
    :cond_b
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1207
    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_c

    .line 1209
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$mmigrateJobFilesAsync(Lcom/android/server/job/JobStore;)V

    :cond_c
    if-lez v13, :cond_d

    .line 1213
    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " duplicate persisted jobs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_d
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0, v9}, Lcom/android/server/job/JobStore;->-$$Nest$fputmCurrentJobSetSize(Lcom/android/server/job/JobStore;I)V

    .line 1218
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmCurrentJobSetSize(Lcom/android/server/job/JobStore;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/job/JobStore;->-$$Nest$fputmScheduledJob30MinHighWaterMark(Lcom/android/server/job/JobStore;I)V

    .line 1219
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmScheduledJobHighWaterMarkLoggingRunnable(Lcom/android/server/job/JobStore;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1221
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_e

    .line 1222
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_e
    return-void

    .line 1206
    :goto_d
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    :catch_6
    move-exception v0

    .line 1131
    const-string v1, "JobStore"

    const-string v2, "Not allowed to read job file directory"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
