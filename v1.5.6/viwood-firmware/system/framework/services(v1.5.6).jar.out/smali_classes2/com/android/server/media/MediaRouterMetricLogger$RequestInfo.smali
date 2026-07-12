.class public Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"


# instance fields
.field public final mEventType:I

.field public final mUniqueRequestId:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-wide p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mUniqueRequestId:J

    .line 232
    iput p3, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mEventType:I

    return-void
.end method
