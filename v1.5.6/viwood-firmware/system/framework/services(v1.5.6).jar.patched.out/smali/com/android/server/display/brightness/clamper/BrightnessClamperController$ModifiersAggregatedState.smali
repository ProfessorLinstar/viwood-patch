.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"


# instance fields
.field public mMaxBrightness:F

.field public mMaxBrightnessReason:I

.field public mMaxDesiredHdrRatio:F

.field public mMaxHdrBrightness:F

.field public mSdrHdrRatioSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 445
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    .line 446
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    const/4 v1, 0x0

    .line 447
    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    const/4 v1, 0x0

    .line 449
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    .line 451
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    return-void
.end method
