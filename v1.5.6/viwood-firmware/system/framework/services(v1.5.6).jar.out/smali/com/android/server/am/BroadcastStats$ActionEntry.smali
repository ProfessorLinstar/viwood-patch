.class public final Lcom/android/server/am/BroadcastStats$ActionEntry;
.super Ljava/lang/Object;
.source "BroadcastStats.java"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mBackgroundCheckViolations:Landroid/util/ArrayMap;

.field public mMaxDispatchTime:J

.field public final mPackages:Landroid/util/ArrayMap;

.field public mReceiveCount:I

.field public mSkipCount:I

.field public mTotalDispatchTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 59
    iput-object p1, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    return-void
.end method
