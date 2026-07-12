.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# direct methods
.method public static originToString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 202
    const-string p0, "external"

    return-object p0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    const-string p0, "gnss"

    return-object p0

    .line 196
    :cond_2
    const-string/jumbo p0, "network"

    return-object p0

    .line 194
    :cond_3
    const-string p0, "manual"

    return-object p0

    .line 198
    :cond_4
    const-string/jumbo p0, "telephony"

    return-object p0
.end method

.method public static stringToOrigin(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 213
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v3, v5

    goto :goto_2

    :sswitch_0
    const-string/jumbo v3, "network"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v3, "telephony"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :sswitch_2
    const-string v3, "gnss"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :sswitch_3
    const-string v3, "manual"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :sswitch_4
    const-string v6, "external"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "originString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v1

    :pswitch_1
    return v4

    :pswitch_2
    return v0

    :pswitch_3
    return v2

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x6c869c35 -> :sswitch_4
        -0x4075183a -> :sswitch_3
        0x307d87 -> :sswitch_2
        0x2eaeb418 -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
.end method

.method public abstract clearLatestNetworkSuggestion()V
.end method

.method public abstract confirmTime(Landroid/app/time/UnixEpochTime;)Z
.end method

.method public abstract getCapabilitiesAndConfig(IZ)Landroid/app/time/TimeCapabilitiesAndConfig;
.end method

.method public abstract getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
.end method

.method public abstract getTimeState()Landroid/app/time/TimeState;
.end method

.method public abstract setTimeState(Landroid/app/time/TimeState;)V
.end method

.method public abstract suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
.end method

.method public abstract suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
.end method

.method public abstract suggestManualTime(ILandroid/app/timedetector/ManualTimeSuggestion;Z)Z
.end method

.method public abstract suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
.end method

.method public abstract suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
.end method

.method public abstract updateConfiguration(ILandroid/app/time/TimeConfiguration;Z)Z
.end method
