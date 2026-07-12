.class public interface abstract Landroid/hardware/broadcastradio/AnnouncementType$$;
.super Ljava/lang/Object;
.source "AnnouncementType.java"


# direct methods
.method public static toString(B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 22
    const-string p0, "INVALID"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 23
    const-string p0, "EMERGENCY"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 24
    const-string p0, "WARNING"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 25
    const-string p0, "TRAFFIC"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 26
    const-string p0, "WEATHER"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 27
    const-string p0, "NEWS"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 28
    const-string p0, "EVENT"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 29
    const-string p0, "SPORT"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 30
    const-string p0, "MISC"

    return-object p0

    .line 31
    :cond_8
    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
