.class public Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;
.super Ljava/lang/Object;
.source "BrightnessWearBedtimeModeModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# instance fields
.field public mApplied:Z

.field public mBrightnessCap:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsActive:Z

.field public final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$CvVTaiZ0sYWDHzBUCScOgH5ikzU(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->lambda$onDisplayChanged$0(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsActive(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V
    .locals 6

    .line 54
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    .line 60
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 62
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    .line 63
    invoke-interface {p5}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;->getBrightnessWearBedtimeModeCap()F

    move-result p4

    iput p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    .line 64
    new-instance p4, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;

    invoke-direct {p4, p0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 75
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;->registerBedtimeModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 2

    .line 82
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result p1

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 83
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 84
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result p1

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    const/4 p1, 0x3

    .line 85
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 87
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 90
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    if-nez p1, :cond_0

    .line 91
    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    :cond_0
    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    return-void

    .line 95
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    .line 138
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    const/4 p0, 0x3

    .line 139
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 106
    const-string v0, "BrightnessWearBedtimeModeModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onDisplayChanged$0(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 127
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getBrightnessWearBedtimeModeCap()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    .line 128
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0

    .line 0
    return-void
.end method

.method public shouldListenToLightSensor()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
