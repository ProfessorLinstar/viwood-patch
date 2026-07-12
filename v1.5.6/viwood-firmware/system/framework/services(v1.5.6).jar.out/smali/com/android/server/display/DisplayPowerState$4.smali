.class public Lcom/android/server/display/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 403
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fputmScreenUpdatePending(Lcom/android/server/display/DisplayPowerState;Z)V

    .line 406
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenState(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmColorFadeLevel(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenBrightness(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 408
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenState(Lcom/android/server/display/DisplayPowerState;)I

    move-result v4

    if-eq v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmColorFadeLevel(Lcom/android/server/display/DisplayPowerState;)F

    move-result v4

    cmpl-float v2, v4, v2

    if-lez v2, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmSdrScreenBrightness(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    .line 410
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmPhotonicModulator(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenState(Lcom/android/server/display/DisplayPowerState;)I

    move-result v4

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(IFF)Z

    move-result v0

    const-string v1, "DisplayPowerState"

    if-eqz v0, :cond_3

    .line 411
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    const-string v0, "Screen ready"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0, v3}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fputmScreenReady(Lcom/android/server/display/DisplayPowerState;Z)V

    .line 415
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$minvokeCleanListenerIfNeeded(Lcom/android/server/display/DisplayPowerState;)V

    return-void

    .line 417
    :cond_3
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 418
    const-string p0, "Screen not ready"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
