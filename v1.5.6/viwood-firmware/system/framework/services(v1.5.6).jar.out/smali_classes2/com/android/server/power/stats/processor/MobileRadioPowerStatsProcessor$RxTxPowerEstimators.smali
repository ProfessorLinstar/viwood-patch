.class public Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;
.super Ljava/lang/Object;
.source "MobileRadioPowerStatsProcessor.java"


# instance fields
.field public mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;-><init>()V

    return-void
.end method
