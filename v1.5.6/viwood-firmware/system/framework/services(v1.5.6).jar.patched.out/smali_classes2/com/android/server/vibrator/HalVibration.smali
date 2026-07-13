.class public final Lcom/android/server/vibrator/HalVibration;
.super Lcom/android/server/vibrator/Vibration;
.source "HalVibration.java"


# instance fields
.field public mAdaptiveScale:F

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public volatile mEffectToPlay:Landroid/os/CombinedVibration;

.field public final mFallbacks:Landroid/util/SparseArray;

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public mScaleLevel:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/Vibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 41
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 44
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 64
    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 65
    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 67
    iput p1, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    return-void
.end method


# virtual methods
.method public adaptToDevice(Landroid/os/CombinedVibration$VibratorAdapter;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v0, p1}, Landroid/os/CombinedVibration;->adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public canPipelineWith(Lcom/android/server/vibrator/HalVibration;Landroid/util/SparseArray;I)Z
    .locals 2

    .line 161
    iget-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {p2}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide p2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p2, p2, v0

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget p2, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/16 p2, 0x8

    .line 178
    invoke-virtual {p0, p2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 179
    invoke-virtual {p0, p2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p3
.end method

.method public end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 73
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public fillFallbacks(Ljava/util/function/IntFunction;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public final fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V
    .locals 2

    .line 184
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 185
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V

    return-void

    .line 186
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 187
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    .line 188
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    .line 189
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 190
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_2

    .line 193
    check-cast p1, Landroid/os/CombinedVibration$Sequential;

    .line 194
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object p1

    .line 195
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V
    .locals 5

    .line 203
    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    .line 206
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 209
    instance-of v3, v2, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v3

    invoke-interface {p2, v3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    if-eqz v3, :cond_0

    .line 212
    iget-object v4, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 10

    .line 150
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    goto :goto_0

    .line 151
    :goto_1
    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 152
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->findVibrationType(Landroid/os/CombinedVibration;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v6, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    iget v8, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    iget v9, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    return-object v1
.end method

.method public getEffectToPlay()Landroid/os/CombinedVibration;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public getFallback(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 105
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    .line 107
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v2, v1}, Lcom/android/server/vibrator/VibrationStats;->reportAdaptiveScale(F)V

    .line 110
    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    new-instance v2, Lcom/android/server/vibrator/HalVibration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/vibrator/HalVibration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibrationScaler;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration;->transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iput-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    :cond_0
    const/4 v1, 0x0

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {p1, v3, v0}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public waitForEnd()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
