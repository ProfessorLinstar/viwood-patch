.class public Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
.super Ljava/lang/Object;
.source "EnergyConsumerSnapshot.java"


# instance fields
.field public bluetoothChargeUC:J

.field public cameraChargeUC:J

.field public cpuClusterChargeUC:[J

.field public displayChargeUC:[J

.field public gnssChargeUC:J

.field public mobileRadioChargeUC:J

.field public otherTotalChargeUC:[J

.field public otherUidChargesUC:[Landroid/util/SparseLongArray;

.field public wifiChargeUC:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 106
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    const/4 v2, 0x0

    .line 109
    iput-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 112
    iput-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 115
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    .line 118
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    .line 121
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    .line 124
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    .line 127
    iput-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 130
    iput-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    return-void
.end method
