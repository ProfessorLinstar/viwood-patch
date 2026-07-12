.class public Lcom/android/server/power/LowPowerStandbyController$RealClock;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"

# interfaces
.implements Lcom/android/server/power/LowPowerStandbyController$Clock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController$RealClock;-><init>()V

    return-void
.end method


# virtual methods
.method public elapsedRealtime()J
    .locals 2

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public uptimeMillis()J
    .locals 2

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
