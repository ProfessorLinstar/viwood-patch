.class public Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
.super Ljava/lang/Object;
.source "PerPackageReadTimeouts.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;


# instance fields
.field public final maxPendingTimeUs:J

.field public final minPendingTimeUs:J

.field public final minTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    new-instance v0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    const-wide v3, 0xd693a400L

    const-wide v5, 0xd693a400L

    const-wide v1, 0xd693a400L

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;-><init>(JJJ)V

    sput-object v0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    .line 58
    iput-wide p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    .line 59
    iput-wide p5, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
    .locals 11

    .line 63
    const-string v0, ":"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 64
    array-length v0, p0

    if-eq v0, v1, :cond_0

    .line 65
    sget-object p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 67
    aget-object v0, p0, v0

    sget-object v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    iget-wide v2, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v0, 0x1

    .line 68
    aget-object v0, p0, v0

    iget-wide v2, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v0, 0x2

    .line 69
    aget-object p0, p0, v0

    iget-wide v2, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    invoke-static {p0, v2, v3}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v5

    if-gtz p0, :cond_1

    cmp-long p0, v5, v7

    if-gtz p0, :cond_1

    cmp-long p0, v7, v9

    if-gtz p0, :cond_1

    .line 73
    new-instance v4, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;-><init>(JJJ)V

    return-object v4

    :cond_1
    return-object v1
.end method
