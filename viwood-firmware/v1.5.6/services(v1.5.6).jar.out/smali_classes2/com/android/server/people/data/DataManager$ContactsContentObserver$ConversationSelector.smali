.class public Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
.super Ljava/lang/Object;
.source "DataManager.java"


# instance fields
.field public mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field public mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConversationStore(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationStore;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConversationStore(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationStore;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPackageName(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1013
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 1014
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 1015
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;Lcom/android/server/people/data/DataManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;-><init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;)V

    return-void
.end method
