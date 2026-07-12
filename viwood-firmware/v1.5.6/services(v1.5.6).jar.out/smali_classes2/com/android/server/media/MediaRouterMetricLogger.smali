.class public final Lcom/android/server/media/MediaRouterMetricLogger;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-string v0, "MediaRouterMetricLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    return-void
.end method

.method public static convertResultFromReason(I)I
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addRequestInfo(JI)V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;-><init>(JI)V

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    iget-wide p1, v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mUniqueRequestId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getRequestCacheSize()I
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    return p0
.end method

.method public final logMediaRouterEvent(II)V
    .locals 1

    const/16 p0, 0x3f9

    .line 183
    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouterStatsLog;->write(III)V

    .line 186
    sget-boolean p0, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "logMediaRouterEvent: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouterMetricLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public logOperationFailure(II)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    return-void
.end method

.method public logOperationTriggered(II)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    return-void
.end method

.method public logRequestResult(JI)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    if-nez v0, :cond_0

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "logRequestResult: No RequestInfo found for uniqueRequestId="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouterMetricLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_0
    iget v0, v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mEventType:I

    .line 113
    invoke-virtual {p0, v0, p3}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->removeRequestInfo(J)V

    return-void
.end method

.method public final logScanningStarted()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    return-void
.end method

.method public final logScanningStopped()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    return-void
.end method

.method public removeRequestInfo(J)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateScanningState(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterMetricLogger;->logScanningStopped()V

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterMetricLogger;->logScanningStarted()V

    return-void
.end method
