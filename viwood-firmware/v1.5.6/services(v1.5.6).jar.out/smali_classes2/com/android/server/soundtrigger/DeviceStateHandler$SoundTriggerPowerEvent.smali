.class public Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "DeviceStateHandler.java"


# instance fields
.field public final mSoundTriggerPowerState:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 249
    iput p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;->mSoundTriggerPowerState:I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundTriggerPowerChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;->stateToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final stateToString()Ljava/lang/String;
    .locals 2

    .line 258
    iget v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;->mSoundTriggerPowerState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown power state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;->mSoundTriggerPowerState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_0
    const-string p0, "All disabled"

    return-object p0

    .line 260
    :cond_1
    const-string p0, "Critical only"

    return-object p0

    .line 259
    :cond_2
    const-string p0, "All enabled"

    return-object p0
.end method
