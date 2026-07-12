.class public Lcom/android/server/pm/UpdateOwnershipHelper;
.super Ljava/lang/Object;
.source "UpdateOwnershipHelper.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 57
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string v1, "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.permission.INSTALL_PACKAGES"

    const-string v1, "android.permission.INSTALL_PACKAGE_UPDATES"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Lcom/android/server/pm/UpdateOwnershipHelper;->usesAnyPermission(Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs usesAnyPermission(Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;)Z
    .locals 5

    .line 66
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 67
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 68
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 69
    aget-object v3, p1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public addToUpdateOwnerDenyList(Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 134
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 135
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArraySet;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUpdateOwnershipDenyListProvider(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 178
    iget-object v4, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 182
    :cond_2
    monitor-exit v1

    return v0

    .line 183
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUpdateOwnershipDenylisted(Ljava/lang/String;)Z
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public readUpdateOwnerDenyList(Lcom/android/server/pm/PackageSetting;)Landroid/util/ArraySet;
    .locals 19

    .line 82
    const-string v1, "PackageManager"

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 85
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 89
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 91
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v5

    const-string v6, "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManager$Property;

    .line 92
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    move-result v5

    .line 93
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 94
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v7

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    sget-object v15, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v18}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v6

    .line 98
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_2
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 100
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 101
    const-string v6, "deny-ownership"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 103
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->isBlank()Z

    move-result v7

    if-nez v7, :cond_2

    .line 105
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-le v6, v4, :cond_2

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deny list defined by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was trucated to maximum size of "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_1
    if-eqz v5, :cond_4

    .line 98
    :try_start_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse update owner list for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public removeUpdateOwnerDenyList(Ljava/lang/String;)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 153
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 154
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 159
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
