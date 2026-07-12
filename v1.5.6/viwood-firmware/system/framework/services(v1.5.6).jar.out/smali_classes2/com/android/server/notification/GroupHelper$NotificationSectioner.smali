.class public Lcom/android/server/notification/GroupHelper$NotificationSectioner;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mSectionChecker:Ljava/util/function/Predicate;

.field public final mSummaryId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2001
    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    .line 2002
    iput p2, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    .line 2003
    iput-object p3, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;)V

    return-void
.end method


# virtual methods
.method public isInSection(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 2007
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isNotificationGroupable(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNotificationGroupable(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4

    .line 2012
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 2017
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 2018
    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2019
    invoke-virtual {p0}, Landroid/app/Notification;->isColorized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2020
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    if-le v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2021
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v3

    if-le v3, v2, :cond_2

    const-class v3, Landroid/app/Notification$CallStyle;

    .line 2022
    invoke-virtual {p0, v3}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-nez v1, :cond_5

    if-eqz p0, :cond_3

    goto :goto_2

    .line 2027
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v0
.end method
