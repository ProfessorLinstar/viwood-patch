.class public abstract Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;
.super Ljava/lang/Object;
.source "DomainVerificationPersistence.java"


# direct methods
.method public static createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .locals 10

    .line 180
    const-string/jumbo v0, "packageName"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v0, "id"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "hasAutoVerifyDomains"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 183
    const-string/jumbo v1, "signature"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 187
    :cond_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 189
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 190
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 191
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 193
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 194
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v9, "uri-relative-filter-groups"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "state"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v9, "user-states"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    invoke-static {p0, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUriRelativeFilterGroups(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-static {p0, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-static {p0, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V

    goto :goto_0

    .line 208
    :cond_4
    new-instance v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-object v1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5df07dbc -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x614c8a09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createUriRelativeFilterGroupsFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Ljava/util/ArrayList;
    .locals 4

    .line 223
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    :goto_0
    const-string/jumbo v2, "uri-relative-filter-group"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    new-instance v2, Landroid/content/UriRelativeFilterGroup;

    const-string v3, "action"

    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V

    .line 227
    invoke-static {v0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUriRelativeFiltersFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/content/UriRelativeFilterGroup;)V

    .line 228
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .locals 4

    .line 338
    const-string/jumbo v0, "userId"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 343
    :cond_0
    const-string v1, "allowLinkHandling"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 344
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 346
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 347
    :goto_0
    const-string v3, "enabled-hosts"

    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-static {p0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V

    goto :goto_0

    .line 351
    :cond_1
    new-instance p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    return-object p0
.end method

.method public static readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .locals 3

    .line 258
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 259
    :goto_0
    const-string v0, "domain"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string/jumbo v0, "name"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V
    .locals 2

    .line 356
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 357
    :cond_0
    :goto_0
    const-string v0, "host"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    const-string/jumbo v0, "name"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    .locals 4

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 144
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 146
    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->parser(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 147
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v3, "active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "restored"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 158
    :cond_2
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public static readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .locals 2

    .line 163
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 164
    :cond_0
    :goto_0
    const-string/jumbo v0, "package-state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readUriRelativeFilterGroups(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .locals 2

    .line 214
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 215
    :goto_0
    const-string v0, "domain"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "name"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createUriRelativeFilterGroupsFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static readUriRelativeFiltersFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/content/UriRelativeFilterGroup;)V
    .locals 4

    .line 235
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 236
    :cond_0
    :goto_0
    const-string/jumbo v0, "uri-relative-filter"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const-string v0, "filter"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v1, Landroid/content/UriRelativeFilter;

    const-string/jumbo v2, "uri-part"

    invoke-interface {p0, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "pattern-type"

    .line 240
    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    .line 239
    invoke-virtual {p1, v1}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V
    .locals 2

    .line 247
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 248
    :cond_0
    :goto_0
    const-string/jumbo v0, "user-state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    .locals 1

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 136
    invoke-static {p0, v0, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V
    .locals 3

    .line 269
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 271
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :goto_0
    if-nez p3, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object p3

    .line 279
    :cond_1
    const-string/jumbo v1, "package-state"

    .line 280
    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    .line 281
    invoke-interface {v1, v2, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    const-string v1, "hasAutoVerifyDomains"

    .line 284
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v2

    .line 283
    invoke-interface {v0, v1, v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    const-string/jumbo v1, "signature"

    .line 285
    invoke-interface {v0, v1, p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p3

    .line 286
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V

    .line 287
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V

    .line 288
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUriRelativeFilterGroupMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 289
    invoke-interface {p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_3

    .line 279
    :try_start_1
    invoke-interface {p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public static writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    .locals 6

    .line 316
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 320
    :cond_0
    const-string/jumbo v0, "state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 321
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 323
    const-string v3, "domain"

    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 324
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 325
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 326
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_2

    .line 328
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_3

    .line 320
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
.end method

.method public static writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILjava/util/function/Function;)V
    .locals 6

    .line 96
    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->serializer(Lcom/android/modules/utils/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;

    move-result-object p0

    .line 97
    :try_start_0
    const-string v0, "domain-verifications"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 105
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 107
    invoke-virtual {p1, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 110
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_1
    if-ge v3, p1, :cond_1

    .line 112
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 115
    :cond_1
    const-string p1, "active"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-static {p1, v1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz p1, :cond_2

    .line 117
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    .line 119
    :cond_2
    const-string/jumbo p1, "restored"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :try_start_4
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p1, p2, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_3

    .line 123
    :try_start_5
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 124
    :try_start_6
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_7

    .line 125
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V

    return-void

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_5

    .line 119
    :try_start_7
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_4
    move-exception p2

    if-eqz p1, :cond_6

    .line 115
    :try_start_9
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    if-eqz v0, :cond_7

    .line 97
    :try_start_b
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_7
    if-eqz p0, :cond_8

    .line 96
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    throw p1
.end method

.method public static writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/content/UriRelativeFilterGroup;)V
    .locals 4

    .line 419
    const-string/jumbo v0, "uri-relative-filter-group"

    .line 420
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 421
    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getAction()I

    move-result v0

    const-string v1, "action"

    invoke-interface {p0, v1, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 422
    :try_start_0
    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 423
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriRelativeFilter;

    .line 425
    const-string/jumbo v1, "uri-relative-filter"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string/jumbo v2, "uri-part"

    .line 426
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getUriPart()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string/jumbo v2, "pattern-type"

    .line 427
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getPatternType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string v2, "filter"

    .line 428
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getFilter()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 430
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz p0, :cond_2

    .line 419
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public static writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    .locals 3

    .line 390
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    const-string/jumbo v0, "uri-relative-filter-groups"

    .line 394
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const/4 v0, 0x0

    .line 395
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 396
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroups(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_2

    .line 398
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_3

    .line 393
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
.end method

.method public static writeUriRelativeFilterGroups(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 404
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 407
    :cond_0
    const-string v0, "domain"

    .line 408
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const-string/jumbo v0, "name"

    .line 409
    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const/4 p1, 0x0

    .line 410
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 411
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriRelativeFilterGroup;

    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/content/UriRelativeFilterGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_2

    .line 413
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_3

    .line 407
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
.end method

.method public static writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    .locals 6

    .line 367
    const-string/jumbo v0, "user-state"

    .line 368
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 369
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v0

    const-string/jumbo v1, "userId"

    invoke-interface {p0, v1, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const-string v0, "allowLinkHandling"

    .line 371
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v1

    .line 370
    invoke-interface {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 372
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    const-string v0, "enabled-hosts"

    .line 375
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 378
    const-string v3, "host"

    invoke-interface {v0, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 379
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 380
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 382
    :try_start_2
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_1
    if-eqz v0, :cond_1

    .line 374
    :try_start_3
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_3
    if-eqz p0, :cond_3

    .line 384
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_3
    return-void

    :goto_4
    if-eqz p0, :cond_4

    .line 367
    :try_start_5
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw p1
.end method

.method public static writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V
    .locals 2

    .line 295
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    const-string/jumbo v1, "user-states"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 303
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 306
    :cond_1
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz p1, :cond_2

    .line 308
    invoke-static {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz p0, :cond_3

    .line 311
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_4

    .line 300
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
.end method
