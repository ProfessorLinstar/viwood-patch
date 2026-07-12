.class public final Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public earliestEndElapsed:J


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 2

    .line 1631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 1632
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1631
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1636
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1637
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    const/4 v2, 0x0

    .line 1638
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-interface {p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1643
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    return-void
.end method
