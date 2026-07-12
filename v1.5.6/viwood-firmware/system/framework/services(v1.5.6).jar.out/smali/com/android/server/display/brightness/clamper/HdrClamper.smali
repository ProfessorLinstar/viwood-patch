.class public Lcom/android/server/display/brightness/clamper/HdrClamper;
.super Ljava/lang/Object;
.source "HdrClamper.java"


# instance fields
.field public mAmbientLux:F

.field public mAutoBrightnessEnabled:Z

.field public final mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mDebouncer:Ljava/lang/Runnable;

.field public mDesiredMaxBrightness:F

.field public mDesiredTransitionRate:F

.field public final mHandler:Landroid/os/Handler;

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public final mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

.field public mHdrVisible:Z

.field public mMaxBrightness:F

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public mTransitionRate:F

.field public mUseSlowTransition:Z


# direct methods
.method public static synthetic $r8$lambda$-0g6cCNmtXXug3V6-htjabJyMKE(Lcom/android/server/display/brightness/clamper/HdrClamper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrClamper;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$30AxeD6U0TARSSJf2DIqNK-nOJQ(Lcom/android/server/display/brightness/clamper/HdrClamper;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->lambda$new$1(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;)V
    .locals 1

    .line 69
    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/brightness/clamper/HdrClamper;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 46
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 49
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 54
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 57
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 58
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 60
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    .line 75
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 76
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance p1, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper;)V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Ljava/lang/Runnable;

    .line 83
    new-instance p1, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper;)V

    invoke-virtual {p3, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;->getHdrListener(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrListener;Landroid/os/Handler;)Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    return-void
.end method


# virtual methods
.method public clamp(F)F
    .locals 0

    .line 94
    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 168
    const-string v0, "HdrClamper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDesiredMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTransitionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDesiredTransitionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrListener.mHdrMinPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    invoke-static {v1}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->-$$Nest$fgetmHdrMinPixels(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBrightnessData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/config/HdrBrightnessData;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrListener registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F
    .locals 4

    .line 239
    iget-object p0, p1, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v3, v2, p2

    if-lez v3, :cond_0

    cmpg-float v3, v2, p1

    if-gez v3, :cond_0

    .line 243
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    move v0, p1

    move p1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMaxBrightness()F
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    return p0
.end method

.method public getTransitionRate()F
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    const/4 v1, 0x0

    .line 105
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    return v0
.end method

.method public final hasBrightnessLimits()Z
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 79
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    .line 81
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method public final synthetic lambda$new$1(Z)V
    .locals 2

    .line 84
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 85
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    return-void
.end method

.method public onAmbientLuxChange(F)V
    .locals 2

    .line 114
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    .line 115
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    return-void
.end method

.method public final recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 206
    iget-boolean p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    if-nez p3, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrClamper;->findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F

    move-result p1

    .line 212
    iget p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    cmpl-float p3, p2, p1

    if-nez p3, :cond_1

    .line 213
    iput p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 214
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 215
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 216
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 217
    :cond_1
    iget p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    cmpl-float p3, p3, p1

    if-eqz p3, :cond_3

    .line 218
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-wide p2, p1, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    .line 222
    iget p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    goto :goto_0

    .line 224
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-wide p2, p1, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    .line 225
    iget p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    .line 207
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrClamper;->reset()V

    return-void
.end method

.method public final reset()V
    .locals 4

    .line 187
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 194
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 195
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 196
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    .line 198
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method public resetHdrConfig(Lcom/android/server/display/config/HdrBrightnessData;IIFLandroid/os/IBinder;)V
    .locals 1

    .line 125
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 126
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    mul-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, p4

    invoke-static {v0, p2}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->-$$Nest$fputmHdrMinPixels(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;F)V

    .line 127
    iget-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eq p5, p2, :cond_1

    if-eqz p2, :cond_0

    .line 129
    iget-object p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    invoke-virtual {p3, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    const/4 p2, 0x0

    .line 130
    iput-boolean p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    const/4 p2, 0x0

    .line 131
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    :cond_0
    if-eqz p5, :cond_1

    .line 136
    iget-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    invoke-static {p2}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->-$$Nest$fgetmHdrMinPixels(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrClamper;->hasBrightnessLimits()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 137
    iget-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    invoke-virtual {p2, p5}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    .line 138
    iput-object p5, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 141
    :cond_1
    iget p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    iget-boolean p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    return-void
.end method

.method public setAutoBrightnessState(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    if-eq v0, p1, :cond_1

    .line 151
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    .line 152
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method
