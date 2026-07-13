.class public Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1347
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fputmRotationEvaluationScheduled(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;Z)V

    .line 1349
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v1

    .line 1350
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_0

    .line 1352
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 1350
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
