.class public Lcom/android/server/people/data/ConversationInfo$Builder;
.super Ljava/lang/Object;
.source "ConversationInfo.java"


# instance fields
.field public mContactPhoneNumber:Ljava/lang/String;

.field public mContactUri:Landroid/net/Uri;

.field public mConversationFlags:I

.field public mCreationTimestamp:J

.field public mCurrStatuses:Ljava/util/Map;

.field public mLastEventTimestamp:J

.field public mLocusId:Landroid/content/LocusId;

.field public mNotificationChannelId:Ljava/lang/String;

.field public mParentNotificationChannelId:Ljava/lang/String;

.field public mShortcutFlags:I

.field public mShortcutId:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContactPhoneNumber(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContactUri(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConversationFlags(Lcom/android/server/people/data/ConversationInfo$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCreationTimestamp(Lcom/android/server/people/data/ConversationInfo$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCreationTimestamp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrStatuses(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastEventTimestamp(Lcom/android/server/people/data/ConversationInfo$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocusId(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/content/LocusId;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationChannelId(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmParentNotificationChannelId(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutFlags(Lcom/android/server/people/data/ConversationInfo$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutId(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/ConversationInfo;)V
    .locals 2

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    .line 536
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 537
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmShortcutId(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    goto :goto_0

    .line 539
    :cond_0
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmShortcutId(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 541
    :goto_0
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmLocusId(Lcom/android/server/people/data/ConversationInfo;)Landroid/content/LocusId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    .line 542
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmContactUri(Lcom/android/server/people/data/ConversationInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    .line 543
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmContactPhoneNumber(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    .line 544
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmNotificationChannelId(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    .line 545
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmParentNotificationChannelId(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    .line 546
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmLastEventTimestamp(Lcom/android/server/people/data/ConversationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    .line 547
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmCreationTimestamp(Lcom/android/server/people/data/ConversationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCreationTimestamp:J

    .line 548
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmShortcutFlags(Lcom/android/server/people/data/ConversationInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    .line 549
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmConversationFlags(Lcom/android/server/people/data/ConversationInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 550
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->-$$Nest$fgetmCurrStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    .line 640
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return-object p0
.end method

.method public addOrUpdateStatus(Landroid/app/people/ConversationStatus;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/android/server/people/data/ConversationInfo;
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    new-instance v0, Lcom/android/server/people/data/ConversationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/people/data/ConversationInfo;-><init>(Lcom/android/server/people/data/ConversationInfo$Builder;Lcom/android/server/people/data/ConversationInfo-IA;)V

    return-object v0
.end method

.method public clearStatus(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    .line 645
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return-object p0
.end method

.method public setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/4 v0, 0x4

    .line 612
    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/16 v0, 0x20

    .line 628
    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    if-eqz p2, :cond_0

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->addConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0

    .line 635
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->removeConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 599
    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return-object p0
.end method

.method public setCreationTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 589
    iput-wide p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCreationTimestamp:J

    return-object p0
.end method

.method public setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/16 v0, 0x40

    .line 616
    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 604
    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 584
    iput-wide p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    return-object p0
.end method

.method public setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method public setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 608
    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setPersonBot(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/16 v0, 0x10

    .line 624
    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPersonImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/16 v0, 0x8

    .line 620
    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 594
    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 652
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/people/ConversationStatus;

    .line 653
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method
