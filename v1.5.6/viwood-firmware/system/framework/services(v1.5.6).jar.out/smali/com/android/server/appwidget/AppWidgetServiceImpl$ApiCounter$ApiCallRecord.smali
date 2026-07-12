.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# instance fields
.field public apiCallCount:I

.field public lastResetTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6353
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    const-wide/16 v0, 0x0

    .line 6355
    iput-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public reset(J)V
    .locals 1

    const/4 v0, 0x0

    .line 6358
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 6359
    iput-wide p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    return-void
.end method
