.class public Lcom/android/server/net/watchlist/WatchlistLoggingHandler;
.super Landroid/os/Handler;
.source "WatchlistLoggingHandler.java"


# static fields
.field static final FORCE_REPORT_RECORDS_NOW_FOR_TEST_MSG:I = 0x3

.field static final LOG_WATCHLIST_EVENT_MSG:I = 0x1

.field public static final ONE_DAY_MS:J

.field static final REPORT_RECORDS_IF_NECESSARY_MSG:I = 0x2

.field public static final TAG:Ljava/lang/String; = "WatchlistLoggingHandler"


# instance fields
.field public final mApkHashCache:Lcom/android/server/net/watchlist/FileHashCache;

.field public final mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field public final mContext:Landroid/content/Context;

.field public final mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

.field public final mDropBoxManager:Landroid/os/DropBoxManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mPrimaryUserId:I

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;


# direct methods
.method public static synthetic $r8$lambda$3oa898EmmfbArBKuLLrphHZzvag(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;ILjava/lang/Integer;)[B
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->lambda$getDigestFromUid$0(ILjava/lang/Integer;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 96
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, -0x1

    .line 79
    iput p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 83
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    .line 100
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 101
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 102
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistSettings;->getInstance()Lcom/android/server/net/watchlist/WatchlistSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 103
    const-class p2, Landroid/os/DropBoxManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/DropBoxManager;

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 104
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result p2

    iput p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11102aa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Lcom/android/server/net/watchlist/FileHashCache;

    invoke-direct {p1, p0}, Lcom/android/server/net/watchlist/FileHashCache;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mApkHashCache:Lcom/android/server/net/watchlist/FileHashCache;

    .line 108
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "Using file hashes cache."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mApkHashCache:Lcom/android/server/net/watchlist/FileHashCache;

    return-void
.end method

.method public static getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 432
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 436
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 437
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 438
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 442
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getLastMidnightTime()J
    .locals 2

    const/4 v0, 0x0

    .line 446
    invoke-static {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getMidnightTimestamp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMidnightTimestamp(I)J
    .locals 3

    .line 450
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 452
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 453
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 454
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 455
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    neg-int p0, p0

    .line 456
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 457
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final addEncodedReportToDropBox([B)V
    .locals 2

    .line 328
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string/jumbo v0, "network_watchlist_report"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    return-void
.end method

.method public asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 197
    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string p1, "ipAddresses"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    const-string/jumbo p1, "uid"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string/jumbo p1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceReportWatchlistForTest(J)V
    .locals 1

    const/4 v0, 0x3

    .line 186
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 317
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 319
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    :cond_1
    iget-object p0, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 324
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final getDigestFromUid(I)[B
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final getPrimaryUserId()I
    .locals 1

    .line 150
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 151
    invoke-virtual {p0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 139
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "WatchlistLoggingHandler received an unknown of message."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 132
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    return-void

    .line 135
    :cond_1
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "Msg.obj needs to be a Long object."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_2
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getLastMidnightTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    return-void

    .line 118
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 119
    const-string v0, "host"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ipAddresses"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "uid"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v0, "timestamp"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v1, p0

    .line 119
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V

    return-void
.end method

.method public final handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V
    .locals 2

    .line 211
    iget v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 216
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 224
    invoke-virtual {p0, p3, p1, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)V

    return-void

    .line 226
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 228
    invoke-virtual {p0, p3, p1, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final insertRecord(ILjava/lang/String;J)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isPackageTestOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->insertNewRecord([BLjava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 249
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to insert record for uid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final isHostInWatchlist(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 402
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsDomain(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isIpInWatchlist(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 394
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsIp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageTestOnly(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 165
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    .line 166
    :cond_2
    :goto_0
    :try_start_1
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v0
.end method

.method public final synthetic lambda$getDigestFromUid$0(ILjava/lang/Integer;)[B
    .locals 8

    .line 338
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 340
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 341
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 343
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0xc0000

    invoke-virtual {v5, v4, v6, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 347
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 348
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find apkPath for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 351
    :cond_0
    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 354
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping incremental path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mApkHashCache:Lcom/android/server/net/watchlist/FileHashCache;

    if-eqz p0, :cond_2

    .line 358
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/FileHashCache;->getSha256Hash(Ljava/io/File;)[B

    move-result-object p0

    return-object p0

    .line 359
    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 361
    :goto_2
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get digest from uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",pkg: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v2
.end method

.method public reportWatchlistIfNecessary()V
    .locals 1

    const/4 v0, 0x2

    .line 181
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 416
    :cond_0
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 417
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 418
    invoke-virtual {p0, v3}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isHostInWatchlist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 381
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 382
    invoke-virtual {p0, v2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isIpInWatchlist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldReportNetworkWatchlist(J)Z
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_watchlist_last_report_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 257
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p2, "Last report time is larger than current time, reset report"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z

    return v3

    .line 261
    :cond_0
    sget-wide v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    add-long/2addr v0, v4

    cmp-long p0, p1, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3
.end method

.method public final tryAggregateRecords(J)V
    .locals 8

    .line 265
    const-string v0, "Milliseconds spent on tryAggregateRecords(): "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 268
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->shouldReportNetworkWatchlist(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "No need to aggregate record yet."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 272
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Start aggregating watchlist records."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-eqz v4, :cond_2

    const-string/jumbo v5, "network_watchlist_report"

    invoke-virtual {v4, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 274
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "network_watchlist_last_report_time"

    invoke-static {v4, v5, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 277
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 278
    invoke-virtual {v4, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    move-result-object v4

    if-nez v4, :cond_1

    .line 280
    const-string p0, "Cannot get result from database"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v1

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 285
    :cond_1
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;

    move-result-object v5

    .line 286
    iget-object v6, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    invoke-virtual {v6}, Lcom/android/server/net/watchlist/WatchlistSettings;->getPrivacySecretKey()[B

    move-result-object v6

    .line 287
    iget-object v7, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-static {v7, v6, v5, v4}, Lcom/android/server/net/watchlist/ReportEncoder;->encodeWatchlistReport(Lcom/android/server/net/watchlist/WatchlistConfig;[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)[B

    move-result-object v4

    if-eqz v4, :cond_3

    .line 290
    invoke-virtual {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->addEncodedReportToDropBox([B)V

    goto :goto_0

    .line 293
    :cond_2
    const-string v4, "Network Watchlist dropbox tag is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v1

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 297
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 298
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    throw p0
.end method
