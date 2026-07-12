.class public interface abstract Lcom/android/server/wm/CompatScaleProvider;
.super Ljava/lang/Object;
.source "CompatScaleProvider.java"


# direct methods
.method public static isValidOrderId(I)Z
    .locals 1

    .line 0
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract getCompatScale(Ljava/lang/String;I)Landroid/content/res/CompatibilityInfo$CompatScale;
.end method
