.class public Lcom/android/server/pm/PackageMetrics$InstallStep;
.super Ljava/lang/Object;
.source "PackageMetrics.java"


# instance fields
.field public mDurationMillis:J

.field public final mStartTimestampMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 264
    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mStartTimestampMillis:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 271
    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mStartTimestampMillis:J

    .line 272
    iput-wide p1, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mStartTimestampMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    return-void
.end method

.method public getDurationMillis()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    return-wide v0
.end method
