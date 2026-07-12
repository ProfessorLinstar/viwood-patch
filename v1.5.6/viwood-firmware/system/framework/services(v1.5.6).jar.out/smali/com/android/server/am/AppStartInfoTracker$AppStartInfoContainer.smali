.class public final Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
.super Ljava/lang/Object;
.source "AppStartInfoTracker.java"


# instance fields
.field public mInfos:Ljava/util/ArrayList;

.field public mMaxCapacity:I

.field public mMonitoringModeEnabled:Z

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public static synthetic $r8$lambda$FN7Wkbk6-gglPVAtfDcpk3X1Nps(Ljava/lang/Long;)D
    .locals 2

    .line 1455
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmInfos(Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUid(Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppStartInfoTracker;I)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1246
    iput-boolean p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 1249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 1250
    iput p2, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMaxCapacity:I

    return-void
.end method


# virtual methods
.method public addStartInfoLocked(Landroid/app/ApplicationStartInfo;)V
    .locals 2

    .line 1295
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->getMaxCapacity()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 1299
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public addTimestampToStartLocked(IJ)V
    .locals 2

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationStartInfo;

    .line 1341
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->isAddTimestampAllowed(Landroid/app/ApplicationStartInfo;IJ)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1345
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x2

    .line 1349
    invoke-virtual {v0, p1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 1350
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-static {p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->-$$Nest$mcheckCompletenessAndCallback(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/ApplicationStartInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final calculateAverage(Ljava/util/List;)J
    .locals 2

    .line 1455
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/OptionalDouble;->orElse(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public disableAppMonitoringMode()V
    .locals 4

    const/4 v0, 0x0

    .line 1266
    iput-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 1270
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->getMaxCapacity()I

    move-result v2

    if-gt v1, v2, :cond_0

    return-void

    .line 1282
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->getMaxCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1283
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .locals 12

    .line 1405
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    const/4 v1, 0x0

    .line 1417
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_8

    .line 1408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1410
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 1412
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1413
    iget-object v6, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationStartInfo;

    .line 1414
    invoke-virtual {v6}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    move-result-object v7

    .line 1417
    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x4

    .line 1419
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1418
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1421
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1422
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 1423
    invoke-virtual {v6}, Landroid/app/ApplicationStartInfo;->getStartType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 1431
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1428
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1425
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1437
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Average Start Time in ns for Cold Starts: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v6, "No records"

    if-eqz v5, :cond_5

    move-object v0, v6

    goto :goto_2

    .line 1439
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Average Start Time in ns for Warm Starts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v6

    goto :goto_3

    .line 1442
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1440
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Average Start Time in ns for Hot Starts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 1445
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_9

    .line 1450
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationStartInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4, p3}, Landroid/app/ApplicationStartInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method public enableAppMonitoringModeForUser(I)V
    .locals 1

    .line 1259
    iget v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 1260
    iput-boolean p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    :cond_0
    return-void
.end method

.method public getMaxCapacity()I
    .locals 1

    .line 1254
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x64

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMaxCapacity:I

    return p0
.end method

.method public getStartInfoLocked(IILjava/util/ArrayList;)V
    .locals 0

    .line 1289
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p3, p1, p0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public final isAddTimestampAllowed(Landroid/app/ApplicationStartInfo;IJ)Z
    .locals 4

    .line 1356
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    .line 1364
    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    const/4 p0, 0x5

    if-eq p2, p0, :cond_3

    const/4 p0, 0x6

    if-eq p2, p0, :cond_1

    const/4 p0, 0x7

    if-eq p2, p0, :cond_3

    return v0

    :cond_1
    const/4 p0, 0x4

    .line 1373
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_2

    return v0

    .line 1380
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, p3, v2

    if-lez p0, :cond_3

    return v0

    .line 1395
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/lang/String;Ljava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)I
    .locals 8

    .line 1493
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    .line 1494
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :goto_1
    move-object v2, p1

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    goto :goto_2

    :cond_0
    const-wide v0, 0x10800000003L

    .line 1517
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    goto :goto_1

    .line 1504
    :cond_1
    new-instance v1, Landroid/app/ApplicationStartInfo;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    const-wide v3, 0x20b00000002L

    move-object v2, p1

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 1505
    invoke-virtual/range {v1 .. v7}, Landroid/app/ApplicationStartInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1507
    invoke-virtual {v1, p4}, Landroid/app/ApplicationStartInfo;->setPackageName(Ljava/lang/String;)V

    .line 1511
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v2, p1

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    const-wide p5, 0x10500000001L

    .line 1499
    invoke-virtual {v2, p5, p6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    .line 1496
    :goto_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    move-object p1, v2

    move-object p5, v5

    move-object p6, v6

    move-object p7, v7

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 1522
    invoke-virtual {v2, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1523
    iget p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    return p0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 13

    .line 1462
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 1463
    iget v4, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1464
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1466
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {v3}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v3

    sget-wide v5, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_HISTORY_LENGTH_MS:J

    sub-long/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1469
    iget-object v5, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationStartInfo;

    invoke-virtual {v5}, Landroid/app/ApplicationStartInfo;->getMonotonicCreationTimeMs()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    .line 1471
    iget-object v5, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1473
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/app/ApplicationStartInfo;

    const-wide v8, 0x20b00000002L

    move-object v7, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Landroid/app/ApplicationStartInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10800000003L

    .line 1485
    iget-boolean p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1486
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
