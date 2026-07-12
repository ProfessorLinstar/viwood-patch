.class public Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;
.super Ljava/lang/Object;
.source "DeviceManagementResourcesProvider.java"


# instance fields
.field public final mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mUpdatedDrawablesForSource:Ljava/util/Map;

.field public final mUpdatedDrawablesForStyle:Ljava/util/Map;

.field public final mUpdatedStrings:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetResourcesFile(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getResourcesFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 187
    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 189
    :cond_0
    iget-object p3, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p0, 0x0

    .line 190
    monitor-exit v0

    return-object p0

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/ParcelableResource;

    monitor-exit v0

    return-object p0

    .line 193
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 205
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/ParcelableResource;

    return-object p0
.end method

.method public final getResourcesFile()Ljava/io/File;
    .locals 2

    .line 279
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "updated_resources.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/ParcelableResource;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public load()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    new-instance v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider-IA;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->readFromFileLocked()V

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeDrawables(Ljava/util/List;)Z
    .locals 7

    .line 166
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 168
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    .line 169
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 170
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 171
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 174
    monitor-exit v0

    return v1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 177
    monitor-exit v0

    return v5

    .line 178
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeStrings(Ljava/util/List;)Z
    .locals 7

    .line 246
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 248
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 249
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 250
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    .line 253
    monitor-exit v0

    return v1

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 256
    monitor-exit v0

    return v5

    .line 257
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 131
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ParcelableResource;

    .line 133
    invoke-virtual {p3, v1}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    .line 134
    monitor-exit v0

    return p0

    .line 136
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 137
    monitor-exit v0

    return p0

    .line 138
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDrawableForSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 148
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 149
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 150
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/ParcelableResource;

    .line 154
    invoke-virtual {p4, p0}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 155
    monitor-exit v0

    return p0

    .line 157
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 158
    monitor-exit v0

    return p0

    .line 159
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateDrawables(Ljava/util/List;)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 99
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableId()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableStyle()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableSource()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyDrawableResource;->getResource()Landroid/app/admin/ParcelableResource;

    move-result-object v6

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    const-string v7, "UNDEFINED"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 110
    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v3

    :goto_1
    or-int/2addr v2, v3

    goto :goto_2

    .line 112
    :cond_0
    invoke-virtual {p0, v3, v5, v4, v6}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateDrawableForSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v3

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    const/4 p0, 0x1

    .line 121
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 122
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateString(Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ParcelableResource;

    .line 234
    invoke-virtual {p2, v1}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 235
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 238
    monitor-exit v0

    return p0

    .line 239
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateStrings(Ljava/util/List;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 213
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 214
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyStringResource;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyStringResource;->getStringId()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyStringResource;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyStringResource;->getResource()Landroid/app/admin/ParcelableResource;

    move-result-object v4

    .line 217
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    invoke-virtual {p0, v3, v4}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateString(Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    return v0

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    const/4 p0, 0x1

    .line 227
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 228
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final write()V
    .locals 2

    .line 268
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "Writing updated resources to file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider-IA;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeToFileLocked()V

    return-void
.end method
