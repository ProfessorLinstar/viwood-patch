.class public Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# instance fields
.field public final mCallbackId:I

.field public final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

.field public final synthetic val$reportedRotation:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V
    .locals 0

    .line 1204
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iput p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1205
    invoke-static {p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fgetmCurrentCallbackId(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    return-void
.end method


# virtual methods
.method public final finalizeRotationIfFresh(I)V
    .locals 2

    .line 1218
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fgetmCurrentCallbackId(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fgetmCancelRotationResolverRequest(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1220
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$mfinalizeRotation(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V

    return-void

    .line 1222
    :cond_0
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    .line 1225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fgetmCurrentCallbackId(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1222
    const-string p1, "An outdated callback received [%s vs. %s]. Ignoring it."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowOrientationListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailure(I)V
    .locals 0

    .line 1213
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 0

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    return-void
.end method
