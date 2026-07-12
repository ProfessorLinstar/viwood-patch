.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# instance fields
.field public final mCachedHeadrooms:Landroid/util/SparseArray;

.field public final mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public mHeadroomThresholds:[F

.field mInactivityThresholdMillis:J

.field public mLastForecastCallTimeMillis:J

.field final mSamples:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field mSevereThresholds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public static synthetic $r8$lambda$UBi4DQBBLPBYQRHEEMFqEv1BLg8(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getAndUpdateTemperatureSamples()V

    return-void
.end method

.method public static synthetic $r8$lambda$g0-paZd5RiUyQc5-FmgfXPsGA84(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .line 2005
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCachedHeadrooms(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTemperatureSampleLocked(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JLandroid/os/Temperature;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureSampleLocked(JLandroid/os/Temperature;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 2

    .line 1879
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 1882
    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    .line 1886
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    .line 1892
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 1895
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    .line 1899
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    const/4 p1, 0x7

    .line 1903
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const-wide/16 v0, 0x0

    .line 1905
    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 1908
    new-instance p1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static normalizeTemperature(FF)F
    .locals 2

    .line 0
    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p1, v0

    cmpg-float v1, p0, p1

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p0, p1

    div-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public createSampleForTesting(JF)Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .locals 0

    .line 2220
    new-instance p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    return-object p0
.end method

.method public final getAndUpdateTemperatureSamples()V
    .locals 6

    .line 1970
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1971
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1975
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1985
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v3

    .line 1990
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Temperature;

    .line 1991
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureSampleLocked(JLandroid/os/Temperature;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1993
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 1994
    monitor-exit v0

    return-void

    .line 1979
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1980
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 1981
    monitor-exit v0

    return-void

    .line 1994
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAndUpdateThresholds()V
    .locals 4

    .line 1912
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 1913
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(ZI)Ljava/util/List;

    move-result-object v0

    .line 1914
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1916
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 1918
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/thermal/TemperatureThreshold;

    const/4 v3, 0x0

    .line 1919
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1921
    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getForecast(I)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2061
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2064
    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    const/4 v4, 0x6

    const/16 v5, 0x305

    const/high16 v6, 0x7fc00000    # Float.NaN

    if-eqz v3, :cond_0

    .line 2065
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "No temperature thresholds found"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2066
    invoke-static {v5, v0, v4, v6, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2070
    monitor-exit v2

    return v6

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 2072
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    .line 2075
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2077
    :try_start_1
    iget-object v9, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 2078
    iget-object v9, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    const/high16 v9, -0x40800000    # -1.0f

    .line 2080
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmpl-float v2, v9, v3

    if-lez v2, :cond_2

    .line 2083
    :try_start_2
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v0

    .line 2084
    invoke-virtual {v0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->forecastSkinTemperature(I)F

    move-result v0

    .line 2085
    invoke-static {v0, v9}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    .line 2089
    :catch_0
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "forecastSkinTemperature fails"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2087
    :catch_1
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "forecastSkinTemperature returns unsupported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v6

    .line 2080
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2094
    :cond_2
    iget-object v9, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 2095
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 2096
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2100
    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getAndUpdateTemperatureSamples()V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    .line 2108
    :cond_3
    :goto_3
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2109
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No temperature samples found"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x5

    .line 2110
    invoke-static {v5, v0, v2, v6, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2114
    monitor-exit v9

    return v6

    .line 2117
    :cond_4
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2118
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2121
    invoke-static {v5, v2, v8, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2130
    monitor-exit v9

    return v0

    .line 2135
    :cond_5
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v11, v6

    move v10, v7

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2136
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2137
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 2139
    iget-object v14, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    if-nez v14, :cond_6

    add-int/lit8 v10, v10, 0x1

    .line 2142
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No threshold found for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2146
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    iget v13, v13, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 2148
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v3, 0x3

    if-ge v15, v3, :cond_a

    .line 2149
    iget-object v3, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ne v3, v8, :cond_7

    iget-object v3, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2153
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2154
    invoke-static {v5, v1, v8, v0, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2162
    monitor-exit v9

    return v0

    .line 2165
    :cond_7
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v13, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v3

    .line 2166
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_9

    cmpl-float v12, v3, v11

    if-lez v12, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_9
    :goto_6
    move v11, v3

    goto :goto_5

    :cond_a
    if-lez v1, :cond_b

    .line 2173
    invoke-virtual {v0, v12}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getSlopeOf(Ljava/util/List;)F

    move-result v3

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    int-to-float v12, v1

    mul-float/2addr v3, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v12

    add-float/2addr v13, v3

    .line 2176
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2175
    invoke-static {v13, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v3

    .line 2177
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_9

    cmpl-float v12, v3, v11

    if-lez v12, :cond_8

    goto :goto_6

    .line 2181
    :cond_c
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ne v10, v2, :cond_d

    .line 2183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2182
    invoke-static {v5, v2, v4, v6, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    goto :goto_8

    .line 2188
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2187
    invoke-static {v5, v2, v8, v11, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2192
    :goto_8
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2193
    monitor-exit v9

    return v11

    .line 2194
    :goto_9
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 2072
    :goto_a
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public getHeadroomCallbackDataLocked()Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;
    .locals 5

    .line 2205
    new-instance v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    const/4 v1, 0x0

    .line 2206
    invoke-virtual {p0, v1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v1

    const/16 v2, 0xa

    .line 2207
    invoke-virtual {p0, v2}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v3

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v4, p0

    .line 2209
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;-><init>(FFI[F)V

    return-object v0
.end method

.method public getHeadroomThresholds()[F
    .locals 2

    .line 2198
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2199
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSlopeOf(Ljava/util/List;)F
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;)F"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    const/4 v2, 0x0

    move v6, p0

    move-wide v4, v0

    move v3, v2

    .line 2020
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 2021
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 2022
    iget-wide v8, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    add-long/2addr v4, v8

    .line 2023
    iget v7, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2025
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v7, v3

    div-long/2addr v4, v7

    .line 2026
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 2030
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2031
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 2032
    iget-wide v7, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    sub-long/2addr v7, v4

    .line 2033
    iget v3, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    sub-float/2addr v3, v6

    mul-long v9, v7, v7

    add-long/2addr v0, v9

    long-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr p0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    long-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public final updateTemperatureSampleLocked(JLandroid/os/Temperature;)V
    .locals 2

    .line 2001
    invoke-virtual {p3}, Landroid/os/Temperature;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2004
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 2006
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    .line 2007
    invoke-virtual {p0}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    .line 2009
    :cond_1
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-virtual {p3}, Landroid/os/Temperature;->getValue()F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V
    .locals 5

    .line 1928
    iget-object v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    goto :goto_2

    .line 1931
    :cond_0
    aget v0, v0, v2

    .line 1933
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 1936
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 1944
    iget-object p2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 1945
    iget-object p2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_2
    const/4 p2, 0x1

    :goto_0
    const/4 v1, 0x6

    if-gt p2, v1, :cond_7

    .line 1949
    iget-object v1, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v3, v1

    if-le v3, p2, :cond_6

    .line 1950
    aget v1, v1, p2

    .line 1951
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, v2, :cond_4

    .line 1955
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, p2

    goto :goto_1

    .line 1958
    :cond_4
    invoke-static {v1, v0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v1

    .line 1959
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1960
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aput v1, v3, p2

    goto :goto_1

    .line 1962
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aget v4, v3, p2

    .line 1963
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v3, p2

    :cond_6
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method
