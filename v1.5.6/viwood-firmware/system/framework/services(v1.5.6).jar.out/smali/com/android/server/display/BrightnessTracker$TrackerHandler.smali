.class public final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "BrightnessTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .locals 1

    .line 1034
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1035
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1038
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1073
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mstopDisplayListener(Lcom/android/server/display/BrightnessTracker;)V

    return-void

    .line 1070
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mstartDisplayListener(Lcom/android/server/display/BrightnessTracker;)V

    return-void

    .line 1067
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Sensor;

    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mhandleSensorChanged(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/Sensor;)V

    return-void

    .line 1059
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fputmShouldCollectColorSample(Lcom/android/server/display/BrightnessTracker;Z)V

    .line 1060
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmShouldCollectColorSample(Lcom/android/server/display/BrightnessTracker;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/BrightnessTracker;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1061
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$menableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    return-void

    .line 1062
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmShouldCollectColorSample(Lcom/android/server/display/BrightnessTracker;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/BrightnessTracker;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1063
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mdisableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    :cond_1
    :goto_0
    return-void

    .line 1051
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mstartSensorListener(Lcom/android/server/display/BrightnessTracker;)V

    .line 1052
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$menableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    return-void

    .line 1055
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mstopSensorListener(Lcom/android/server/display/BrightnessTracker;)V

    .line 1056
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mdisableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    return-void

    .line 1043
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 1044
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1045
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget v3, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iget v5, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v6, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->wasShortTermModelActive:Z

    iget-boolean v7, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v8, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    iget-object v10, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxValues:[F

    iget-object v12, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxTimestamps:[J

    invoke-static/range {v2 .. v12}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/BrightnessTracker;FZFZZJLjava/lang/String;[F[J)V

    return-void

    .line 1040
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mbackgroundStart(Lcom/android/server/display/BrightnessTracker;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
