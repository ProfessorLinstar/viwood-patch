.class public Lcom/android/server/people/data/PackageData;
.super Ljava/lang/Object;
.source "PackageData.java"


# instance fields
.field public final mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field public final mEventStore:Lcom/android/server/people/data/EventStore;

.field public final mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

.field public final mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

.field public final mPackageDataDir:Ljava/io/File;

.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$2gC3ee-TK2KfMp_EW5yogGMyV_s(Lcom/android/server/people/data/PackageData;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YMvpBQv5v3uJmd8CHNi5xr6vnIM(Lcom/android/server/people/data/PackageData;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ch76XIACNEe4stFyvA7XHBlp3Z0(Lcom/android/server/people/data/PackageData;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tL10daRE2Q0FbmDSU2PXhKJD0JM(Lcom/android/server/people/data/PackageData;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 68
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    .line 69
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 71
    new-instance p1, Lcom/android/server/people/data/ConversationStore;

    invoke-direct {p1, p2, p5}, Lcom/android/server/people/data/ConversationStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 72
    new-instance p1, Lcom/android/server/people/data/EventStore;

    invoke-direct {p1, p2, p5}, Lcom/android/server/people/data/EventStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 73
    iput-object p3, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    .line 74
    iput-object p4, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    return-void
.end method

.method public static packagesDataFromDisk(ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)Ljava/util/Map;
    .locals 12

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 89
    new-instance v1, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda2;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v8, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    array-length v9, v1

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v1, v10

    .line 94
    new-instance v2, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    .line 97
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->loadFromDisk()V

    .line 98
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, p4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public deleteDataForConversation(Ljava/lang/String;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->deleteConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    iget-object p1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 225
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 224
    invoke-virtual {p1, v2, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 227
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public forAllConversations(Ljava/util/function/Consumer;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getClassLevelEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 192
    :cond_0
    new-instance p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {p0}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    return-object p0
.end method

.method public getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getConversationStore()Lcom/android/server/people/data/ConversationStore;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object p0
.end method

.method public getEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .locals 4

    .line 144
    new-instance v0, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {v0}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v1, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 157
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x1

    .line 160
    invoke-virtual {p1}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {v2, v3, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 166
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 181
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    :cond_5
    :goto_0
    return-object v0
.end method

.method public getEventStore()Lcom/android/server/people/data/EventStore;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    return p0
.end method

.method public isDefaultDialer()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDefaultSmsApp()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$pruneOrphanEvents$0(Ljava/lang/String;)Z
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$pruneOrphanEvents$1(Ljava/lang/String;)Z
    .locals 1

    .line 243
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    new-instance v0, Landroid/content/LocusId;

    invoke-direct {v0, p1}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$pruneOrphanEvents$2(Ljava/lang/String;)Z
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$pruneOrphanEvents$3(Ljava/lang/String;)Z
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadFromDisk()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->loadConversationsFromDisk()V

    .line 105
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {p0}, Lcom/android/server/people/data/EventStore;->loadFromDisk()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->onDestroy()V

    .line 257
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    return-void
.end method

.method public pruneOrphanEvents()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    :cond_1
    return-void
.end method

.method public saveToDisk()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->saveConversationsToDisk()V

    .line 111
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {p0}, Lcom/android/server/people/data/EventStore;->saveToDisk()V

    return-void
.end method
