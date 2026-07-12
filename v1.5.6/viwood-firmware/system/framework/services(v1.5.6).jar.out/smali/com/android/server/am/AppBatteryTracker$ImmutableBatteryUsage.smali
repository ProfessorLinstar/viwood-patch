.class public final Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
.super Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.source "AppBatteryTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1159
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 0

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V
    .locals 0

    .line 1172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 0

    .line 1191
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 1

    .line 1210
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-object v0
.end method

.method public scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 0

    .line 1201
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPercentage([D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 0

    .line 1206
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTo(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 0

    .line 1186
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 0

    .line 1196
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
