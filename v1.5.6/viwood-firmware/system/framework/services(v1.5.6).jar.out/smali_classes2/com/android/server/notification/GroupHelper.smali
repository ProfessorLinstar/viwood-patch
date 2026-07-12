.class public Lcom/android/server/notification/GroupHelper;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# static fields
.field public static final DEBUG:Z

.field public static NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

.field public static NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;


# instance fields
.field public final mAggregatedNotifications:Landroid/util/ArrayMap;

.field public final mAutoGroupAtCount:I

.field public final mAutogroupSparseGroupsAtCount:I

.field public final mCallback:Lcom/android/server/notification/GroupHelper$Callback;

.field public final mCanceledSummaries:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mIsTestHarnessExempted:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

.field public final mUngroupedNotifications:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$5GuZJuBrqC7Uv5BlklHQ1ANK7Ww(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.recs"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Jb-alKhUHC8ZHo9uONB6z9BQH8c(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.social"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$JdYLtF53zID3brZQfa8kkolVAnU(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.news"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$K83IKWLoiP7DqU6rpnWA1TZSGYo(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$NegTJpaY8GjhZifLja121BHRtBU(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.promotions"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$SF_u8Ke9E7EQKKb2n2VmK1AfF4M(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "GroupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    .line 150
    invoke-static {}, Lcom/android/server/notification/GroupHelper;->getNotificationShadeSections()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/android/server/notification/GroupHelper$Callback;)V
    .locals 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 206
    iput p3, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 207
    iput-object p5, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 208
    iput-object p1, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 210
    iput p4, p0, Lcom/android/server/notification/GroupHelper;->mAutogroupSparseGroupsAtCount:I

    .line 211
    invoke-static {}, Lcom/android/server/notification/GroupHelper;->getNotificationShadeSections()Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    return-void
.end method

.method public static getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;)I"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 227
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 229
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v1

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 230
    iget v5, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    invoke-static {v5, v4}, Lcom/android/server/notification/GroupHelper;->hasAnyFlag(II)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 233
    :cond_2
    iget v4, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    const/16 v5, 0x22

    invoke-static {v4, v5}, Lcom/android/server/notification/GroupHelper;->hasAnyFlag(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    iget v3, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    move v1, v4

    :cond_4
    or-int/lit16 p0, v1, 0x700

    or-int/2addr p0, v2

    return p0
.end method

.method public static getFullAggregateGroupKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 3

    .line 1531
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1532
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    invoke-virtual {v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationShadeSections()Ljava/util/List;
    .locals 9

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v2, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "PromotionsSection"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v3, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda1;-><init>()V

    const-string v6, "SocialSection"

    invoke-direct {v2, v6, v4, v3, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v6, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda2;-><init>()V

    const-string v7, "NewsSection"

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v6, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v7, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda3;-><init>()V

    const-string v8, "RecsSection"

    invoke-direct {v6, v8, v4, v7, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-static {v1, v2, v3, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    .line 196
    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v2, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "AlertingSection"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v3, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda5;-><init>()V

    const-string v4, "SilentSection"

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6, v3, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I
    .locals 3

    .line 1580
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1581
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1582
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1587
    :cond_1
    sget-boolean p1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 1588
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNumChildrenForGroup "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " numChild: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .locals 3

    .line 1927
    sget-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    .line 1928
    invoke-virtual {v1, p0}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isInSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasAnyFlag(II)Z
    .locals 0

    .line 0
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 1536
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isGroupChildWithoutSummary(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z
    .locals 3

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1609
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 1611
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1615
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 1619
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z
    .locals 3

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1596
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    .line 1599
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1603
    :cond_0
    invoke-static {v1, p1}, Lcom/android/server/notification/GroupHelper;->getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V
    .locals 12

    .line 867
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 868
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/util/ArrayMap;

    .line 870
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 871
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v6

    .line 872
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 873
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v8, v1, Landroid/app/Notification;->color:I

    .line 874
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v9, v1, Landroid/app/Notification;->visibility:I

    .line 875
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v10

    .line 876
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 870
    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 881
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 882
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 883
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 884
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    const-string v2, "GroupHelper"

    if-lt v0, v1, :cond_2

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found >="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ungrouped notifications => force grouping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 888
    :cond_2
    const-string v0, "Found aggregate summary => force grouping"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    iget v6, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper;->aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V

    return-void
.end method

.method public final aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V
    .locals 2

    .line 1630
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1631
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1632
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 1633
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 1639
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1640
    iget-object p4, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x1

    invoke-interface {p4, p3, p5, v0}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1644
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V
    .locals 7

    .line 1813
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 1814
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1815
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1816
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    .line 1817
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1818
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    .line 1819
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1820
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v6, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper$CachedSummary;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1815
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1953
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1954
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ungrouped notifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1957
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1958
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1960
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1961
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1960
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1962
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 1966
    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Autogrouped notifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1972
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1973
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1980
    :cond_4
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1983
    :cond_5
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cached canceled summaries:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetkey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1989
    :cond_6
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public findCanceledSummary(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/GroupHelper$CachedSummary;
    .locals 3

    .line 1857
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1858
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v2

    if-ne p4, v2, :cond_0

    .line 1859
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz v1, :cond_0

    .line 1860
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetid(Lcom/android/server/notification/GroupHelper$CachedSummary;)I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgettag(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;
    .locals 1

    .line 1872
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p4, p1, p5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz p0, :cond_0

    .line 1875
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetid(Lcom/android/server/notification/GroupHelper$CachedSummary;)I

    move-result p1

    if-ne p1, p3, :cond_0

    invoke-static {p0}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgettag(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .locals 15

    .line 466
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v5, v1

    move v4, v2

    move v6, v4

    move v7, v6

    move v12, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    if-nez v5, :cond_1

    .line 469
    iget-object v5, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_1

    .line 471
    :cond_1
    iget-object v9, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v9

    if-nez v9, :cond_2

    move v4, v3

    :cond_2
    :goto_1
    if-ne v7, v2, :cond_3

    .line 477
    iget v7, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    goto :goto_2

    .line 479
    :cond_3
    iget v9, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    if-eq v7, v9, :cond_4

    move v6, v3

    .line 484
    :cond_4
    :goto_2
    iget v8, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    if-ne v8, v2, :cond_0

    move v12, v2

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    .line 489
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/GroupHelper;->getMonochromeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    :cond_6
    move-object v10, v5

    if-nez v6, :cond_7

    move v11, v3

    goto :goto_3

    :cond_7
    move v11, v7

    .line 498
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 499
    iget v0, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    :cond_9
    move v13, v2

    .line 505
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    move-object/from16 p0, p2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    :cond_a
    move-object v14, v1

    .line 507
    new-instance v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    return-object v8
.end method

.method public final getAutogroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 9

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 1308
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1310
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1312
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1313
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 1314
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_1

    goto :goto_0

    .line 1320
    :cond_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1321
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1323
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-static {v5}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 1327
    :cond_3
    new-instance v6, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v6, p1, p2, v5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1329
    invoke-virtual {v2, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1330
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 1331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Change section on channel update: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "GroupHelper"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_4
    new-instance v5, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    .line 1334
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    const/4 v8, 0x0

    invoke-direct {v5, v7, v2, v6, v8}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    .line 1333
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public getMonochromeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 4

    const/4 v0, 0x0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 555
    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_0

    .line 556
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 557
    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 558
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result v1

    .line 559
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v2

    const/high16 v3, -0x40000000    # -2.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    .line 557
    invoke-static {p1, v1, v3, v2}, Landroid/graphics/drawable/Icon;->createWithResourceAdaptiveDrawable(Ljava/lang/String;IZF)Landroid/graphics/drawable/Icon;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 563
    const-string v1, "GroupHelper"

    const-string v2, "Failed to getApplicationIcon() in getMonochromeAppIcon()"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 568
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    const p1, 0x1080597

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public final getNumChildrenForGroupWithSection(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)I
    .locals 3

    .line 1788
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "GroupHelper"

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1789
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1790
    invoke-static {v0}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eq v2, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1792
    :cond_2
    :goto_1
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 1793
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNumChildrenForGroupWithSection skip because invalid section: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " r: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, -0x1

    return p0

    .line 1804
    :cond_4
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_5

    .line 1805
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getNumChildrenForGroupWithSection "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " numChild: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return p2
.end method

.method public final getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .locals 4

    .line 1020
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1021
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1024
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1025
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1026
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1031
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1032
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1033
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    monitor-exit v0

    return-object p0

    .line 1036
    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .locals 1

    .line 1003
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1005
    invoke-static {p1, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p0

    return-object p0

    .line 1007
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p0

    return-object p0
.end method

.method public getSparseGroups(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 1756
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1757
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-eqz v1, :cond_0

    .line 1758
    invoke-virtual {p4, v1}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isInSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1759
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1760
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1761
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1762
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1763
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p4}, Lcom/android/server/notification/GroupHelper;->getNumChildrenForGroupWithSection(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1766
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getSummaryAttributes(Ljava/lang/String;Landroid/util/ArrayMap;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .locals 7

    .line 535
    invoke-static {p2}, Lcom/android/server/notification/GroupHelper;->getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I

    move-result v1

    .line 537
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object p0

    .line 538
    new-instance v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iget v4, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v5, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    iget-object v6, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    return-object v0
.end method

.method public final getUngroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 10

    .line 1348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1352
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 1353
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1354
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1356
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1357
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 1358
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_1

    goto :goto_0

    .line 1364
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1365
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1366
    invoke-virtual {p3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-eqz v6, :cond_2

    .line 1369
    invoke-static {v6}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 1373
    :cond_3
    new-instance v8, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v8, p1, p2, v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1375
    invoke-virtual {v2, v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1376
    sget-boolean v7, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 1377
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Change ungrouped section: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "GroupHelper"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_4
    new-instance v7, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    const/4 v9, 0x0

    invoke-direct {v7, v6, v2, v8, v9}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    invoke-virtual {p3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1388
    :cond_5
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public final groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 1680
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/server/notification/GroupHelper;->getSparseGroups(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1682
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iget v6, v0, Lcom/android/server/notification/GroupHelper;->mAutogroupSparseGroupsAtCount:I

    if-lt v5, v6, :cond_9

    .line 1683
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    const-string v6, "GroupHelper"

    if-eqz v5, :cond_0

    .line 1684
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aggregate sparse groups for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Section: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1684
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_0
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1690
    invoke-virtual {v5, v4, v7}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1692
    iget-object v7, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 1693
    invoke-virtual {v7, v4, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 1694
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 1696
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1698
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 1700
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .line 1702
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1704
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1705
    sget-boolean v12, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v12, :cond_2

    .line 1706
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Aggregate notification (sparse group): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_2
    iget-object v12, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14, v9}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1709
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 1710
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v14

    .line 1711
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->color:I

    move-object/from16 p1, v2

    .line 1712
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->visibility:I

    .line 1713
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v18

    .line 1714
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v19

    move/from16 v17, v2

    move/from16 v16, v9

    invoke-direct/range {v13 .. v19}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 1709
    invoke-virtual {v7, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v10, :cond_3

    .line 1718
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    :cond_3
    :goto_2
    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 p1, v2

    .line 1720
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1722
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove app summary (sparse group): "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_5
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/android/server/notification/GroupHelper$Callback;->removeAppProvidedSummary(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v0, v11}, Lcom/android/server/notification/GroupHelper;->cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_2

    :cond_6
    move-object/from16 p1, v2

    .line 1730
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1731
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 1732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aggregate ungrouped (sparse group): "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_7
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v2, v9, v12, v13}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1735
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual {v7, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v2, p1

    move v9, v13

    goto/16 :goto_1

    .line 1740
    :cond_8
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    iget v1, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    invoke-virtual {v0, v4, v10, v8, v1}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 1746
    iget-object v0, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public isUpdateForCanceledSummary(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 9

    .line 1890
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1891
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1893
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    .line 1894
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 1892
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 1895
    :cond_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 1897
    :cond_1
    monitor-exit v1

    return v2

    .line 1898
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public maybeCancelGroupChildrenForCanceledSummary(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3

    .line 1913
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1914
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1916
    sget-boolean p3, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p3, :cond_0

    .line 1917
    const-string p3, "GroupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found cached summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetkey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1919
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {p2}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p4, p1, v1, p5}, Lcom/android/server/notification/GroupHelper$Callback;->removeNotificationFromCanceledGroup(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1921
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/server/notification/GroupHelper;->removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V

    .line 1923
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeClearCanceledSummariesCache(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Z)V
    .locals 3

    .line 1827
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object p3, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz p3, :cond_3

    .line 1832
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try removing cached summary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1838
    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1839
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1840
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1846
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V

    if-eqz p5, :cond_3

    .line 1847
    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetdeleteIntent(Lcom/android/server/notification/GroupHelper$CachedSummary;)Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1848
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetdeleteIntent(Lcom/android/server/notification/GroupHelper$CachedSummary;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/GroupHelper$Callback;->sendAppProvidedSummaryDeleteIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V

    :cond_3
    return-void
.end method

.method public final maybeGroupWithSections(Lcom/android/server/notification/NotificationRecord;Z)Z
    .locals 13

    .line 587
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 589
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnNonGroupableUpdate(Lcom/android/server/notification/NotificationRecord;)V

    .line 592
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 593
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping autogrouping for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 598
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 599
    new-instance v3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 600
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-direct {v3, v4, v0, v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 604
    invoke-virtual {v3, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 605
    sget-boolean v4, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 606
    const-string v4, "GroupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Section changed for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnSectionChanged(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    .line 612
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 615
    :cond_4
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 617
    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 618
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 619
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v7

    .line 620
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 621
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->color:I

    .line 622
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->visibility:I

    .line 623
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v11

    .line 624
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 618
    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v5, v6, :cond_5

    if-eqz p2, :cond_a

    .line 629
    :cond_5
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 630
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-lt v5, v6, :cond_6

    .line 631
    const-string v5, "GroupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found >="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ungrouped notifications => force grouping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 635
    :cond_6
    const-string v5, "GroupHelper"

    const-string v6, "Found aggregate summary => force grouping"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_7
    :goto_0
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 640
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 641
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 642
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    iget v1, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    invoke-virtual {p0, v3, v5, p2, v1}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 649
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_8

    move v2, v5

    goto :goto_1

    .line 655
    :cond_8
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v0, v6, v5}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 664
    :cond_9
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_a
    monitor-exit v4

    return v2

    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeUngroupOnAppGrouped(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 699
    invoke-virtual {v1, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 700
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Section changed for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GroupHelper"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 706
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    return-void
.end method

.method public final maybeUngroupOnNonGroupableUpdate(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    return-void
.end method

.method public final maybeUngroupOnSectionChanged(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .locals 0

    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    .line 686
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 687
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .locals 9

    if-nez p2, :cond_1

    .line 725
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 726
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping maybeUngroupWithSections for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    .line 736
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 739
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 740
    invoke-virtual {v4, p2, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 741
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 745
    invoke-virtual {v4, p2, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 747
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 748
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 752
    const-string v6, "GroupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "maybeUngroup removeAutoGroup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 755
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroup(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v5, :cond_3

    .line 759
    const-string p1, "GroupHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aggregate group is empty: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 762
    invoke-virtual {p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-interface {p1, v2, v1, v0}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 766
    const-string p1, "GroupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aggregate group not empty, updating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_5
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 772
    :cond_6
    :goto_1
    monitor-exit v3

    return-void

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1402
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 1406
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1408
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    .line 1409
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetrecord(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    .line 1410
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetoldGroup(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v4

    .line 1411
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetnewGroup(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v2

    .line 1413
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moveNotificationToNewSection: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " regroupingReason: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "GroupHelper"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1422
    iget-object v8, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 1423
    invoke-virtual {v8, v4, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 1425
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget-object v9, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1431
    new-instance v8, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-direct {v8, v4, v3, v5}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;-><init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_0

    .line 1453
    iget-object v4, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 1454
    invoke-virtual {v4, v2, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1456
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    .line 1457
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 1458
    invoke-virtual {v5, v2, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1460
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 1461
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v10

    .line 1462
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 1463
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->color:I

    .line 1464
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget v13, v13, Landroid/app/Notification;->visibility:I

    .line 1465
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v14

    .line 1466
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v9 .. v15}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 1460
    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    iget-object v8, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1469
    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1473
    new-instance v5, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;-><init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v6, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1481
    :cond_3
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1482
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1483
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1484
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 1485
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1487
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-static {v4}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->-$$Nest$fgetrecord(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v4

    .line 1488
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-static {v5}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->-$$Nest$fgethasSummary(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Z

    move-result v5

    .line 1490
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    iget v9, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v8, v9, :cond_4

    if-eqz v5, :cond_5

    .line 1491
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    move/from16 v8, p1

    move-object/from16 v9, p2

    goto :goto_3

    .line 1500
    :cond_5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    .line 1501
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-interface {v2, v8, v9, v3}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 1502
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move/from16 v8, p1

    move-object/from16 v9, p2

    goto :goto_4

    .line 1492
    :goto_3
    invoke-static {v4}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 1496
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    iget v2, v2, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    move/from16 v16, v5

    move v5, v2

    move-object v2, v4

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/GroupHelper;->aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V

    :goto_4
    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_8
    return-void
.end method

.method public onChannelUpdated(ILjava/lang/String;Landroid/app/NotificationChannel;Ljava/util/List;Landroid/util/ArrayMap;)V
    .locals 5

    .line 1167
    iget-object p5, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter p5

    .line 1168
    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1169
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1170
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1171
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1172
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1173
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1174
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1188
    :cond_1
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 1189
    monitor-exit p5

    return-void

    :goto_1
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onChannelUpdated(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5

    .line 1202
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1203
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1204
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1206
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 1209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onGroupSummaryAdded(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)V
    .locals 5

    .line 1117
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 1118
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1119
    :try_start_0
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1121
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onGroupSummaryAdded "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": no valid section found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1125
    :cond_0
    invoke-static {p1, v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p1

    .line 1127
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1128
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1130
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1133
    monitor-exit v1

    return-void

    .line 1139
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 1140
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1141
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1142
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1143
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1146
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onGroupedNotificationRemovedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V
    .locals 8

    .line 1055
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1056
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1060
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 1064
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 1068
    :cond_2
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1070
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_7

    .line 1071
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping autogrouping for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1077
    :cond_3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1078
    new-instance v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1079
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-direct {v7, v1, v0, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1082
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 1086
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1087
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1088
    sget-boolean p2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p2, :cond_5

    .line 1089
    const-string p2, "GroupHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isGroupSummaryWithoutChild "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 1091
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, v7, v6}, Lcom/android/server/notification/GroupHelper;->addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1092
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1098
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 1101
    :try_start_2
    const-string p1, "GroupHelper"

    const-string p2, "Failed to group sparse groups"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    :goto_1
    monitor-exit v1

    :cond_7
    :goto_2
    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onNotificationPosted(Lcom/android/server/notification/NotificationRecord;Z)Z
    .locals 2

    const/4 v0, 0x0

    .line 255
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->maybeGroupWithSections(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnAppGrouped(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 270
    :goto_0
    const-string p1, "GroupHelper"

    const-string p2, "Failure processing new notification"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onNotificationPostedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V
    .locals 8

    .line 794
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 795
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 799
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 803
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 807
    :cond_2
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    if-nez v6, :cond_3

    .line 809
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_7

    .line 810
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping autogrouping for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 815
    :cond_3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 816
    new-instance v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 817
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-direct {v7, v1, v0, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 820
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 824
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 827
    :try_start_0
    invoke-static {p1, p3}, Lcom/android/server/notification/GroupHelper;->isGroupChildWithoutSummary(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 828
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_6

    :cond_5
    move-object v2, p0

    move-object v3, p1

    goto :goto_2

    :cond_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 855
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 858
    :try_start_2
    const-string p1, "GroupHelper"

    const-string p2, "Failed to group sparse groups"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    :goto_0
    monitor-exit v1

    :cond_7
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 829
    :goto_2
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_8

    .line 830
    const-string p0, "GroupHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isGroupChildWithoutSummary OR isGroupSummaryWithoutChild"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_8
    invoke-virtual {v2, v3, v7, v6}, Lcom/android/server/notification/GroupHelper;->addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 834
    monitor-exit v1

    return-void

    .line 861
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onNotificationRemoved(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Z)V
    .locals 8

    .line 942
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v1

    if-nez v1, :cond_1

    .line 948
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 949
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping autogroup cleanup for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 955
    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 956
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 957
    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 958
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 962
    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 964
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 965
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 966
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 970
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 971
    const-string v0, "GroupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aggregate group is empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 974
    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    .line 973
    invoke-interface {v0, v3, v2, v4}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 977
    :cond_4
    sget-boolean v4, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 978
    const-string v4, "GroupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aggregate group not empty, updating: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_5
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v0, v4, v5}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 987
    :goto_1
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v0, :cond_6

    .line 989
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .line 988
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper;->maybeClearCanceledSummariesCache(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Z)V

    .line 992
    :cond_6
    monitor-exit v7

    return-void

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .locals 2

    .line 1238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->getAutogroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v1

    .line 1242
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1249
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->getUngroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object p3

    .line 1248
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1258
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1259
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/notification/GroupHelper;->moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V
    .locals 1

    .line 1884
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTestHarnessExempted(Z)V
    .locals 1

    .line 216
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    return-void
.end method

.method public final updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V
    .locals 14

    .line 1650
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1651
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1652
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/GroupHelper;->getSummaryAttributes(Ljava/lang/String;Landroid/util/ArrayMap;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 1654
    iget-object v1, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    move-object/from16 v6, p2

    :goto_0
    move-object v13, v1

    goto :goto_1

    :cond_0
    move-object/from16 v6, p2

    .line 1655
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v1, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    goto :goto_0

    .line 1656
    :goto_1
    new-instance v7, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget v8, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    iget-object v9, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget v10, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iget v11, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v12, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-direct/range {v7 .. v13}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 1659
    const-string v1, "GroupHelper"

    if-nez p3, :cond_2

    .line 1660
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create aggregate summary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v7

    .line 1664
    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v8, p4

    .line 1663
    invoke-interface/range {v3 .. v9}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    return-void

    .line 1666
    :cond_2
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update aggregate summary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v2

    .line 1670
    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1669
    invoke-interface {p0, v1, v2, v0, v7}, Lcom/android/server/notification/GroupHelper$Callback;->updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    return-void
.end method
