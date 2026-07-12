.class public final Lcom/android/server/am/LowMemDetector$LowMemThread;
.super Ljava/lang/Thread;
.source "LowMemDetector.java"


# instance fields
.field public mIsTracingMemCriticalLow:Z

.field public final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LowMemDetector;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    .line 97
    const-string p1, "LowMemThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    const-wide/16 v3, 0x40

    if-eqz v1, :cond_1

    .line 107
    iget-boolean v5, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    if-nez v5, :cond_1

    .line 108
    const-string v5, "criticalLowMemory"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    .line 109
    iget-boolean v5, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    if-eqz v5, :cond_2

    .line 110
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    :cond_2
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 115
    iget-object p0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {p0, v2}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmAvailable(Lcom/android/server/am/LowMemDetector;Z)V

    return-void

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v1}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmPressureStateLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v2, v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmPressureState(Lcom/android/server/am/LowMemDetector;I)V

    .line 121
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
