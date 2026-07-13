.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# instance fields
.field public final mLastComputed:J

.field public final mResult:I

.field public final mTimestamp:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLastComputed(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmResult(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimestamp(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    return-wide v0
.end method

.method public constructor <init>(JIJ)V
    .locals 0

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-wide p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    .line 611
    iput p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    .line 612
    iput-wide p4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    return-void
.end method
