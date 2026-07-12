.class public Lcom/android/server/AnyMotionDetector$2;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmLock(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmSensorRestartIsActive(Lcom/android/server/AnyMotionDetector;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fputmSensorRestartIsActive(Lcom/android/server/AnyMotionDetector;Z)V

    .line 343
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {p0}, Lcom/android/server/AnyMotionDetector;->-$$Nest$mstartOrientationMeasurementLocked(Lcom/android/server/AnyMotionDetector;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 345
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
