.class public final Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;
.super Ljava/lang/Object;
.source "LoudnessCodecHelper.java"


# instance fields
.field public mDeviceSplRange:I

.field public mIsDownmixing:Z

.field public mMetadataType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;
    .locals 4

    .line 197
    new-instance v0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    iget v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->mMetadataType:I

    iget-boolean v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->mIsDownmixing:Z

    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->mDeviceSplRange:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;-><init>(IZILcom/android/server/audio/LoudnessCodecHelper-IA;)V

    return-object v0
.end method

.method public setDeviceSplRange(I)Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;
    .locals 0

    .line 192
    iput p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->mDeviceSplRange:I

    return-object p0
.end method

.method public setIsDownmixing(Z)Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->mIsDownmixing:Z

    return-object p0
.end method

.method public setMetadataType(I)Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;
    .locals 0

    .line 182
    iput p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->mMetadataType:I

    return-object p0
.end method
