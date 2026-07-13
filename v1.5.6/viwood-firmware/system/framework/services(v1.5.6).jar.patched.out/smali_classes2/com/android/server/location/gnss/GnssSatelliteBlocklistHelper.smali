.class public Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;
.super Ljava/lang/Object;
.source "GnssSatelliteBlocklistHelper.java"


# instance fields
.field public final mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;

    .line 52
    new-instance p3, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, p0, v0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;-><init>(Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;Landroid/os/Handler;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "gnss_satellite_blocklist"

    .line 59
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static parseSatelliteBlocklist(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 101
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 105
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "Negative value is invalid."

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public updateSatelliteBlocklist()V
    .locals 7

    .line 66
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    const-string v1, "gnss_satellite_blocklist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, ""

    .line 73
    :cond_0
    const-string v1, "Update GNSS satellite blocklist: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssBlocklistHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->parseSatelliteBlocklist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 84
    const-string p0, "blocklist string has odd number of values.Aborting updateSatelliteBlocklist"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 90
    new-array v2, v1, [I

    .line 91
    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    mul-int/lit8 v5, v4, 0x2

    .line 93
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v4

    add-int/lit8 v5, v5, 0x1

    .line 94
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;

    invoke-interface {p0, v2, v3}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;->onUpdateSatelliteBlocklist([I[I)V

    return-void

    :catch_0
    move-exception p0

    .line 79
    const-string v0, "Exception thrown when parsing blocklist string."

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
