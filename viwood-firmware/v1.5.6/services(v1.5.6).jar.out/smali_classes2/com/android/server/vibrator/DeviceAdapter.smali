.class public final Lcom/android/server/vibrator/DeviceAdapter;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Landroid/os/CombinedVibration$VibratorAdapter;


# instance fields
.field public final mAvailableVibratorIds:[I

.field public final mAvailableVibrators:Landroid/util/SparseArray;

.field public final mSegmentAdapters:Ljava/util/List;

.field public final mSegmentsValidators:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V
    .locals 8

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/server/vibrator/PrimitiveDelayAdapter;

    invoke-direct {v0}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;-><init>()V

    new-instance v1, Lcom/android/server/vibrator/RampToStepAdapter;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/RampToStepAdapter;-><init>(I)V

    new-instance v2, Lcom/android/server/vibrator/StepToRampAdapter;

    invoke-direct {v2}, Lcom/android/server/vibrator/StepToRampAdapter;-><init>()V

    new-instance v3, Lcom/android/server/vibrator/RampDownAdapter;

    .line 65
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/android/server/vibrator/RampDownAdapter;-><init>(II)V

    new-instance v4, Lcom/android/server/vibrator/SplitSegmentsAdapter;

    invoke-direct {v4}, Lcom/android/server/vibrator/SplitSegmentsAdapter;-><init>()V

    new-instance v5, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;

    invoke-direct {v5}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;-><init>()V

    new-instance v6, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;

    invoke-direct {v6}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;-><init>()V

    new-instance v7, Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;

    invoke-direct {v7}, Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;-><init>()V

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/vibrator/VibrationSegmentsAdapter;

    move-result-object p1

    .line 57
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    .line 75
    new-instance p1, Lcom/android/server/vibrator/PwleSegmentsValidator;

    invoke-direct {p1}, Lcom/android/server/vibrator/PwleSegmentsValidator;-><init>()V

    new-instance v0, Lcom/android/server/vibrator/PrimitiveSegmentsValidator;

    invoke-direct {v0}, Lcom/android/server/vibrator/PrimitiveSegmentsValidator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    .line 81
    iput-object p2, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 82
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    const/4 p1, 0x0

    .line 83
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public adaptToVibrator(ILandroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .locals 5

    .line 99
    instance-of v0, p2, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 104
    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    if-nez p1, :cond_0

    return-object p2

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object p1

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 116
    iget-object v4, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    .line 117
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibrationSegmentsAdapter;

    invoke-interface {v4, p1, p2, v0}, Lcom/android/server/vibrator/VibrationSegmentsAdapter;->adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationSegmentsValidator;

    invoke-interface {v1, p1, p2}, Lcom/android/server/vibrator/VibrationSegmentsValidator;->hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_3
    new-instance p0, Landroid/os/VibrationEffect$Composed;

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object p0

    :cond_4
    return-object p2
.end method

.method public getAvailableVibratorIds()[I
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    return-object p0
.end method

.method public getAvailableVibrators()Landroid/util/SparseArray;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    return-object p0
.end method
