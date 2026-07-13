.class public Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HdrClamper.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrListener;

.field public mHdrMinPixels:F


# direct methods
.method public static synthetic $r8$lambda$vh6p3ci-h9CymlrGCKRkiEkEXOY(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->lambda$onHdrInfoChanged$0(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHdrMinPixels(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmHdrMinPixels(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrListener;Landroid/os/Handler;)V
    .locals 1

    .line 262
    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 260
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    .line 263
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrListener;

    .line 264
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onHdrInfoChanged$0(III)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrListener;

    if-lez p1, :cond_0

    mul-int/2addr p2, p3

    int-to-float p1, p2

    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrListener;->onHdrVisible(Z)V

    return-void
.end method

.method public onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;III)V

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
