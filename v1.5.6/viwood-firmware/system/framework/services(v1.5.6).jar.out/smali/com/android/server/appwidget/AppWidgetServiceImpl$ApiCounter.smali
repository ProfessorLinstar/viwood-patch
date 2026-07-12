.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# instance fields
.field public final mCallCount:Ljava/util/Map;

.field public mMaxCallsPerInterval:I

.field public mMaxProviders:I

.field public mMonotonicClock:Ljava/util/function/LongSupplier;

.field public mResetIntervalMs:J


# direct methods
.method public constructor <init>(JII)V
    .locals 6

    .line 6376
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;-><init>(JIILjava/util/function/LongSupplier;)V

    return-void
.end method

.method public constructor <init>(JIILjava/util/function/LongSupplier;)V
    .locals 1

    .line 6380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6363
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 6381
    iput-wide p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 6382
    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 6383
    iput p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    .line 6384
    iput-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMonotonicClock:Ljava/util/function/LongSupplier;

    return-void
.end method


# virtual methods
.method public getMaxCallsPerInterval()I
    .locals 0

    .line 6400
    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    return p0
.end method

.method public getMaxProviders()I
    .locals 0

    .line 6408
    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    return p0
.end method

.method public getResetIntervalMs()J
    .locals 2

    .line 6392
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    return-wide v0
.end method

.method public remove(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V
    .locals 0

    .line 6442
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMaxCallsPerInterval(I)V
    .locals 0

    .line 6396
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    return-void
.end method

.method public setMaxProviders(I)V
    .locals 0

    .line 6404
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    return-void
.end method

.method public setResetIntervalMs(J)V
    .locals 0

    .line 6388
    iput-wide p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    return-void
.end method

.method public tryApiCall(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Z
    .locals 8

    .line 6416
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6417
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    if-lt v0, v2, :cond_0

    return v1

    .line 6420
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl-IA;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6422
    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 6424
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMonotonicClock:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v2

    .line 6425
    iget-wide v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    sub-long v4, v2, v4

    .line 6427
    iget-wide v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 6428
    invoke-virtual {p1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->reset(J)V

    .line 6430
    :cond_2
    iget v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    if-ge v0, p0, :cond_3

    const/4 p0, 0x1

    add-int/2addr v0, p0

    .line 6431
    iput v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    return p0

    :cond_3
    return v1
.end method
