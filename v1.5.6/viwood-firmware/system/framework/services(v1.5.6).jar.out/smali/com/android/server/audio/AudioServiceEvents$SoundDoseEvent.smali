.class public final Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioServiceEvents.java"


# instance fields
.field public final mEventType:I

.field public final mFloatValue:F

.field public final mLongValue:J


# direct methods
.method public constructor <init>(IFJ)V
    .locals 0

    .line 613
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 614
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mEventType:I

    .line 615
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mFloatValue:F

    .line 616
    iput-wide p3, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mLongValue:J

    return-void
.end method

.method public static getAbsVolumeAttenuationEvent(FI)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;
    .locals 4

    .line 640
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    const/4 v1, 0x5

    int-to-long v2, p1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IFJ)V

    return-object v0
.end method

.method public static getDoseUpdateEvent(FJ)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;
    .locals 2

    .line 624
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IFJ)V

    return-object v0
.end method

.method public static getLowerVolumeToRs1Event()Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;
    .locals 5

    .line 636
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IFJ)V

    return-object v0
.end method

.method public static getMomentaryExposureEvent(F)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;
    .locals 4

    .line 620
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IFJ)V

    return-object v0
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 4

    .line 645
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mEventType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIXME invalid event type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mEventType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 659
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mLongValue:J

    .line 661
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mFloatValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 659
    const-string v1, "Updating CSD absolute volume attenuation on device 0x%s with %.2f dB "

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 657
    :cond_1
    const-string p0, "CSD lowering volume to RS1"

    return-object p0

    .line 655
    :cond_2
    const-string p0, "CSD accumulating: RS2 entered"

    return-object p0

    .line 653
    :cond_3
    const-string p0, "CSD reached 500%"

    return-object p0

    .line 649
    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mFloatValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    .line 651
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mLongValue:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 649
    const-string v1, "dose update CSD=%.1f%% total duration=%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 647
    :cond_5
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mFloatValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "momentary exposure MEL=%.2f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
