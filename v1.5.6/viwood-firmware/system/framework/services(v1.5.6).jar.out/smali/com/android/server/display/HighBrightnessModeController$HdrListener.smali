.class Lcom/android/server/display/HighBrightnessModeController$HdrListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HighBrightnessModeController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public static synthetic $r8$lambda$0HjpC6k1WXdrKsTIl1LR5jt9ioY(Lcom/android/server/display/HighBrightnessModeController$HdrListener;IIIF)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->lambda$onHdrInfoChanged$0(IIIF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onHdrInfoChanged$0(IIIF)V
    .locals 4

    .line 641
    const-string v0, "HBMController#onHdrInfoChanged"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    const/4 v3, 0x1

    if-lez p1, :cond_0

    mul-int/2addr p2, p3

    int-to-float p1, p2

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result p2

    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result p3

    mul-int/2addr p2, p3

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object p3

    iget p3, p3, Lcom/android/server/display/config/HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    mul-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 647
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean p2, p1, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHdrBrightnessCfg(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p4, p3

    :goto_1
    cmpg-float p1, p4, p3

    if-gez p1, :cond_2

    .line 652
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring invalid desired HDR/SDR Ratio: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HighBrightnessModeController"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move p3, p4

    .line 657
    :goto_2
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmMaxDesiredHdrSdrRatio(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result p1

    invoke-static {p1, p3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p1

    if-nez p1, :cond_3

    .line 659
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p1, v3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmForceHbmChangeCallback(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 660
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p1, p3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmMaxDesiredHdrSdrRatio(Lcom/android/server/display/HighBrightnessModeController;F)V

    .line 665
    :cond_3
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result p2

    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result p3

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    .line 666
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 6

    .line 640
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;IIIF)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
