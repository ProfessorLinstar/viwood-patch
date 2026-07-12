.class public final Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
.super Ljava/lang/Object;
.source "SettingsStatsUtil.java"


# instance fields
.field public mDataType:I

.field public mFlagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    .line 219
    iput p2, p0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    return-void
.end method
