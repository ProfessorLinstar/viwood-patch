.class public Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;
.super Landroid/database/ContentObserver;
.source "DataManager.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public mLastMmsTimestamp:J

.field public mLastSmsTimestamp:J

.field public final mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

.field public final mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public static synthetic $r8$lambda$gPCsaa6UyBV5WGttQd4CMd8gHVk(Ljava/lang/String;Lcom/android/server/people/data/Event;Lcom/android/server/people/data/UserData;)V
    .locals 1

    .line 1088
    invoke-virtual {p2}, Lcom/android/server/people/data/UserData;->getDefaultSmsApp()Lcom/android/server/people/data/PackageData;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1092
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 1093
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p2

    const/4 v0, 0x3

    .line 1097
    invoke-virtual {p2, v0, p0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    .line 1098
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 2

    .line 1067
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 1068
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1069
    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/server/people/data/DataManager$Injector;->createMmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/MmsQueryHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    .line 1070
    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/android/server/people/data/DataManager$Injector;->createSmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/SmsQueryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    .line 1072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x493e0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1058
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/people/data/Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->accept(Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Lcom/android/server/people/data/Event;)V
    .locals 1

    .line 1087
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    invoke-static {p0, v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    .line 1077
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    iget-wide v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    invoke-virtual {p1, v0, v1}, Lcom/android/server/people/data/MmsQueryHelper;->querySince(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1078
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    invoke-virtual {p1}, Lcom/android/server/people/data/MmsQueryHelper;->getLastMessageTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    .line 1080
    :cond_0
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    iget-wide v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    invoke-virtual {p1, v0, v1}, Lcom/android/server/people/data/SmsQueryHelper;->querySince(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1081
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    invoke-virtual {p1}, Lcom/android/server/people/data/SmsQueryHelper;->getLastMessageTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    :cond_1
    return-void
.end method
