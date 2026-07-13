.class public abstract Lcom/android/server/broadcastradio/aidl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static getBand(I)Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;
    .locals 1

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_0

    .line 35
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_0
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_1

    .line 36
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_1
    const/16 v0, 0x6a9

    if-ge p0, v0, :cond_2

    .line 37
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_2
    const/16 v0, 0x7530

    if-ge p0, v0, :cond_3

    .line 38
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_3
    const v0, 0xea60

    if-ge p0, v0, :cond_4

    .line 39
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_4
    const v0, 0x1adb0

    if-ge p0, v0, :cond_5

    .line 40
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    .line 41
    :cond_5
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0
.end method
