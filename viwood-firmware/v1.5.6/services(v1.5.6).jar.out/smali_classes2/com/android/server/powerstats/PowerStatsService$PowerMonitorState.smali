.class public Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
.super Ljava/lang/Object;
.source "PowerStatsService.java"


# instance fields
.field public energyUws:J

.field public final id:I

.field public final powerMonitor:Landroid/os/PowerMonitor;

.field public prevEnergyUws:J

.field public timestampMs:J


# direct methods
.method public constructor <init>(Landroid/os/PowerMonitor;I)V
    .locals 2

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 570
    iput-wide v0, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 574
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    .line 575
    iput p2, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/PowerMonitor;ILcom/android/server/powerstats/PowerStatsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;I)V

    return-void
.end method
