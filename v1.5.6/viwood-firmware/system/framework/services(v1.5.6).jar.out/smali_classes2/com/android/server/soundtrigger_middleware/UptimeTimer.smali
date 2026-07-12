.class public Lcom/android/server/soundtrigger_middleware/UptimeTimer;
.super Ljava/lang/Object;
.source "UptimeTimer.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public createTask(Ljava/lang/Runnable;J)Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 53
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-object v1
.end method

.method public quit()V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method
