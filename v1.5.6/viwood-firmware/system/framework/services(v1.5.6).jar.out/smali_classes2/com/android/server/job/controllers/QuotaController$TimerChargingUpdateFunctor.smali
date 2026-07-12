.class public Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mIsCharging:Z

.field public mNowElapsed:J


# direct methods
.method public static bridge synthetic -$$Nest$msetStatus(Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;JZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->setStatus(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/QuotaController$Timer;)V
    .locals 4

    .line 1702
    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->-$$Nest$fgetmPkg(Lcom/android/server/job/controllers/QuotaController$Timer;)Landroid/content/pm/UserPackage;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->-$$Nest$fgetmPkg(Lcom/android/server/job/controllers/QuotaController$Timer;)Landroid/content/pm/UserPackage;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserPackage;->userId:I

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1706
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    iget-boolean p0, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1691
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->accept(Lcom/android/server/job/controllers/QuotaController$Timer;)V

    return-void
.end method

.method public final setStatus(JZ)V
    .locals 0

    .line 1696
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    .line 1697
    iput-boolean p3, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    return-void
.end method
