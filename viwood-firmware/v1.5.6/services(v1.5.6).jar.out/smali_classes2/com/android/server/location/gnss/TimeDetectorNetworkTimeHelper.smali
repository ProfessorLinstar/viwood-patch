.class public abstract Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;
.super Lcom/android/server/location/gnss/NetworkTimeHelper;
.source "TimeDetectorNetworkTimeHelper.java"


# static fields
.field public static final DEBUG:Z

.field static final MAX_NETWORK_TIME_AGE_MILLIS:I = 0x5265c00


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    const-string v0, "TDNetworkTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->DEBUG:Z

    return-void
.end method

.method public static isInUse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
