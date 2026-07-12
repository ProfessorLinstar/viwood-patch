.class public final Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "StatsPullAtomService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5389
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 3

    .line 5393
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    const/16 v2, 0xbd

    .line 5392
    invoke-static {v2, p0, v0, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;II)V

    return-void
.end method
