.class public Lcom/android/server/people/data/DataManager$CallLogContentObserver;
.super Landroid/database/ContentObserver;
.source "DataManager.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

.field public mLastCallTimestamp:J

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public static synthetic $r8$lambda$A-XVhvCIW8ISB4inr1p1K7MaffE(Ljava/lang/String;Lcom/android/server/people/data/Event;Lcom/android/server/people/data/UserData;)V
    .locals 1

    .line 1042
    invoke-virtual {p2}, Lcom/android/server/people/data/UserData;->getDefaultDialer()Lcom/android/server/people/data/PackageData;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 1047
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1050
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p2

    const/4 v0, 0x2

    .line 1051
    invoke-virtual {p2, v0, p0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    .line 1052
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 2

    .line 1026
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 1027
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1028
    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/android/server/people/data/DataManager$Injector;->createCallLogQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/CallLogQueryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x493e0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1020
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/people/data/Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->accept(Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Lcom/android/server/people/data/Event;)V
    .locals 1

    .line 1041
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v0, Lcom/android/server/people/data/DataManager$CallLogContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/people/data/DataManager$CallLogContentObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    invoke-static {p0, v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    .line 1034
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    iget-wide v0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    invoke-virtual {p1, v0, v1}, Lcom/android/server/people/data/CallLogQueryHelper;->querySince(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1035
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    invoke-virtual {p1}, Lcom/android/server/people/data/CallLogQueryHelper;->getLastCallTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    :cond_0
    return-void
.end method
