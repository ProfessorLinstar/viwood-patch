.class public Lcom/android/server/people/data/UsageStatsQueryHelper;
.super Ljava/lang/Object;
.source "UsageStatsQueryHelper.java"


# instance fields
.field public final mConvoStartEvents:Ljava/util/Map;

.field public final mEventListener:Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;

.field public mLastEventTimestamp:J

.field public final mPackageDataGetter:Ljava/util/function/Function;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$6bCySXa5wmagIaqXkr4gJ-ju1TI(Ljava/lang/String;)Lcom/android/server/people/data/AppUsageStatsData;
    .locals 0

    .line 165
    new-instance p0, Lcom/android/server/people/data/AppUsageStatsData;

    invoke-direct {p0}, Lcom/android/server/people/data/AppUsageStatsData;-><init>()V

    return-object p0
.end method

.method public constructor <init>(ILjava/util/function/Function;Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    .line 60
    invoke-static {}, Lcom/android/server/people/data/UsageStatsQueryHelper;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 61
    iput p1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUserId:I

    .line 62
    iput-object p2, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mPackageDataGetter:Ljava/util/function/Function;

    .line 63
    iput-object p3, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;

    return-void
.end method

.method public static getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1

    .line 232
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method public static queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;
    .locals 8

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static {}, Lcom/android/server/people/data/UsageStatsQueryHelper;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v1

    const/16 v7, 0xa

    move v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/UsageStatsManagerInternal;->queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    new-instance p1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 139
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 140
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;
    .locals 8

    .line 154
    invoke-static {}, Lcom/android/server/people/data/UsageStatsQueryHelper;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v7, 0x0

    move v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object p0

    .line 157
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/UsageStats;

    .line 162
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 163
    invoke-interface {p5, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 164
    new-instance p4, Lcom/android/server/people/data/UsageStatsQueryHelper$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/android/server/people/data/UsageStatsQueryHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/people/data/AppUsageStatsData;

    .line 166
    iget-object p4, p2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-static {p4}, Lcom/android/server/people/data/UsageStatsQueryHelper;->sumChooserCounts(Landroid/util/ArrayMap;)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/android/server/people/data/AppUsageStatsData;->incrementChosenCountBy(I)V

    .line 167
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getAppLaunchCount()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/server/people/data/AppUsageStatsData;->incrementLaunchCountBy(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static sumChooserCounts(Landroid/util/ArrayMap;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 180
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    goto :goto_2

    .line 184
    :cond_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_2

    .line 186
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public final addEventByLocusId(Lcom/android/server/people/data/PackageData;Landroid/content/LocusId;Lcom/android/server/people/data/Event;)V
    .locals 3

    .line 221
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v1

    const/4 v2, 0x1

    .line 226
    invoke-virtual {p2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {v1, v2, p2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p2

    .line 227
    invoke-virtual {p2, p3}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;

    invoke-interface {p0, p1, v0, p3}, Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;->onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public final addEventByShortcutId(Lcom/android/server/people/data/PackageData;Ljava/lang/String;Lcom/android/server/people/data/Event;)V
    .locals 3

    .line 209
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p2

    .line 215
    invoke-virtual {p2, p3}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 216
    iget-object p0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;

    invoke-interface {p0, p1, v0, p3}, Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;->onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public getLastEventTimestamp()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    return-wide v0
.end method

.method public final onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V
    .locals 6

    .line 194
    new-instance v0, Landroid/content/ComponentName;

    .line 195
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 201
    new-instance p2, Lcom/android/server/people/data/Event$Builder;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    const/16 v5, 0xd

    invoke-direct {p2, v3, v4, v5}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 202
    invoke-virtual {p2, v1}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object p2

    .line 203
    invoke-virtual {p2}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object p2

    .line 204
    new-instance v1, Landroid/content/LocusId;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/people/data/UsageStatsQueryHelper;->addEventByLocusId(Lcom/android/server/people/data/PackageData;Landroid/content/LocusId;Lcom/android/server/people/data/Event;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public querySince(J)Z
    .locals 7

    .line 73
    iget-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUserId:I

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-wide v2, p1

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/UsageStatsManagerInternal;->queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 81
    invoke-virtual {p1, p2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 84
    iget-wide v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    .line 85
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mPackageDataGetter:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/PackageData;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_2

    .line 90
    :cond_1
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2

    const/16 v0, 0x17

    if-eq v3, v0, :cond_5

    const/16 v0, 0x18

    if-eq v3, v0, :cond_5

    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/people/data/UsageStatsQueryHelper;->onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V

    .line 97
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/content/LocusId;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    .line 99
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 101
    new-instance v1, Landroid/content/ComponentName;

    .line 102
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/server/people/data/Event;

    .line 93
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/people/data/Event;-><init>(JI)V

    .line 92
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/people/data/UsageStatsQueryHelper;->addEventByShortcutId(Lcom/android/server/people/data/PackageData;Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {p0, v1, p2}, Lcom/android/server/people/data/UsageStatsQueryHelper;->onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V

    :cond_6
    :goto_2
    move p2, v2

    goto/16 :goto_0

    :cond_7
    return p2
.end method
