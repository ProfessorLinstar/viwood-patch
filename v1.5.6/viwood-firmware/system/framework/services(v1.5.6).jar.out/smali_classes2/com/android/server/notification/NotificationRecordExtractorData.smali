.class public final Lcom/android/server/notification/NotificationRecordExtractorData;
.super Ljava/lang/Object;
.source "NotificationRecordExtractorData.java"


# instance fields
.field public final mAllowBubble:Z

.field public final mChannel:Landroid/app/NotificationChannel;

.field public final mGroupKey:Ljava/lang/String;

.field public final mImportance:I

.field public final mIsBubble:Z

.field public final mIsConversation:Z

.field public final mOverridePeople:Ljava/util/ArrayList;

.field public final mPosition:I

.field public final mProposedImportance:I

.field public final mRankingScore:F

.field public final mSensitiveContent:Z

.field public final mShowBadge:Z

.field public final mSmartReplies:Ljava/util/ArrayList;

.field public final mSnoozeCriteria:Ljava/util/ArrayList;

.field public final mSummarization:Ljava/lang/String;

.field public final mSuppressVisually:Ljava/lang/Integer;

.field public final mSystemSmartActions:Ljava/util/ArrayList;

.field public final mUserSentiment:Ljava/lang/Integer;

.field public final mVisibility:I


# direct methods
.method public constructor <init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZIZLjava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    .line 61
    iput p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mVisibility:I

    .line 62
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mShowBadge:Z

    .line 63
    iput-boolean p4, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mAllowBubble:Z

    .line 64
    iput-boolean p5, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsBubble:Z

    .line 65
    iput-object p6, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 66
    iput-object p7, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 67
    iput-object p8, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 68
    iput-object p9, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 69
    iput-object p10, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 70
    iput-object p11, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    .line 71
    iput-object p12, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 72
    iput-object p13, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 73
    iput p14, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    .line 74
    iput p15, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mRankingScore:F

    move/from16 p1, p16

    .line 75
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsConversation:Z

    move/from16 p1, p17

    .line 76
    iput p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    move/from16 p1, p18

    .line 77
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    move-object/from16 p1, p19

    .line 78
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSummarization:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    .line 120
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mRankingScore:F

    .line 121
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->rankingScoreMatches(F)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsConversation:Z

    .line 122
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    .line 123
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getProposedImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    .line 124
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSummarization:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSummarization()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mVisibility:I

    .line 85
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mShowBadge:Z

    .line 86
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mAllowBubble:Z

    .line 87
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsBubble:Z

    .line 88
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 89
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 93
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    .line 94
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    .line 97
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    .line 98
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getProposedImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    .line 99
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSummarization:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSummarization()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
