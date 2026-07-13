.class public Lcom/android/server/AnyMotionDetector$4;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmLock(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmWakelockTimeoutIsActive(Lcom/android/server/AnyMotionDetector;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fputmWakelockTimeoutIsActive(Lcom/android/server/AnyMotionDetector;Z)V

    .line 376
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->stop()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 378
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
