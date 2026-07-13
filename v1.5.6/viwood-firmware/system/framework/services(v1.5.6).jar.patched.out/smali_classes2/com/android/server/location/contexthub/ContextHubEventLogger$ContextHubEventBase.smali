.class public abstract Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;
.super Ljava/lang/Object;
.source "ContextHubEventLogger.java"


# instance fields
.field public final contextHubId:I

.field public final timeStampInMs:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->timeStampInMs:J

    .line 55
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->contextHubId:I

    return-void
.end method
