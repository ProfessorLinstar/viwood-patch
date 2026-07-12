.class public Lcom/android/server/notification/NotificationListenerStats;
.super Ljava/lang/Object;
.source "NotificationListenerStats.java"


# instance fields
.field public final mChannelsCreated:Landroid/util/SparseIntArray;

.field public final mLock:Ljava/lang/Object;

.field public final mMaxChannelsAllowed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1388

    .line 57
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationListenerStats;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    .line 62
    iput p1, p0, Lcom/android/server/notification/NotificationListenerStats;->mMaxChannelsAllowed:I

    return-void
.end method

.method public static isXmlTag(Ljava/lang/String;)Z
    .locals 1

    .line 87
    const-string/jumbo v0, "nlsStats"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 128
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "NLS with uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  created channel count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 132
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAllowedToCreateChannel(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 68
    iget p0, p0, Lcom/android/server/notification/NotificationListenerStats;->mMaxChannelsAllowed:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logCreatedChannels(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 75
    iget-object p0, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(ILjava/lang/String;)V
    .locals 0

    .line 81
    iget-object p2, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 82
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 83
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 6

    .line 104
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string/jumbo v2, "nlsStats"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 111
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 112
    const-string/jumbo v4, "nlsStats"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    if-ne v2, v1, :cond_2

    .line 116
    const-string/jumbo v2, "nls"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    const-string/jumbo v2, "uid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 118
    const-string v5, "channelCount"

    invoke-interface {p1, v4, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 119
    iget-object v4, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 123
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    .line 91
    const-string/jumbo v0, "nlsStats"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    .line 93
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 94
    const-string/jumbo v3, "nls"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string/jumbo v3, "uid"

    iget-object v4, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string v3, "channelCount"

    iget-object v4, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string/jumbo v3, "nls"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 99
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const-string/jumbo p0, "nlsStats"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 99
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
