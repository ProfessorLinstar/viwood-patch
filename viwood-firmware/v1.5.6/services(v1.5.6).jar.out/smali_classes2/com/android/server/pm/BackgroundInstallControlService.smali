.class public Lcom/android/server/pm/BackgroundInstallControlService;
.super Lcom/android/server/SystemService;
.source "BackgroundInstallControlService.java"


# instance fields
.field public mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

.field public final mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

.field public final mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDiskFile:Ljava/io/File;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field protected final mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method public static synthetic $r8$lambda$Ii6fFjkYscgJbLxp4fiuTNLoT7c(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1

    .line 227
    const-string/jumbo v0, "userId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", name: "

    .line 228
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic $r8$lambda$hszxYcBNn367LxTqmV-LFsN7dNI(Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 0

    .line 389
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r3_D5ZCfbKAc8o--pXGNM2kXs6w(Lcom/android/server/pm/BackgroundInstallControlService;ILandroid/app/usage/UsageEvents$Event;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/BackgroundInstallControlService;->lambda$new$0(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackHelper(Lcom/android/server/pm/BackgroundInstallControlService;)Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/BackgroundInstallControlService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 144
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;-><init>(Lcom/android/server/pm/BackgroundInstallControlService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService$Injector;)V
    .locals 2

    .line 149
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 122
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 125
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundInstallControlService$1;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 150
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 151
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 152
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 153
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getDiskFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    .line 155
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mContext:Landroid/content/Context;

    .line 156
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getBackgroundInstallControlCallbackHelper()Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    .line 158
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object p1

    .line 159
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 163
    new-instance p1, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    return-void
.end method


# virtual methods
.method public enforceCallerPermissions()V
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.GET_BACKGROUND_INSTALLED_PACKAGES"

    const-string v1, "User is not permitted to call service: android.permission.GET_BACKGROUND_INSTALLED_PACKAGES"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 216
    invoke-static {p1, p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p1

    .line 215
    invoke-virtual {v2, p1, p3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 219
    sget-boolean p2, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "BackgroundInstallControlService"

    if-eqz p2, :cond_1

    .line 220
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    const-string v3, "Tracked background installed package size: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 222
    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 223
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 224
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    .line 226
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2, v4}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 230
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracked background installed package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 234
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 236
    iget-object v4, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, p3, v3}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 237
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_3

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not tracked, removing"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_3
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 244
    :cond_4
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    throw p0
.end method

.method public getBackgroundInstalledPackages()Landroid/util/SparseSetArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public getInstallerForegroundTimeFrames()Landroid/util/SparseArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;",
            ">;>;"
        }
    .end annotation

    .line 579
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public final getLatestInstallSession(Ljava/lang/String;I)Ljava/util/Optional;
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 388
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 389
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda3;-><init>()V

    .line 390
    invoke-static {p1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getMockBackgroundInstalledPackages(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 256
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 260
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/32 v5, 0x20000

    .line 262
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v5

    .line 261
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 263
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 265
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package\'s PackageInfo not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackgroundInstallControlService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_0
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public handlePackageAdd(Ljava/lang/String;I)V
    .locals 13

    .line 301
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "BackgroundInstallControlService"

    if-eqz v0, :cond_0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePackageAdd: checking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v3, 0x0

    .line 308
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    .line 307
    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 318
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-virtual {v3}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    const-string v7, "default:0"

    invoke-interface {v5, v4, v6, v7, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "handlePackageAdd "

    if-eqz v5, :cond_1

    if-eqz v0, :cond_4

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": installer ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") doesn\'t have INSTALL_PACKAGES permission, skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 345
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/pm/BackgroundInstallControlService;->retrieveInstallStartTimestamp(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    sub-long/2addr v7, v9

    .line 347
    invoke-virtual {p0, v3}, Lcom/android/server/pm/BackgroundInstallControlService;->installedByAdb(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 348
    invoke-virtual {p0, v4, p2, v7, v8}, Lcom/android/server/pm/BackgroundInstallControlService;->wasForegroundInstallation(Ljava/lang/String;IJ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 356
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePackageAdd: adding "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and notifying callbacks"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->notifyAllCallbacks(ILjava/lang/String;I)V

    .line 361
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->writeBackgroundInstalledPackagesToDisk()V

    return-void

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": is installed by ADB or was foreground installation, skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 322
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package\'s installer not found: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package\'s appInfo not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handlePackageRemove(Ljava/lang/String;I)V
    .locals 2

    .line 440
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 441
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->notifyAllCallbacks(ILjava/lang/String;I)V

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePackageRemove: removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundInstallControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 446
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->writeBackgroundInstalledPackagesToDisk()V

    return-void
.end method

.method public handleUsageEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 4

    .line 450
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/BackgroundInstallControlService;->isInstaller(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, p2, v2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 465
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeSet;

    .line 467
    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    invoke-virtual {p2}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->isDone()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 469
    :cond_3
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq p2, v1, :cond_4

    goto :goto_0

    .line 472
    :cond_4
    new-instance p2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {p2, v0, v1}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;-><init>(J)V

    invoke-virtual {p0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_5
    invoke-virtual {p0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 477
    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_6

    .line 478
    invoke-virtual {p0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    :cond_6
    :goto_0
    return-void
.end method

.method public initBackgroundInstalledPackages()V
    .locals 12

    .line 517
    const-string v0, "BackgroundInstallControlService"

    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 521
    :cond_0
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 523
    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 527
    :cond_1
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 528
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :try_start_1
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 531
    :goto_0
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 532
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    const-wide v6, 0x20b00000001L

    .line 537
    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    const/16 v3, -0x2710

    const/4 v8, 0x0

    move v9, v3

    .line 540
    :goto_1
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v4, :cond_5

    .line 541
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v10

    if-eq v10, v5, :cond_4

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    .line 554
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Undefined field in proto: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 554
    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    const-wide v9, 0x10500000002L

    .line 549
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v9

    sub-int/2addr v9, v5

    goto :goto_1

    :cond_4
    const-wide v10, 0x10900000001L

    .line 544
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 560
    :cond_5
    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz v8, :cond_6

    if-eq v9, v3, :cond_6

    .line 562
    iget-object v3, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v9, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_0

    .line 564
    :cond_6
    const-string v3, "Fails to get packageName or UserId from proto file"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_9

    .line 567
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_8

    .line 528
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 568
    :goto_4
    const-string v1, "Error reading state from the disk"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_5
    return-void
.end method

.method public final installedByAdb(Ljava/lang/String;)Z
    .locals 1

    .line 395
    const-string p0, "debug.gts.transparency.bg-install-apps"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string v0, "BackgroundInstallControlService"

    if-nez p0, :cond_0

    .line 396
    const-string p0, "handlePackageAdd: is GTS tests, skipping ADB check"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 398
    const-string p0, "handlePackageAdd: is installed by ADB, skipping"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInstaller(Ljava/lang/String;I)Z
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 586
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v0, "android.permission.INSTALL_PACKAGES"

    const-string v2, "default:0"

    invoke-interface {p0, p1, v0, v2, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 1

    .line 161
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 602
    const-string p1, "background_install_control"

    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 605
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    return-void
.end method

.method public final retrieveInstallStartTimestamp(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)J
    .locals 3

    .line 366
    const-string v0, "BackgroundInstallControlService"

    iget-wide v1, p3, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 370
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/BackgroundInstallControlService;->getLatestInstallSession(Ljava/lang/String;I)Ljava/util/Optional;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Ljava/util/Optional;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 372
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package\'s historical install session not found, falling back to appInfo.createTimestamp: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getCreatedMillis()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 378
    :goto_0
    const-string p1, "Retrieval of install time from historical session failed, falling back to appInfo.createTimestamp"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public final wasForegroundInstallation(Ljava/lang/String;IJ)Z
    .locals 4

    .line 406
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 407
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeSet;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 414
    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    .line 417
    iget-wide v0, p2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->startTimeStampMillis:J

    cmp-long v0, v0, p3

    if-lez v0, :cond_2

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    return v1

    .line 429
    :cond_3
    iget-wide v2, p2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    cmp-long p2, p3, v2

    if-gtz p2, :cond_1

    return v1

    :cond_4
    return p1
.end method

.method public writeBackgroundInstalledPackagesToDisk()V
    .locals 12

    .line 484
    const-string v0, "BackgroundInstallControlService"

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 487
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    :try_start_1
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    .line 495
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 496
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v5

    .line 497
    iget-object v6, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-wide v8, 0x20b00000001L

    .line 499
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10900000001L

    .line 501
    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v7, v5, 0x1

    const-wide v10, 0x10500000002L

    .line 503
    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 504
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 508
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 510
    :goto_2
    const-string v3, "Failed to finish write to states protobuf."

    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catch_1
    move-exception p0

    .line 489
    const-string v1, "Failed to start write to states protobuf."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
