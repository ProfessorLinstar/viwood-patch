.class public Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;
.super Ljava/lang/Object;
.source "MobileRadioPowerCalculator.java"


# instance fields
.field public remainingDurationMs:J

.field public remainingPowerMah:D

.field public totalAppDurationMs:J

.field public totalAppPowerMah:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/MobileRadioPowerCalculator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;-><init>()V

    return-void
.end method
