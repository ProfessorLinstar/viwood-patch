.class public final Lcom/android/server/vibrator/PwleSegmentsValidator;
.super Ljava/lang/Object;
.source "PwleSegmentsValidator.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z
    .locals 4

    const-wide/16 v0, 0x1000

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    .line 52
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result p1

    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 56
    instance-of v2, v1, Landroid/os/vibrator/BasicPwleSegment;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    return v3

    .line 59
    :cond_1
    instance-of v2, v1, Landroid/os/vibrator/PwleSegment;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/os/vibrator/PwleSegment;

    if-eqz p0, :cond_2

    .line 60
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_2

    .line 61
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    cmpl-float v2, v2, p1

    if-gtz v2, :cond_2

    .line 62
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v2

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_2

    .line 63
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    :cond_2
    return v3

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
