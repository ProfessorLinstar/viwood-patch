.class public Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;
.super Landroid/os/Handler;
.source "CountQuotaTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/os/Looper;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 648
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v0, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p1}, Lcom/android/server/utils/quota/CountQuotaTracker;->deleteObsoleteEventsLocked()V

    .line 660
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeScheduleCleanupAlarmLocked()V

    .line 664
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
