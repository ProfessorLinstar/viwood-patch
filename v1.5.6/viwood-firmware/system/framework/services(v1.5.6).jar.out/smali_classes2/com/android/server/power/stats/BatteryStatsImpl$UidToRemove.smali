.class public final Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mEndUid:I

.field public final mStartUid:I

.field public final mUidRemovalTimestamp:J

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IIJ)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mStartUid:I

    .line 626
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mEndUid:I

    .line 627
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IJ)V
    .locals 6

    move v3, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    .line 620
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;IIJ)V

    return-void
.end method


# virtual methods
.method public getUidRemovalTimestamp()J
    .locals 2

    .line 631
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    return-wide v0
.end method

.method public removeLocked()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mStartUid:I

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mEndUid:I

    invoke-static {v0, v1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mremoveCpuStatsForUidRangeLocked(Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    return-void
.end method
