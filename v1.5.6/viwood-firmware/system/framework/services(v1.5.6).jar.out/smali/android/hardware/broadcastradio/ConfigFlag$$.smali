.class public interface abstract Landroid/hardware/broadcastradio/ConfigFlag$$;
.super Ljava/lang/Object;
.source "ConfigFlag.java"


# direct methods
.method public static toString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 26
    const-string p0, "FORCE_MONO"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 27
    const-string p0, "FORCE_ANALOG"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 28
    const-string p0, "FORCE_DIGITAL"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 29
    const-string p0, "RDS_AF"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 30
    const-string p0, "RDS_REG"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 31
    const-string p0, "DAB_DAB_LINKING"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 32
    const-string p0, "DAB_FM_LINKING"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 33
    const-string p0, "DAB_DAB_SOFT_LINKING"

    return-object p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 34
    const-string p0, "DAB_FM_SOFT_LINKING"

    return-object p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 35
    const-string p0, "FORCE_ANALOG_FM"

    return-object p0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    .line 36
    const-string p0, "FORCE_ANALOG_AM"

    return-object p0

    .line 37
    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
