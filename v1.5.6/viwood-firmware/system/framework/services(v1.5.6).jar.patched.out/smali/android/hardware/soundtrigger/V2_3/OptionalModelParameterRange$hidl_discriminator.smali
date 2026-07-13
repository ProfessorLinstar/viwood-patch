.class public abstract Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;
.super Ljava/lang/Object;
.source "OptionalModelParameterRange.java"


# direct methods
.method public static final getName(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 17
    const-string p0, "Unknown"

    return-object p0

    .line 16
    :cond_0
    const-string/jumbo p0, "range"

    return-object p0

    .line 15
    :cond_1
    const-string/jumbo p0, "noinit"

    return-object p0
.end method
