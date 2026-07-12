.class public Lcom/android/server/am/CacheOomRanker;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"


# static fields
.field public static final CACHE_USE_COMPARATOR:Ljava/util/Comparator;

.field static final DEFAULT_OOM_RE_RANKING_LRU_WEIGHT:F = 0.35f

.field static final DEFAULT_OOM_RE_RANKING_NUMBER_TO_RE_RANK:I = 0x8

.field static final DEFAULT_OOM_RE_RANKING_RSS_WEIGHT:F = 0.15f

.field static final DEFAULT_OOM_RE_RANKING_USES_WEIGHT:F = 0.5f

.field static final DEFAULT_PRESERVE_TOP_N_APPS:I = 0x3

.field static final DEFAULT_RSS_UPDATE_RATE_MS:J = 0x2710L

.field static final DEFAULT_USE_FREQUENT_RSS:Z = true

.field static final KEY_OOM_RE_RANKING_LRU_WEIGHT:Ljava/lang/String; = "oom_re_ranking_lru_weight"

.field static final KEY_OOM_RE_RANKING_NUMBER_TO_RE_RANK:Ljava/lang/String; = "oom_re_ranking_number_to_re_rank"

.field static final KEY_OOM_RE_RANKING_PRESERVE_TOP_N_APPS:Ljava/lang/String; = "oom_re_ranking_preserve_top_n_apps"

.field static final KEY_OOM_RE_RANKING_RSS_UPDATE_RATE_MS:Ljava/lang/String; = "oom_re_ranking_rss_update_rate_ms"

.field static final KEY_OOM_RE_RANKING_RSS_WEIGHT:Ljava/lang/String; = "oom_re_ranking_rss_weight"

.field static final KEY_OOM_RE_RANKING_USES_WEIGHT:Ljava/lang/String; = "oom_re_ranking_uses_weight"

.field static final KEY_OOM_RE_RANKING_USE_FREQUENT_RSS:Ljava/lang/String; = "oom_re_ranking_rss_use_frequent_rss"

.field static final KEY_USE_OOM_RE_RANKING:Ljava/lang/String; = "use_oom_re_ranking"

.field public static final LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

.field public static final LAST_RSS_COMPARATOR:Ljava/util/Comparator;

.field public static final RSS_COMPARATOR:Ljava/util/Comparator;

.field public static final SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public mLruPositions:[I

.field mLruWeight:F

.field public final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mPhenotypeFlagLock:Ljava/lang/Object;

.field mPreserveTopNApps:I

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

.field public final mProfilerLock:Ljava/lang/Object;

.field mRssUpdateRateMs:J

.field mRssWeight:F

.field public mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field mUseFrequentRss:Z

.field public mUseOomReRanking:Z

.field mUsesWeight:F


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CacheOomRanker;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateLruWeight(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateLruWeight()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNumberToReRank(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePreserveTopNApps(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updatePreserveTopNApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRssUpdateRateMs(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssUpdateRateMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRssWeight(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssWeight()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseFrequentRss(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseFrequentRss()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseOomReranking(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseOomReranking()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUsesWeight(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUsesWeight()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/android/server/am/CacheOomRanker$ScoreComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$ScoreComparator;-><init>(Lcom/android/server/am/CacheOomRanker-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;

    .line 73
    new-instance v0, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;-><init>(Lcom/android/server/am/CacheOomRanker-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Ljava/util/Comparator;

    .line 75
    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(Lcom/android/server/am/CacheOomRanker-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Ljava/util/Comparator;

    .line 77
    new-instance v0, Lcom/android/server/am/CacheOomRanker$LastRssComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$LastRssComparator;-><init>(Lcom/android/server/am/CacheOomRanker-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Ljava/util/Comparator;

    .line 79
    new-instance v0, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;-><init>(Lcom/android/server/am/CacheOomRanker-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    .line 149
    new-instance v0, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;-><init>(Lcom/android/server/am/CacheOomRanker-IA;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    const/4 v0, 0x3

    .line 91
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    const-wide/16 v0, 0x2710

    .line 97
    iput-wide v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    const v0, 0x3eb33333    # 0.35f

    .line 101
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 105
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    const v0, 0x3e19999a    # 0.15f

    .line 109
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 120
    new-instance v0, Lcom/android/server/am/CacheOomRanker$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CacheOomRanker$1;-><init>(Lcom/android/server/am/CacheOomRanker;)V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 154
    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 155
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 156
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mProfilerLock:Ljava/lang/Object;

    .line 157
    iput-object p2, p0, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    return-void
.end method

.method public static addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V
    .locals 4

    const/4 v0, 0x1

    .line 426
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 427
    aget-object v1, p0, v0

    iget v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    int-to-float v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 422
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    const/16 v0, 0x3e9

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 432
    const-string v0, "CacheOomRanker settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_oom_re_ranking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_number_to_re_rank="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_lru_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_uses_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_rss_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNumberToReRank()I
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public init(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 162
    const-string v0, "activity_manager"

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 164
    iget-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter p1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseOomReranking()V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateLruWeight()V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUsesWeight()V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssWeight()V

    .line 170
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 293
    iget-object v3, v0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v3

    .line 294
    :try_start_0
    iget v4, v0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 295
    iget v5, v0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 296
    iget v6, v0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 297
    iget v7, v0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    .line 298
    iget-boolean v8, v0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    .line 299
    iget-wide v9, v0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    .line 300
    iget-object v11, v0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    .line 301
    iget-object v12, v0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 302
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_11

    if-nez v12, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    if-ge v13, v2, :cond_2

    .line 313
    array-length v3, v12

    if-ge v14, v3, :cond_2

    .line 315
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 317
    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v17

    if-eqz v17, :cond_1

    move/from16 v17, v8

    .line 318
    aget-object v8, v12, v14

    iput-object v3, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 319
    iput v15, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 320
    aput v13, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    move/from16 v17, v8

    :goto_1
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v17

    goto :goto_0

    :cond_2
    move/from16 v17, v8

    move/from16 v3, v16

    :goto_2
    if-ge v13, v2, :cond_4

    if-ge v3, v7, :cond_4

    .line 330
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 331
    invoke-static {v8}, Lcom/android/server/am/CacheOomRanker;->appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    if-ge v3, v7, :cond_5

    sub-int/2addr v7, v3

    sub-int/2addr v14, v7

    if-gez v14, :cond_5

    move/from16 v14, v16

    :cond_5
    if-eqz v17, :cond_9

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move/from16 v7, v16

    :goto_3
    if-ge v7, v14, :cond_9

    .line 348
    aget-object v8, v12, v7

    .line 349
    iget-object v13, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 350
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCacheOomRankerRssTimeMs()J

    move-result-wide v18

    sub-long v18, v2, v18

    .line 351
    iget-object v13, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCacheOomRankerRss()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v13, v20, v22

    if-eqz v13, :cond_6

    cmp-long v13, v18, v9

    if-gez v13, :cond_6

    move-wide/from16 v19, v9

    move/from16 v18, v15

    goto :goto_4

    .line 356
    :cond_6
    iget-object v13, v0, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    move/from16 v18, v15

    iget-object v15, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v15

    invoke-interface {v13, v15}, Lcom/android/server/am/CacheOomRanker$ProcessDependencies;->getRss(I)[J

    move-result-object v13

    if-eqz v13, :cond_8

    .line 357
    array-length v15, v13

    if-nez v15, :cond_7

    goto :goto_5

    .line 366
    :cond_7
    iget-object v15, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-wide/from16 v19, v9

    aget-wide v9, v13, v16

    invoke-virtual {v15, v9, v10, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCacheOomRankerRss(JJ)V

    .line 367
    iget-object v8, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    aget-wide v9, v13, v16

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move/from16 v15, v18

    move-wide/from16 v9, v19

    goto :goto_3

    .line 358
    :cond_8
    :goto_5
    const-string v0, "OomAdjuster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process.getRss returned bad value, not re-ranking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {v13}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    move/from16 v18, v15

    cmpl-float v2, v4, v18

    if-lez v2, :cond_a

    .line 375
    sget-object v2, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

    move/from16 v3, v16

    invoke-static {v12, v3, v14, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 377
    invoke-static {v12, v4}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_6

    :cond_a
    move/from16 v3, v16

    :goto_6
    cmpl-float v2, v6, v18

    if-lez v2, :cond_c

    if-eqz v17, :cond_b

    .line 381
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v3, v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_7

    .line 383
    :cond_b
    iget-object v0, v0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_1
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v3, v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 385
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :goto_7
    invoke-static {v12, v6}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 385
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_c
    :goto_8
    cmpl-float v0, v5, v18

    if-lez v0, :cond_d

    .line 390
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {v12, v3, v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 391
    invoke-static {v12, v5}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    .line 395
    :goto_9
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v3, v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 398
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_10

    move v0, v3

    move v2, v0

    :goto_a
    if-ge v0, v14, :cond_10

    .line 401
    aget-object v4, v12, v0

    iget-object v4, v4, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    aget v5, v11, v0

    .line 402
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    if-eq v4, v5, :cond_f

    if-nez v2, :cond_e

    .line 404
    const-string v2, "OomAdjuster"

    const-string/jumbo v4, "reRankLruCachedApps"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 407
    :cond_e
    const-string v4, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  newPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v11, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v12, v0

    iget-object v6, v6, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    if-ge v3, v14, :cond_11

    .line 414
    aget v0, v11, v3

    aget-object v2, v12, v3

    iget-object v2, v2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    aget-object v0, v12, v3

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_11
    :goto_c
    return-void

    :catchall_1
    move-exception v0

    .line 302
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final updateLruWeight()V
    .locals 3

    .line 235
    const-string/jumbo v0, "oom_re_ranking_lru_weight"

    const v1, 0x3eb33333    # 0.35f

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    return-void
.end method

.method public final updateNumberToReRank()V
    .locals 5

    .line 190
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v0

    .line 191
    const-string/jumbo v1, "oom_re_ranking_number_to_re_rank"

    const/16 v2, 0x8

    const-string v3, "activity_manager"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 194
    new-array v0, v1, [Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 196
    new-instance v3, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;-><init>(Lcom/android/server/am/CacheOomRanker-IA;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    :cond_1
    return-void
.end method

.method public final updatePreserveTopNApps()V
    .locals 4

    .line 210
    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_preserve_top_n_apps"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found negative value for preserveTopNApps, setting to default: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v2, v0

    .line 218
    :goto_0
    iput v2, p0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    return-void
.end method

.method public final updateRssUpdateRateMs()V
    .locals 4

    .line 223
    const-string/jumbo v0, "oom_re_ranking_rss_update_rate_ms"

    const-wide/16 v1, 0x2710

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    return-void
.end method

.method public final updateRssWeight()V
    .locals 3

    .line 247
    const-string/jumbo v0, "oom_re_ranking_rss_weight"

    const v1, 0x3e19999a    # 0.15f

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    return-void
.end method

.method public final updateUseFrequentRss()V
    .locals 3

    .line 229
    const-string/jumbo v0, "oom_re_ranking_rss_use_frequent_rss"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    return-void
.end method

.method public final updateUseOomReranking()V
    .locals 3

    .line 184
    const-string/jumbo v0, "use_oom_re_ranking"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    return-void
.end method

.method public final updateUsesWeight()V
    .locals 3

    .line 241
    const-string/jumbo v0, "oom_re_ranking_uses_weight"

    const/high16 v1, 0x3f000000    # 0.5f

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    return-void
.end method

.method public useOomReranking()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
