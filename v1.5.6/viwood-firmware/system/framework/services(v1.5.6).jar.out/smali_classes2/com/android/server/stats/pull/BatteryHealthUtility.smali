.class public abstract Lcom/android/server/stats/pull/BatteryHealthUtility;
.super Ljava/lang/Object;
.source "BatteryHealthUtility.java"


# direct methods
.method public static buildStatsEvent(ILandroid/hardware/health/BatteryHealthData;II)Landroid/util/StatsEvent;
    .locals 10

    .line 46
    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryManufacturingDateSeconds:J

    invoke-static {v0, v1}, Lcom/android/server/stats/pull/BatteryHealthUtility;->secondsToWeekYYYYMMDD(J)I

    move-result v3

    .line 47
    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryFirstUsageSeconds:J

    invoke-static {v0, v1}, Lcom/android/server/stats/pull/BatteryHealthUtility;->secondsToWeekYYYYMMDD(J)I

    move-result v4

    .line 48
    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryStateOfHealth:J

    .line 49
    iget v7, p1, Landroid/hardware/health/BatteryHealthData;->batteryPartStatus:I

    .line 50
    iget-object p1, p1, Landroid/hardware/health/BatteryHealthData;->batterySerialNumber:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/stats/pull/BatteryHealthUtility;->stringToIntHash(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 v6, p1, 0xff

    long-to-int v5, v0

    move v2, p0

    move v8, p2

    move v9, p3

    .line 52
    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method public static secondsToWeekYYYYMMDD(J)I
    .locals 3

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    .line 60
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x7

    const/4 p1, 0x2

    .line 64
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    .line 65
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 66
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 67
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 68
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 70
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyyMMdd"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static stringToIntHash(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 86
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 87
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
