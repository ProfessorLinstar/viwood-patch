.class public Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HdrBrightnessModifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;


# direct methods
.method public static synthetic $r8$lambda$tA6jNs_7pjoXYUSOu7koQISLea8(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;ZIIF)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->lambda$onHdrInfoChanged$0(ZIIF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onHdrInfoChanged$0(ZIIF)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    if-eqz p1, :cond_0

    mul-int/2addr p2, p3

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 65
    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 63
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$monHdrInfoChanged(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;FF)V

    return-void
.end method

.method public onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 6

    if-lez p2, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 63
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmHandler(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;ZIIF)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
