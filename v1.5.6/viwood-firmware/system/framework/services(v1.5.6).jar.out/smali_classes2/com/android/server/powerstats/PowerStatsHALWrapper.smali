.class public abstract Lcom/android/server/powerstats/PowerStatsHALWrapper;
.super Ljava/lang/Object;
.source "PowerStatsHALWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerStatsHALWrapper"


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/powerstats/PowerStatsHALWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static getPowerStatsHalImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 2

    .line 335
    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;-><init>()V

    .line 336
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 339
    :cond_0
    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;-><init>()V

    return-object v0
.end method
