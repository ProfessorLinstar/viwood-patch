.class public Lcom/android/server/vr/EnabledComponentsObserver;
.super Ljava/lang/Object;
.source "EnabledComponentsObserver.java"

# interfaces
.implements Lcom/android/server/vr/SettingsObserver$SettingChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EnabledComponentsObserver"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEnabledComponentListeners:Ljava/util/Set;

.field public final mEnabledSet:Landroid/util/SparseArray;

.field public final mInstalledSet:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mServiceName:Ljava/lang/String;

.field public final mServicePermission:Ljava/lang/String;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Landroid/os/Looper;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    .line 84
    iput-object p5, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mSettingName:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServiceName:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServicePermission:Ljava/lang/String;

    .line 89
    invoke-interface {v0, p6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    new-instance p2, Lcom/android/server/vr/EnabledComponentsObserver$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/server/vr/EnabledComponentsObserver$1;-><init>(Lcom/android/server/vr/EnabledComponentsObserver;Z)V

    iput-object p2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 114
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p7, p0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;
    .locals 8

    .line 135
    invoke-static {p0, p1, p2}, Lcom/android/server/vr/SettingsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lcom/android/server/vr/SettingsObserver;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/android/server/vr/EnabledComponentsObserver;

    move-object v1, p0

    move-object v2, p2

    move-object v7, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vr/EnabledComponentsObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Landroid/os/Looper;)V

    .line 139
    invoke-virtual {p1, v0}, Lcom/android/server/vr/SettingsObserver;->addListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V

    return-object v0
.end method

.method public static loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 5

    .line 250
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 251
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0xc0084

    .line 252
    invoke-virtual {p0, v1, p2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 259
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 260
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 261
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 263
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    sget-object v2, Lcom/android/server/vr/EnabledComponentsObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": it does not require the permission "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getCurrentProfileIds()[I
    .locals 1

    .line 240
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getEnabled(I)Landroid/util/ArraySet;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_0

    .line 232
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 234
    :cond_0
    monitor-exit v0

    return-object p0

    .line 236
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInstalled(I)Landroid/util/ArraySet;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_0

    .line 216
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 218
    :cond_0
    monitor-exit v0

    return-object p0

    .line 219
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isValid(Landroid/content/ComponentName;I)I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_3

    .line 195
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_2

    .line 199
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 202
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 200
    monitor-exit v0

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x2

    .line 196
    monitor-exit v0

    return p0

    .line 203
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadComponentNamesForUser(I)Landroid/util/ArraySet;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServiceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServicePermission:Ljava/lang/String;

    invoke-static {v0, p1, v1, p0}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 1

    .line 283
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 284
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    .line 290
    :cond_0
    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 291
    new-instance p1, Landroid/util/ArraySet;

    array-length p2, p0

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(I)V

    const/4 p2, 0x0

    .line 292
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_2

    .line 293
    aget-object v0, p0, p2

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public onPackagesChanged()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method

.method public onSettingChanged()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method

.method public onSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method

.method public onUsersChanged()V
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method

.method public rebuildAll()V
    .locals 8

    .line 167
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 169
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->getCurrentProfileIds()[I

    move-result-object v1

    .line 171
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 172
    invoke-virtual {p0, v4}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNamesForUser(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 173
    iget-object v6, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mSettingName:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, v6, v4}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v6

    .line 175
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v7, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget-object v5, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 181
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->sendSettingChanged()V

    return-void

    .line 181
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendSettingChanged()V
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;

    .line 303
    invoke-interface {v0}, Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;->onEnabledComponentChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
