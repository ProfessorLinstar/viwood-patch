.class public final Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "AppBatteryTracker.java"


# instance fields
.field public volatile mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

.field public mBatteryFullChargeMah:I

.field public volatile mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public volatile mBgCurrentDrainBgRestrictedThreshold:[F

.field public volatile mBgCurrentDrainBgRestrictedTypes:I

.field public volatile mBgCurrentDrainDecoupleThresholds:Z

.field public volatile mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public volatile mBgCurrentDrainExemptedTypes:I

.field public volatile mBgCurrentDrainHighThresholdByBgLocation:Z

.field public volatile mBgCurrentDrainInteractionGracePeriodMs:J

.field public volatile mBgCurrentDrainLocationMinDuration:J

.field public volatile mBgCurrentDrainMediaPlaybackMinDuration:J

.field public volatile mBgCurrentDrainPowerComponents:I

.field public volatile mBgCurrentDrainRestrictedBucketThreshold:[F

.field public volatile mBgCurrentDrainRestrictedBucketTypes:I

.field public volatile mBgCurrentDrainWindowMs:J

.field public final mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public final mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

.field public final mDefaultBgCurrentDrainBgRestrictedThreshold:F

.field public final mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public final mDefaultBgCurrentDrainExemptedTypes:I

.field public final mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

.field public final mDefaultBgCurrentDrainInteractionGracePeriodMs:J

.field public final mDefaultBgCurrentDrainLocationMinDuration:J

.field public final mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

.field public final mDefaultBgCurrentDrainPowerComponent:I

.field public final mDefaultBgCurrentDrainRestrictedBucket:F

.field public final mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

.field public final mDefaultBgCurrentDrainTypesToBgRestricted:I

.field public final mDefaultBgCurrentDrainWindowMs:J

.field public final mDefaultCurrentDrainTypesToRestrictedBucket:I

.field public final mHighBgBatteryPackages:Landroid/util/SparseArray;

.field public final mLastInteractionTime:Landroid/util/SparseLongArray;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V
    .locals 12

    .line 1558
    iget-object v0, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 1559
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111005e

    .line 1560
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1558
    const-string v1, "bg_current_drain_monitor_enabled"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    const/4 p1, 0x2

    .line 1459
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 1465
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 1540
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 1547
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 1561
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 1562
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070027

    .line 1563
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p2

    .line 1566
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    aget p2, p2, v2

    goto :goto_0

    :cond_0
    aget p2, p2, v1

    :goto_0
    iput p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    const v0, 0x1070026

    .line 1567
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    .line 1570
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    aget v0, v0, v2

    goto :goto_1

    :cond_1
    aget v0, v0, v1

    :goto_1
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    const v3, 0x10e0034

    .line 1571
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 1573
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    const v5, 0x1070025

    .line 1574
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    .line 1577
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v6

    if-eqz v6, :cond_2

    aget v5, v5, v2

    goto :goto_2

    :cond_2
    aget v5, v5, v1

    :goto_2
    iput v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    const v6, 0x1070024

    .line 1578
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 1581
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-eqz v7, :cond_3

    aget v6, v6, v2

    goto :goto_3

    :cond_3
    aget v6, v6, v1

    :goto_3
    iput v6, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    const v7, 0x10e0030

    .line 1582
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    const v9, 0x10e002f

    .line 1584
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    const v11, 0x111005c

    .line 1586
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    const v11, 0x111005b

    .line 1588
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    const v11, 0x10e0033

    .line 1590
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    const v11, 0x10e0032

    .line 1592
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    const v11, 0x10e0031

    .line 1594
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    const v11, 0x10e002e

    .line 1596
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    const v11, 0x111005d

    .line 1598
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 1600
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aput p2, p1, v1

    .line 1602
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aput v5, p1, v2

    .line 1604
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aput v0, p1, v1

    .line 1606
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aput v6, p1, v2

    .line 1608
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 1609
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 1611
    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 1613
    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    return-void
.end method

.method public static batteryUsageTypesToString(I)Ljava/lang/String;
    .locals 4

    .line 1849
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1851
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_6

    if-eqz v2, :cond_0

    const/16 v2, 0x7c

    .line 1854
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1871
    :cond_1
    const-string v3, "CACHED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1868
    :cond_2
    const-string v3, "FOREGROUND_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1865
    :cond_3
    const-string v3, "BACKGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1862
    :cond_4
    const-string v3, "FOREGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1859
    :cond_5
    const-string v3, "UNSPECIFIED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    not-int v1, v1

    and-int/2addr p0, v1

    .line 1852
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    goto :goto_0

    .line 1878
    :cond_6
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 1617
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1618
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 1620
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1622
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method


# virtual methods
.method public calcPercentage(I[D[D)[D
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 1829
    iget-object v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    invoke-static {v1}, Lcom/android/server/am/AppBatteryTracker;->-$$Nest$fgetmDebugUidPercentages(Lcom/android/server/am/AppBatteryTracker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1830
    invoke-virtual {p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getPercentage()[D

    move-result-object v0

    :cond_1
    const/4 p1, 0x0

    .line 1831
    :goto_1
    array-length v1, p2

    if-ge p1, v1, :cond_3

    if-eqz v0, :cond_2

    .line 1832
    aget-wide v1, v0, p1

    goto :goto_2

    :cond_2
    aget-wide v1, p2, p1

    iget v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    :goto_2
    aput-wide v1, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object p3
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 2103
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2104
    const-string v1, "APP BATTERY TRACKER POLICY SETTINGS:"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2107
    invoke-super {v0, v6, v1}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2109
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2110
    const-string v2, "bg_current_drain_threshold_to_restricted_bucket"

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3d

    .line 2111
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2112
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 2114
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2115
    const-string v3, "bg_current_drain_high_threshold_to_restricted_bucket"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2117
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v8, 0x1

    aget v3, v3, v8

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 2119
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2120
    const-string v3, "bg_current_drain_threshold_to_bg_restricted"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2122
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v3, v3, v7

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 2124
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2125
    const-string v3, "bg_current_drain_high_threshold_to_bg_restricted"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2127
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v3, v3, v8

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 2129
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2130
    const-string v3, "bg_current_drain_window"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2132
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    invoke-virtual {v6, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 2133
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2134
    const-string v3, "bg_current_drain_interaction_grace_period"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2136
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    invoke-virtual {v6, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 2137
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2138
    const-string v3, "bg_current_drain_media_playback_min_duration"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2140
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    invoke-virtual {v6, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 2141
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2142
    const-string v3, "bg_current_drain_location_min_duration"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2144
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    invoke-virtual {v6, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 2145
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2146
    const-string v3, "bg_current_drain_event_duration_based_threshold_enabled"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2148
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2149
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2150
    const-string v3, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2152
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2153
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    const-string v3, "bg_current_drain_types_to_restricted_bucket"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2156
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2158
    const-string v3, "bg_current_drain_types_to_bg_restricted"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2160
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2162
    const-string v3, "bg_current_drain_power_components"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2164
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2165
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2166
    const-string v3, "bg_current_drain_exempted_types"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2168
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    invoke-static {v3}, Lcom/android/server/am/BaseAppStateTracker;->stateTypesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    const-string v3, "bg_current_drain_high_threshold_by_bg_location"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2172
    iget-boolean v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2173
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    const-string v2, "Full charge capacity="

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2175
    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2176
    const-string v2, " mAh"

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    const-string v2, "Excessive current drain detected:"

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    iget-object v9, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2181
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 2182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-lez v10, :cond_0

    .line 2184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move v12, v7

    :goto_0
    if-ge v12, v10, :cond_1

    .line 2186
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2187
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 2188
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2189
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v5

    check-cast v13, [J

    .line 2190
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-wide v2, v3

    .line 2191
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    move-result v4

    .line 2193
    const-string v15, "%s%s: (threshold=%4.2f%%/%4.2f%%) %s / %s\n"

    .line 2195
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aget v1, v1, v4

    .line 2196
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v1, v1, v4

    .line 2197
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-wide v3, v2

    aget-wide v1, v13, v7

    aget-object v5, v14, v7

    .line 2198
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    move-result-object v19

    move-wide v2, v3

    aget-wide v0, v13, v8

    aget-object v5, v14, v8

    move-wide v3, v2

    move-wide v1, v0

    move-object/from16 v0, p0

    .line 2201
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    move-result-object v1

    move-wide v2, v3

    move v0, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v16, v1

    move-object v1, v15

    move-object/from16 v15, v19

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v4

    .line 2193
    invoke-virtual {v6, v1, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v12, v0, 0x1

    move-object/from16 v0, p0

    move-wide v3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2207
    :cond_0
    invoke-virtual {v6, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2208
    const-string v0, "(none)"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    :cond_1
    monitor-exit v9

    return-void

    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method public final formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    if-eqz p5, :cond_0

    .line 2217
    invoke-static {p1, p2, p3, p4}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 2216
    const-string p1, "%s %s (%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2219
    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public final getCurrentDrainThresholdIndex(IJJ)I
    .locals 1

    .line 2006
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->hasMediaPlayback(IJJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->hasLocation(IJJ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getProposedRestrictionLevel(Ljava/lang/String;II)I
    .locals 10

    const/4 p1, 0x0

    const/16 v0, 0x1e

    if-gt p3, v0, :cond_0

    return p1

    .line 1804
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1805
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_6

    .line 1807
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, p2, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 1808
    iget-object p2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [J

    .line 1809
    aget-wide v2, p2, p1

    iget-wide v8, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long/2addr v6, v8

    cmp-long v2, v2, v6

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, p1

    .line 1811
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v6, Lcom/android/server/am/AppBatteryTracker;

    iget-object v6, v6, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 1812
    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController;->isAutoRestrictAbusiveAppEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    if-eqz p0, :cond_2

    move p1, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    const/16 p0, 0x28

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    const/16 p1, 0x32

    if-le p3, p1, :cond_5

    .line 1818
    aget-wide p2, p2, v3

    cmp-long p2, p2, v4

    if-lez p2, :cond_4

    move p0, p1

    .line 1819
    :cond_4
    monitor-exit v1

    return p0

    :cond_5
    if-ne p3, p1, :cond_6

    .line 1821
    monitor-exit v1

    return p0

    .line 1824
    :cond_6
    monitor-exit v1

    return v0

    .line 1825
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1883
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_5

    .line 1894
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getPercentage()[D

    move-result-object v2

    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->sumPercentageOfTypes([DI)D

    move-result-wide v6

    .line 1896
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getPercentage()[D

    move-result-object v2

    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->sumPercentageOfTypes([DI)D

    move-result-wide v8

    .line 1898
    iget-object v10, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1899
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v2, Lcom/android/server/am/AppBatteryTracker;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result v11

    const/16 v2, 0x32

    if-lt v11, v2, :cond_1

    .line 1902
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 1904
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v1, v12, v13}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    .line 1905
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1906
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    move-result v4

    .line 1908
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    move-wide/from16 v16, v12

    .line 1909
    iget-boolean v12, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 1910
    iget-object v13, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aget v13, v13, v4

    move-wide/from16 v18, v2

    float-to-double v2, v13

    .line 1911
    iget-object v13, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v4, v13, v4

    move-wide/from16 v20, v2

    float-to-double v2, v4

    const/4 v13, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v4, 0x1

    if-gez v5, :cond_6

    cmpl-double v5, v6, v20

    if-ltz v5, :cond_3

    .line 1916
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long/2addr v14, v5

    cmp-long v5, v18, v14

    if-lez v5, :cond_2

    .line 1918
    new-array v5, v13, [J

    .line 1919
    aput-wide v18, v5, v22

    .line 1920
    new-array v6, v13, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 1921
    aput-object p2, v6, v22

    .line 1922
    iget-object v7, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-virtual {v7, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v22, v4

    goto :goto_0

    :cond_2
    move-object/from16 v5, v23

    move-object v6, v5

    :goto_0
    move v7, v4

    goto :goto_1

    :cond_3
    move/from16 v7, v22

    move-object/from16 v5, v23

    move-object v6, v5

    :goto_1
    if-eqz v12, :cond_5

    cmpl-double v2, v8, v2

    if-ltz v2, :cond_5

    if-nez v5, :cond_4

    .line 1930
    new-array v5, v13, [J

    .line 1931
    new-array v6, v13, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 1932
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1934
    :cond_4
    aput-wide v18, v5, v4

    .line 1935
    aput-object p2, v6, v4

    move v7, v4

    move/from16 v22, v7

    :cond_5
    move/from16 v24, v4

    goto :goto_4

    :cond_6
    move/from16 v24, v4

    .line 1939
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 1940
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1941
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [J

    .line 1942
    aget-wide v25, v5, v22

    cmpl-double v6, v6, v20

    if-ltz v6, :cond_9

    .line 1944
    iget-wide v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long/2addr v14, v6

    cmp-long v6, v18, v14

    if-lez v6, :cond_8

    cmp-long v6, v25, v16

    if-nez v6, :cond_7

    .line 1946
    aput-wide v18, v5, v22

    .line 1947
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object p2, v6, v22

    :cond_7
    move/from16 v6, v24

    goto :goto_2

    :cond_8
    move/from16 v6, v22

    :goto_2
    move/from16 v7, v24

    goto :goto_3

    :cond_9
    move/from16 v6, v22

    move v7, v6

    :goto_3
    cmpl-double v2, v8, v2

    if-ltz v2, :cond_d

    if-nez v12, :cond_a

    const/16 v2, 0x28

    if-ne v11, v2, :cond_b

    .line 1964
    iget-wide v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    add-long v25, v25, v2

    cmp-long v2, v18, v25

    if-lez v2, :cond_b

    :cond_a
    move/from16 v22, v24

    :cond_b
    if-eqz v22, :cond_c

    .line 1968
    aput-wide v18, v5, v24

    .line 1969
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object p2, v2, v24

    :cond_c
    move/from16 v7, v24

    goto :goto_4

    .line 1976
    :cond_d
    aput-wide v16, v5, v24

    .line 1977
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object v23, v2, v24

    move/from16 v22, v6

    .line 1981
    :goto_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_e

    if-eqz v22, :cond_e

    .line 1990
    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v2, 0x600

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    :cond_e
    :goto_5
    return-void

    .line 1981
    :goto_6
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasLocation(IJJ)Z
    .locals 12

    .line 2018
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2021
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    return v3

    .line 2025
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v4, 0x0

    sub-long v7, p2, p4

    .line 2028
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 2029
    iget-object v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v5, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v11, 0x8

    move v6, p1

    move-wide v9, p2

    .line 2030
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(IJJI)J

    move-result-wide v4

    .line 2032
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public final hasMediaPlayback(IJJ)Z
    .locals 7

    .line 2012
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2013
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController;->getCompositeMediaPlaybackDurations(IJJ)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    cmp-long p0, p1, p3

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    return-void

    .line 2063
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2066
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1

    .line 2068
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [J

    const-wide/16 v0, 0x0

    const/4 p3, 0x1

    aput-wide v0, p1, p3

    .line 2069
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    const/4 p1, 0x0

    aput-object p1, p0, p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2071
    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .locals 2

    .line 1628
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "bg_current_drain_window"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "bg_current_drain_threshold_to_restricted_bucket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "bg_current_drain_threshold_to_bg_restricted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "bg_current_drain_types_to_bg_restricted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "bg_current_drain_exempted_types"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "bg_current_drain_types_to_restricted_bucket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "bg_current_drain_interaction_grace_period"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "bg_current_drain_high_threshold_by_bg_location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const-string v1, "bg_current_drain_high_threshold_to_bg_restricted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_a
    const-string v1, "bg_current_drain_location_min_duration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_b
    const-string v1, "bg_current_drain_high_threshold_to_restricted_bucket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_c
    const-string v1, "bg_current_drain_power_components"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_d
    const-string v1, "bg_current_drain_media_playback_min_duration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const-string v1, "bg_current_drain_decouple_thresholds"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_f
    const-string v1, "bg_current_drain_event_duration_based_threshold_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1664
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    return-void

    .line 1643
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainWindow()V

    return-void

    .line 1658
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainExemptedTypes()V

    return-void

    .line 1646
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainInteractionGracePeriod()V

    return-void

    .line 1640
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V

    return-void

    .line 1652
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainLocationMinDuration()V

    return-void

    .line 1637
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    return-void

    .line 1649
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainMediaPlaybackMinDuration()V

    return-void

    .line 1661
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainDecoupleThresholds()V

    return-void

    .line 1655
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainEventDurationBasedThresholdEnabled()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x756855de -> :sswitch_f
        -0x701eaca1 -> :sswitch_e
        -0x1fb1101d -> :sswitch_d
        -0x1f35f949 -> :sswitch_c
        -0x1d805c6c -> :sswitch_b
        0x303f164 -> :sswitch_a
        0x60568db -> :sswitch_9
        0x7be7274 -> :sswitch_8
        0x17cc3411 -> :sswitch_7
        0x1edfa25c -> :sswitch_6
        0x270cf0f7 -> :sswitch_5
        0x2ad74b9f -> :sswitch_4
        0x43bedfbe -> :sswitch_3
        0x513daa8c -> :sswitch_2
        0x6f6da4c5 -> :sswitch_1
        0x74efacd7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onSystemReady()V
    .locals 1

    .line 1783
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 1784
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryFullCharge()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 1785
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    .line 1787
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainWindow()V

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainInteractionGracePeriod()V

    .line 1789
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainMediaPlaybackMinDuration()V

    .line 1790
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainLocationMinDuration()V

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainEventDurationBasedThresholdEnabled()V

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainExemptedTypes()V

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainDecoupleThresholds()V

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V

    return-void
.end method

.method public onTrackerEnabled(Z)V
    .locals 0

    .line 1679
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    invoke-static {p0, p1}, Lcom/android/server/am/AppBatteryTracker;->-$$Nest$monCurrentDrainMonitorEnabled(Lcom/android/server/am/AppBatteryTracker;Z)V

    return-void
.end method

.method public onUidRemovedLocked(I)V
    .locals 1

    .line 2097
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2098
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 4

    .line 2037
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2038
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2039
    iget-object v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(ILjava/lang/String;)I

    move-result p1

    const/16 v1, 0x32

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 2045
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 2047
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    move p1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2051
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 2054
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 p1, 0x300

    const/4 v0, 0x3

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    :cond_2
    return-void

    .line 2051
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUserRemovedLocked(I)V
    .locals 2

    .line 2083
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2084
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2085
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2088
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2089
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 2090
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 1

    .line 2076
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2077
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 2078
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->reset()V

    return-void
.end method

.method public final sumPercentageOfTypes([DI)D
    .locals 4

    .line 1839
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    const-wide/16 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 1841
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 1842
    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    not-int p0, p0

    and-int/2addr p2, p0

    .line 1840
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V
    .locals 3

    .line 1775
    const-string v0, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    return-void
.end method

.method public final updateCurrentDrainDecoupleThresholds()V
    .locals 3

    .line 1768
    const-string v0, "bg_current_drain_decouple_thresholds"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    return-void
.end method

.method public final updateCurrentDrainEventDurationBasedThresholdEnabled()V
    .locals 3

    .line 1754
    const-string v0, "bg_current_drain_event_duration_based_threshold_enabled"

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    return-void
.end method

.method public final updateCurrentDrainExemptedTypes()V
    .locals 3

    .line 1761
    const-string v0, "bg_current_drain_exempted_types"

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    return-void
.end method

.method public final updateCurrentDrainInteractionGracePeriod()V
    .locals 4

    .line 1733
    const-string v0, "bg_current_drain_interaction_grace_period"

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    return-void
.end method

.method public final updateCurrentDrainLocationMinDuration()V
    .locals 4

    .line 1747
    const-string v0, "bg_current_drain_location_min_duration"

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    return-void
.end method

.method public final updateCurrentDrainMediaPlaybackMinDuration()V
    .locals 4

    .line 1740
    const-string v0, "bg_current_drain_media_playback_min_duration"

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    return-void
.end method

.method public final updateCurrentDrainThreshold()V
    .locals 6

    .line 1683
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const-string v1, "bg_current_drain_threshold_to_restricted_bucket"

    iget v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    .line 1684
    const-string v3, "activity_manager"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1687
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const-string v1, "bg_current_drain_high_threshold_to_restricted_bucket"

    iget v4, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    .line 1688
    invoke-static {v3, v1, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    .line 1691
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    const-string v1, "bg_current_drain_threshold_to_bg_restricted"

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    .line 1692
    invoke-static {v3, v1, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v2

    .line 1695
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    const-string v1, "bg_current_drain_high_threshold_to_bg_restricted"

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    .line 1696
    invoke-static {v3, v1, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v4

    .line 1699
    const-string v0, "bg_current_drain_types_to_restricted_bucket"

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    .line 1700
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 1703
    const-string v0, "bg_current_drain_types_to_bg_restricted"

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    .line 1704
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 1707
    const-string v0, "bg_current_drain_power_components"

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    .line 1708
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 1711
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1712
    sget-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    .line 1714
    new-array v1, v0, [Landroid/os/BatteryConsumer$Dimensions;

    iput-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1716
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    new-instance v4, Landroid/os/BatteryConsumer$Dimensions;

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    invoke-direct {v4, v5, v2}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1719
    :cond_1
    :goto_1
    const-string v0, "bg_current_drain_high_threshold_by_bg_location"

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 1720
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    return-void
.end method

.method public final updateCurrentDrainWindow()V
    .locals 4

    .line 1726
    const-string v0, "bg_current_drain_window"

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    return-void
.end method

.method public updateTrackerEnabled()V
    .locals 1

    .line 1670
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    if-lez v0, :cond_0

    .line 1671
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1673
    iput-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 1674
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onTrackerEnabled(Z)V

    return-void
.end method
