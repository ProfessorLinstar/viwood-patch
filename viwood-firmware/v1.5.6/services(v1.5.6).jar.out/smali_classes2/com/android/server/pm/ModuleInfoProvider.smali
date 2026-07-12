.class public Lcom/android/server/pm/ModuleInfoProvider;
.super Ljava/lang/Object;
.source "ModuleInfoProvider.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public volatile mMetadataLoaded:Z

.field public final mModuleInfo:Ljava/util/Map;

.field public mPackageManager:Landroid/content/pm/IPackageManager;

.field public volatile mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 75
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Lcom/android/server/pm/ApexManager;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 82
    iput-object p3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 83
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public getInstalledModules(I)Ljava/util/List;
    .locals 3

    .line 190
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 200
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p1, v1

    int-to-long v1, p1

    .line 201
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 200
    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 209
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ModuleInfo;

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 203
    const-string p1, "PackageManager.ModuleInfoProvider"

    const-string v0, "Unable to retrieve all package names"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 191
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call to getInstalledModules before metadata loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_3

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 222
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ModuleInfo;

    .line 223
    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 229
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ModuleInfo;

    return-object p0

    .line 219
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call to getModuleInfo before metadata loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_0

    .line 90
    const-string/jumbo v0, "package"

    .line 91
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call to getVersion before metadata loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .locals 6

    .line 138
    const-string v0, "PackageManager.ModuleInfoProvider"

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "module-metadata"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 140
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 141
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    const-string/jumbo v2, "module"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected metadata element: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 180
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    return-void

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    .line 156
    :cond_1
    :try_start_1
    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    .line 157
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 156
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 158
    const-string/jumbo v3, "packageName"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string v4, "isHidden"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 162
    new-instance v5, Landroid/content/pm/ModuleInfo;

    invoke-direct {v5}, Landroid/content/pm/ModuleInfo;-><init>()V

    .line 163
    invoke-virtual {v5, v4}, Landroid/content/pm/ModuleInfo;->setHidden(Z)Landroid/content/pm/ModuleInfo;

    .line 164
    invoke-virtual {v5, v3}, Landroid/content/pm/ModuleInfo;->setPackageName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;

    .line 165
    invoke-virtual {v5, v2}, Landroid/content/pm/ModuleInfo;->setName(Ljava/lang/CharSequence;)Landroid/content/pm/ModuleInfo;

    .line 166
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 167
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v5, v2}, Landroid/content/pm/ModuleInfo;->setApexModuleName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;

    .line 170
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/pm/ModuleInfo;->setApkInApexPackageNames(Ljava/util/Collection;)Landroid/content/pm/ModuleInfo;

    .line 173
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 176
    :goto_2
    :try_start_2
    const-string v2, "Error parsing module metadata"

    invoke-static {v0, v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    iget-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 180
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    return-void

    .line 179
    :goto_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 180
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    .line 181
    throw p2
.end method

.method public systemReady()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PackageManager.ModuleInfoProvider"

    if-eqz v0, :cond_0

    .line 101
    const-string p0, "No configured module metadata provider."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    const-wide/16 v3, 0x80

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.content.pm.MODULE_METADATA"

    .line 119
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    return-void

    :catch_0
    move-exception v0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to discover metadata package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
