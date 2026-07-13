.class public abstract Landroid/hardware/audio/common/V2_0/AudioUsage;
.super Ljava/lang/Object;
.source "AudioUsage.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 26
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 29
    const-string p0, "MEDIA"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 32
    const-string p0, "VOICE_COMMUNICATION"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 35
    const-string p0, "VOICE_COMMUNICATION_SIGNALLING"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 38
    const-string p0, "ALARM"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 41
    const-string p0, "NOTIFICATION"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 44
    const-string p0, "NOTIFICATION_TELEPHONY_RINGTONE"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 47
    const-string p0, "NOTIFICATION_COMMUNICATION_REQUEST"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 50
    const-string p0, "NOTIFICATION_COMMUNICATION_INSTANT"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 53
    const-string p0, "NOTIFICATION_COMMUNICATION_DELAYED"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 56
    const-string p0, "NOTIFICATION_EVENT"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 59
    const-string p0, "ASSISTANCE_ACCESSIBILITY"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 62
    const-string p0, "ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 65
    const-string p0, "ASSISTANCE_SONIFICATION"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 68
    const-string p0, "GAME"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 71
    const-string p0, "VIRTUAL_SOURCE"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 74
    const-string p0, "ASSISTANT"

    return-object p0

    :cond_10
    const/16 v1, 0x11

    if-ne p0, v1, :cond_11

    .line 77
    const-string p0, "CNT"

    return-object p0

    :cond_11
    if-ne p0, v0, :cond_12

    .line 80
    const-string p0, "MAX"

    return-object p0

    .line 82
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
