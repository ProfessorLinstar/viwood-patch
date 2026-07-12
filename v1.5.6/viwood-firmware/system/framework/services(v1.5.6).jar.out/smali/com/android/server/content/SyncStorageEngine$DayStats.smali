.class public Lcom/android/server/content/SyncStorageEngine$DayStats;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# instance fields
.field public final day:I

.field public failureCount:I

.field public failureTime:J

.field public successCount:I

.field public successTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput p1, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    return-void
.end method
