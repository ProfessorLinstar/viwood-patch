.class public final Lcom/android/server/accounts/AccountManagerBackupHelper;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# instance fields
.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

.field public final mLock:Ljava/lang/Object;

.field public mRestoreCancelCommand:Ljava/lang/Runnable;

.field public mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

.field public mRestorePendingAppPermissions:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccountManagerInternal(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountManagerService(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestorePackageMonitor(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestorePackageMonitor(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 80
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-void
.end method


# virtual methods
.method public backupAccountAccessPermissions(I)[B
    .locals 14

    .line 151
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 152
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 153
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 156
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findAllAccountGrants()Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 158
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    .line 161
    :cond_0
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 163
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 164
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 165
    const-string/jumbo v6, "permissions"

    invoke-interface {v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 170
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 171
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 173
    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 178
    :cond_2
    array-length v8, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v6, v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v11, 0x40

    .line 181
    :try_start_4
    invoke-virtual {p0, v10, v11, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    :try_start_5
    iget-object v11, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v11}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 191
    const-string/jumbo v12, "permission"

    invoke-interface {v5, v4, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const-string v12, "account-sha-256"

    .line 193
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v13

    .line 192
    invoke-interface {v5, v4, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string/jumbo v12, "package"

    invoke-interface {v5, v4, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const-string v10, "digest"

    invoke-interface {v5, v4, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string/jumbo v10, "permission"

    invoke-interface {v5, v4, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    .line 184
    :catch_1
    const-string v11, "AccountManagerBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping backup of account access grant for non-existing package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 200
    :cond_4
    const-string/jumbo p0, "permissions"

    invoke-interface {v5, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 202
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 203
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object p0

    .line 205
    :goto_3
    :try_start_8
    const-string p1, "AccountManagerBackupHelper"

    const-string v0, "Error backing up account access grants"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-object v4

    .line 208
    :goto_4
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p0

    .line 209
    :goto_5
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0
.end method

.method public restoreAccountAccessPermissions([BI)V
    .locals 11

    .line 214
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    .line 216
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 219
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 220
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 221
    const-string/jumbo v2, "permissions"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 225
    :goto_1
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    const-string/jumbo v4, "permission"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 229
    :cond_2
    const-string v4, "account-sha-256"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 233
    :cond_3
    const-string/jumbo v4, "package"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 234
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 237
    :cond_4
    const-string v4, "digest"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 238
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 239
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 242
    :cond_5
    new-instance v5, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    move-object v6, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    invoke-virtual {v5, v0}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 246
    iget-object p0, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    iget-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    if-nez p2, :cond_6

    .line 249
    new-instance p2, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    invoke-direct {p2, v6, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper-IA;)V

    iput-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    .line 250
    iget-object v4, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 251
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v8, 0x1

    .line 250
    invoke-virtual {p2, v7, v4, v8}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 253
    :cond_6
    :goto_2
    iget-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    if-nez p2, :cond_7

    .line 254
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    .line 256
    :cond_7
    iget-object p2, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_8
    :goto_4
    move-object p0, v6

    move p2, v10

    goto/16 :goto_1

    :cond_9
    move-object v6, p0

    .line 263
    new-instance p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;

    invoke-direct {p0, v6, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper-IA;)V

    iput-object p0, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    .line 264
    iget-object p1, v6, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 267
    const-string p1, "AccountManagerBackupHelper"

    const-string p2, "Error restoring app permissions"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
