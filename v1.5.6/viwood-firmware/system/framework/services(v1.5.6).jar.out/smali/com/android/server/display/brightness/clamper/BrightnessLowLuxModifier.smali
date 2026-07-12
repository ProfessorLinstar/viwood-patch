.class public Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "BrightnessLowLuxModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAmbientLux:F

.field public mBrightnessLowerBound:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mHandler:Landroid/os/Handler;

.field public mIsActive:Z

.field public mMinNitsAllowed:F

.field public mReason:I


# direct methods
.method public static synthetic $r8$lambda$mrxB_EUddprBtF8zJnmcOsbhhrA(Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "BrightnessLowLuxModifier"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 65
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 68
    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 1

    .line 158
    iget p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMinBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 159
    iget p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 160
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 161
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result p1

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p1

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    invoke-virtual {p1, p0}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 183
    const-string v0, "BrightnessLowLuxModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessLowerBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMinNitsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mMinNitsAllowed:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .locals 0

    .line 147
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final getBrightnessFromNits(F)F
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessLowerBound()F
    .locals 0

    .line 132
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    return p0
.end method

.method public getBrightnessReason()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    return p0
.end method

.method public getModifier()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    return p0
.end method

.method public isActive()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->start()V

    return-void
.end method

.method public onSwitchUser()V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    return-void
.end method

.method public recalculateLowerBound()V
    .locals 5

    .line 79
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getMinNitsFromLux(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    .line 87
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->getBrightnessFromNits(F)F

    move-result v0

    const/16 v3, 0x10

    goto :goto_1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getEvenDimmerTransitionPoint()F

    move-result v0

    .line 95
    :goto_1
    iget v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    if-ne v4, v3, :cond_3

    iget-boolean v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    if-eq v4, v2, :cond_2

    goto :goto_2

    :cond_2
    return-void

    .line 98
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    .line 99
    iput v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    .line 100
    sget-boolean v3, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", minBrightnessAllowed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mAmbientLux: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mReason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minNitsAllowed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessLowLuxModifier"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mMinNitsAllowed:F

    .line 109
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    .line 110
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    .line 117
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    return-void
.end method

.method public shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    return p0
.end method

.method public shouldListenToLightSensor()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public start()V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 0
    return-void
.end method
