.class public abstract Lcom/android/server/stats/pull/RawSettingsTelemetryUtils;
.super Ljava/lang/Object;
.source "RawSettingsTelemetryUtils.java"


# direct methods
.method public static getPeakRefreshRateSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 70
    const-string p0, "SettingsTelemetryUtils"

    const-string p1, "PEAK_REFRESH_RATE value is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 74
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p0}, Lcom/android/internal/display/RefreshRateSettingsUtils;->findHighestRefreshRateAmongAllBuiltInDisplays(Landroid/content/Context;)F

    move-result p0

    .line 78
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static getTelemetrySettingFromRawVal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    const-string/jumbo v0, "peak_refresh_rate"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/RawSettingsTelemetryUtils;->getPeakRefreshRateSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method
