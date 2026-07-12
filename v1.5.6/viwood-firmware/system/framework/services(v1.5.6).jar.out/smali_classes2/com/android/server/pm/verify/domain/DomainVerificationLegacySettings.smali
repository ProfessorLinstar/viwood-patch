.class public Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;
.super Ljava/lang/Object;
.source "DomainVerificationLegacySettings.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;II)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->addUserState(II)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public add(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->setInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;-><init>()V

    .line 115
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getUserState(Ljava/lang/String;I)I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserState(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 80
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserStates(Ljava/lang/String;)Landroid/util/SparseIntArray;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserStates()Landroid/util/SparseIntArray;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 93
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readSettings(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 2

    .line 157
    invoke-static {p1}, Lcom/android/server/pm/SettingsXml;->parser(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p1

    .line 158
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const-string/jumbo v0, "user-states"

    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final readUserState(Lcom/android/server/pm/SettingsXml$ReadSection;Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;)V
    .locals 1

    .line 179
    const-string/jumbo p0, "userId"

    invoke-interface {p1, p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 180
    const-string/jumbo v0, "state"

    invoke-interface {p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 181
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->addUserState(II)V

    return-void
.end method

.method public final readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;)V
    .locals 4

    .line 166
    const-string/jumbo v0, "packageName"

    invoke-interface {p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object v0

    .line 169
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p1

    .line 170
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    const-string/jumbo v2, "user-state"

    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readUserState(Lcom/android/server/pm/SettingsXml$ReadSection;Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 175
    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->isAttached()Z

    move-result p1

    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->markAttached()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 105
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeSettings(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 13

    .line 122
    invoke-static {p1}, Lcom/android/server/pm/SettingsXml;->serializer(Lcom/android/modules/utils/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;

    move-result-object p1

    .line 123
    :try_start_0
    const-string v0, "domain-verifications-legacy"

    .line 124
    invoke-virtual {p1, v0}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 126
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 128
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 129
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserStates()Landroid/util/SparseIntArray;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 134
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 135
    const-string/jumbo v7, "user-states"

    .line 136
    invoke-virtual {p1, v7}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v7

    const-string/jumbo v8, "packageName"

    .line 137
    invoke-interface {v7, v8, v6}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    :try_start_3
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    .line 141
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 142
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 143
    const-string/jumbo v11, "user-state"

    invoke-interface {v6, v11}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v11

    const-string/jumbo v12, "userId"

    .line 144
    invoke-interface {v11, v12, v9}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v9

    const-string/jumbo v11, "state"

    .line 145
    invoke-interface {v9, v11, v10}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v9

    .line 146
    invoke-interface {v9}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    if-eqz v6, :cond_2

    .line 148
    :try_start_4
    invoke-interface {v6}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_3
    if-eqz v6, :cond_3

    .line 135
    :try_start_5
    invoke-interface {v6}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p0

    .line 150
    :cond_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_5

    .line 151
    :try_start_7
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_8

    .line 152
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V

    return-void

    .line 150
    :goto_6
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz v0, :cond_6

    .line 123
    :try_start_a
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_8
    if-eqz p1, :cond_7

    .line 122
    :try_start_c
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_9
    throw p0
.end method
