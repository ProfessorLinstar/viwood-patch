.class public final Lcom/android/server/vibrator/PrimitiveSegmentsValidator;
.super Ljava/lang/Object;
.source "PrimitiveSegmentsValidator.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z
    .locals 4

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 41
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/os/vibrator/PrimitiveSegment;

    .line 46
    invoke-virtual {v2}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
