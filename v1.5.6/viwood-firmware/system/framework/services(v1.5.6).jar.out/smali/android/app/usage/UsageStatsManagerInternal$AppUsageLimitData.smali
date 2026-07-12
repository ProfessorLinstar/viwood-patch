.class public Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# instance fields
.field public final mTotalUsageLimit:J

.field public final mUsageRemaining:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-wide p1, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    .line 342
    iput-wide p3, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    return-void
.end method


# virtual methods
.method public getTotalUsageLimit()J
    .locals 2

    .line 346
    iget-wide v0, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    return-wide v0
.end method

.method public getUsageRemaining()J
    .locals 2

    .line 349
    iget-wide v0, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    return-wide v0
.end method
