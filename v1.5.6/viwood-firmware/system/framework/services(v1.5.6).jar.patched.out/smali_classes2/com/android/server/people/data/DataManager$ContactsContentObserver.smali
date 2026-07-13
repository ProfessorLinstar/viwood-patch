.class public Lcom/android/server/people/data/DataManager$ContactsContentObserver;
.super Landroid/database/ContentObserver;
.source "DataManager.java"


# instance fields
.field public mLastUpdatedTimestamp:J

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public static synthetic $r8$lambda$AZngOIwnfGkCFeQQDy9lYe3gaGg(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/PackageData;)V
    .locals 1

    .line 990
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationStore;->getConversationByContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 993
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fputmConversationStore(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationStore;)V

    .line 994
    invoke-static {p1, p0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fputmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationInfo;)V

    .line 995
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fputmPackageName(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 971
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3

    .line 977
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {p2}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/people/data/DataManager$Injector;->createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;

    move-result-object p1

    .line 978
    iget-wide v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    invoke-virtual {p1, v0, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->querySince(J)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/people/data/ContactsQueryHelper;->getContactUri()Landroid/net/Uri;

    move-result-object p2

    .line 983
    new-instance v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;-><init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;Lcom/android/server/people/data/DataManager-IA;)V

    .line 984
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1, p3}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetUnlockedUserData(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 988
    :cond_1
    new-instance v2, Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;-><init>(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)V

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 998
    invoke-static {v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fgetmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    .line 1002
    :cond_2
    new-instance p2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fgetmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1004
    invoke-virtual {p1}, Lcom/android/server/people/data/ContactsQueryHelper;->isStarred()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1005
    invoke-virtual {p1}, Lcom/android/server/people/data/ContactsQueryHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1006
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fgetmConversationStore(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    .line 1007
    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p2

    invoke-static {v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fgetmPackageName(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    invoke-virtual {v1, v2, p2, v0, p3}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 1009
    invoke-virtual {p1}, Lcom/android/server/people/data/ContactsQueryHelper;->getLastUpdatedTimestamp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    return-void
.end method
