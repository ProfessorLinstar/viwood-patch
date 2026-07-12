.class public abstract Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;
.super Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;
.source "ContextHubEventLogger.java"


# instance fields
.field public final nanoappId:J

.field public final success:Z


# direct methods
.method public constructor <init>(JIJZ)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;-><init>(JI)V

    .line 76
    iput-wide p4, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->nanoappId:J

    .line 77
    iput-boolean p6, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->success:Z

    return-void
.end method
