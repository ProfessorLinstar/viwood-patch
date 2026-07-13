.class public Lcom/android/server/locales/SystemAppUpdateTracker;
.super Ljava/lang/Object;
.source "SystemAppUpdateTracker.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFileLock:Ljava/lang/Object;

.field public final mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

.field public final mUpdatedApps:Ljava/util/Set;

.field public final mUpdatedAppsFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/util/AtomicFile;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mFileLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    .line 86
    iput-object p1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 88
    iput-object p3, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locales/LocaleManagerService;)V
    .locals 5

    .line 78
    iget-object v0, p1, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 79
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "locale_manager_service_updated_system_apps.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 78
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/locales/SystemAppUpdateTracker;-><init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/util/AtomicFile;)V

    return-void
.end method


# virtual methods
.method public getUpdatedApps()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    return-object p0
.end method

.method public init()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/android/server/locales/SystemAppUpdateTracker;->loadUpdatedSystemApps()V

    return-void
.end method

.method public final isUpdatedSystemApp(Ljava/lang/String;)Z
    .locals 2

    .line 232
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v0, 0x100000

    .line 233
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    .line 232
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 242
    :cond_0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public final loadUpdatedSystemApps()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/server/locales/SystemAppUpdateTracker;->readFromXml(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 119
    :try_start_1
    const-string v1, "SystemAppUpdateTracker"

    const-string v2, "loadUpdatedSystemApps: Could not parse storage file "

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_0
    return-void

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 122
    throw p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/locales/SystemAppUpdateTracker;->isUpdatedSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 157
    iget-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/locales/LocaleManagerService;->notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/locales/SystemAppUpdateTracker;->updateBroadcastedAppsList(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 184
    const-string p1, "SystemAppUpdateTracker"

    const-string p2, "Exception in onPackageUpdateFinished."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final readFromXml(Ljava/io/InputStream;)V
    .locals 3

    .line 130
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 131
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    const-string/jumbo p1, "system_apps"

    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 133
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p1

    .line 134
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 136
    const-string/jumbo v2, "name"

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateBroadcastedAppsList(Ljava/lang/String;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/server/locales/SystemAppUpdateTracker;->writeUpdatedAppsFileLocked()V

    .line 195
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeToXmlLocked(Ljava/io/OutputStream;)V
    .locals 5

    .line 214
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 215
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 216
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 217
    const-string/jumbo p1, "system_apps"

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    iget-object p0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    const-string/jumbo v3, "package"

    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    const-string/jumbo v4, "name"

    invoke-interface {v0, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public final writeUpdatedAppsFileLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/server/locales/SystemAppUpdateTracker;->writeToXmlLocked(Ljava/io/OutputStream;)V

    .line 203
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 205
    iget-object p0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 206
    const-string p0, "SystemAppUpdateTracker"

    const-string v0, "Failed to persist the updated apps list"

    invoke-static {p0, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
