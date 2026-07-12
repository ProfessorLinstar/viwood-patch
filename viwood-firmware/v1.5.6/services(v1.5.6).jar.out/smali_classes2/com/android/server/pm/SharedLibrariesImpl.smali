.class public final Lcom/android/server/pm/SharedLibrariesImpl;
.super Ljava/lang/Object;
.source "SharedLibrariesImpl.java"

# interfaces
.implements Lcom/android/server/pm/SharedLibrariesRead;
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

.field public final mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$x5pbt1IWAO8LsYjbRIDnwkV8JxE(Landroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;)V
    .locals 0

    .line 586
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->clearDependencies()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/SharedLibrariesImpl;)Lcom/android/server/utils/WatchableImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 134
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$1;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    .line 158
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 159
    iput-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 161
    new-instance p1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 162
    new-instance p2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v1, "SharedLibrariesImpl.mSharedLibraries"

    invoke-direct {p2, p1, p1, v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 164
    new-instance p1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 165
    new-instance p2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v1, "SharedLibrariesImpl.mStaticLibsByDeclaringPackage"

    invoke-direct {p2, p1, p1, v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 169
    invoke-direct {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->registerObservers()V

    .line 170
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 171
    invoke-direct {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 134
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$1;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    .line 190
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 191
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 193
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 194
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 195
    iget-object p1, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedArrayMap;

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 196
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 199
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/SharedLibrariesImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    return-void
.end method

.method public static hasString(Ljava/util/List;Ljava/util/List;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 632
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 633
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_2

    .line 634
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    .line 145
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$2;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private registerObservers()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method


# virtual methods
.method public addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V
    .locals 13

    .line 753
    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 757
    :cond_0
    new-instance v1, Landroid/content/pm/SharedLibraryInfo;

    iget-object v2, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    new-instance v9, Landroid/content/pm/VersionedPackage;

    const-string v0, "android"

    const-wide/16 v3, 0x0

    invoke-direct {v9, v0, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v11, 0x0

    iget-boolean v12, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 763
    invoke-virtual {p0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V

    return-void
.end method

.method public final addSharedLibraryLPr(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Set;Landroid/content/pm/SharedLibraryInfo;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .locals 4

    .line 508
    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 513
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz p4, :cond_1

    .line 514
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    .line 520
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p4, v0

    move-object p5, v1

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 526
    invoke-static {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 528
    new-instance p4, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/SharedLibrariesImpl;->applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V

    if-eqz p5, :cond_3

    .line 530
    invoke-virtual {p5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method public final applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V
    .locals 3

    .line 468
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result p1

    int-to-long v1, p1

    .line 470
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 473
    invoke-interface {p3, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 475
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v1

    .line 476
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 479
    invoke-interface {p3, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 482
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 483
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 486
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public collectMissingSharedLibraryInfos(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;
    .locals 14

    .line 974
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 975
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v13

    .line 976
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v1

    .line 977
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v2

    .line 978
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v3

    .line 979
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sdk"

    .line 980
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    .line 976
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    .line 984
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v1

    .line 985
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    .line 986
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v3

    .line 987
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "static shared"

    .line 988
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v8

    iget-object p0, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 984
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    .line 991
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v12

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 15

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 923
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v14

    .line 928
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 929
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    .line 930
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 929
    const-string/jumbo v7, "shared"

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    move-object v10, v0

    .line 933
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 934
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v2

    .line 935
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v4

    .line 936
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 937
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 934
    const-string/jumbo v7, "static shared"

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    .line 940
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 941
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v2

    .line 942
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 941
    const-string/jumbo v7, "shared"

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    .line 946
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const-wide/32 v2, 0x879a9f0

    .line 945
    invoke-virtual {v14, v2, v3, v0, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 947
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 948
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v2

    .line 949
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 950
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 948
    const-string/jumbo v7, "native shared"

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    .line 953
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 954
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v2

    .line 955
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 956
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 954
    const-string/jumbo v7, "native shared"

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    .line 960
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 963
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v2

    .line 964
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v4

    .line 965
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v5

    .line 966
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v13, 0x0

    .line 963
    const-string/jumbo v7, "sdk"

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v10
.end method

.method public final collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p12

    .line 1005
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v6, p9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_13

    move-object/from16 v8, p1

    .line 1007
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1008
    aget-wide v9, p2, v7

    :goto_1
    move-wide v12, v9

    goto :goto_2

    :cond_0
    const-wide/16 v9, -0x1

    goto :goto_1

    .line 1011
    :goto_2
    iget-object v9, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v9

    .line 1012
    :try_start_0
    iget-object v10, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v14, p11

    invoke-static {v11, v12, v13, v10, v14}, Lcom/android/server/pm/SharedLibraryUtils;->getSharedLibraryInfo(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v10

    .line 1014
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v9, 0x1

    const/16 v15, -0x9

    if-nez v10, :cond_7

    if-eqz p7, :cond_3

    .line 1017
    const-string/jumbo v9, "sdk"

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "static shared"

    .line 1018
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    if-eqz v3, :cond_2

    .line 1021
    aget-object v9, p3, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 1022
    new-instance v10, Landroid/content/pm/SharedLibraryInfo;

    const/4 v14, 0x3

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JILjava/util/List;)V

    .line 1026
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1028
    :cond_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires unavailable "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p4, :cond_4

    .line 1035
    aget-boolean v10, p4, v7

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 1036
    :goto_3
    const-string/jumbo v10, "sdk"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v9, :cond_5

    goto :goto_4

    .line 1037
    :cond_5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires unavailable "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    move-object/from16 v13, p10

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_7
    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 1047
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v12

    aget-wide v16, p2, v7

    cmp-long v12, v12, v16

    if-nez v12, :cond_10

    .line 1053
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p10

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v12, :cond_8

    const/4 v12, 0x0

    goto :goto_5

    .line 1054
    :cond_8
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    :goto_5
    if-eqz v12, :cond_f

    .line 1060
    aget-object v14, p3, v7

    const/16 v16, 0x0

    .line 1061
    array-length v5, v14

    if-le v5, v9, :cond_d

    const/16 v5, 0x1b

    move/from16 v11, p8

    if-lt v11, v5, :cond_9

    .line 1065
    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 1064
    invoke-static {v5}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1066
    :cond_9
    new-array v5, v9, [Landroid/content/pm/Signature;

    .line 1067
    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v9

    aget-object v9, v9, v16

    aput-object v9, v5, v16

    .line 1066
    invoke-static {v5}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v5

    .line 1073
    :goto_6
    array-length v9, v14

    array-length v12, v5

    if-ne v9, v12, :cond_c

    .line 1080
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1081
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1083
    array-length v9, v5

    move/from16 v12, v16

    :goto_7
    if-ge v12, v9, :cond_b

    .line 1085
    aget-object v15, v5, v12

    aget-object v0, v14, v12

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v12, v12, 0x1

    const/16 v15, -0x9

    move-object/from16 v0, p0

    goto :goto_7

    .line 1086
    :cond_a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires differently signed "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b
    move/from16 v5, v16

    goto/16 :goto_8

    .line 1074
    :cond_c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires differently signed "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1097
    :cond_d
    :try_start_1
    aget-object v0, v14, v16

    move/from16 v5, v16

    invoke-static {v0, v5}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1106
    invoke-virtual {v12, v0}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_8

    .line 1107
    :cond_e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires differently signed "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1100
    :catch_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " declares bad certificate digest for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x82

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1056
    :cond_f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires unavailable "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1048
    :cond_10
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires unavailable "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v13, p10

    const/4 v5, 0x0

    :goto_8
    if-nez v6, :cond_12

    .line 1114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    :cond_12
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1014
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_13
    return-object v6
.end method

.method public commitSharedLibraryChanges(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/List;Ljava/util/Map;I)Ljava/util/ArrayList;
    .locals 9

    .line 645
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 649
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SharedLibraryInfo;

    .line 650
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p4

    .line 654
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 656
    :try_start_2
    const-string p1, "PackageManager"

    const-string/jumbo p2, "updateSharedLibraries failed: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    and-int/lit8 p0, p5, 0x10

    if-nez p0, :cond_2

    .line 661
    invoke-virtual {v3, v4, v5, v8}, Lcom/android/server/pm/SharedLibrariesImpl;->updateAllSharedLibrariesLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 663
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V
    .locals 4

    .line 773
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v1, :cond_0

    .line 776
    new-instance v1, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>()V

    .line 777
    iget-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 781
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/utils/WatchedLongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 12

    .line 1128
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v0

    .line 1130
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_9

    .line 1132
    iget-object v5, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1133
    iget-object v6, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 1134
    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 1138
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_8

    .line 1140
    invoke-virtual {v5, v7}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SharedLibraryInfo;

    if-nez v0, :cond_3

    if-nez v4, :cond_2

    .line 1143
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1144
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1146
    :cond_1
    const-string v4, "Libraries:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1149
    :cond_2
    const-string v9, "  "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1151
    :cond_3
    const-string v9, "lib,"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1153
    :goto_2
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1155
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    .line 1158
    const-string v9, " -> "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    :cond_5
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1161
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1162
    const-string v9, " (so) "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 1164
    :cond_6
    const-string v9, " (jar) "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    :goto_3
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 1168
    :cond_7
    const-string v9, " (apk) "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1171
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 12

    .line 1182
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1184
    iget-object v3, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1185
    iget-object v4, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 1186
    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v3, :cond_0

    goto :goto_4

    .line 1190
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    .line 1192
    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    const-wide v7, 0x20b00000003L

    .line 1194
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1195
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-wide v10, 0x10900000001L

    invoke-virtual {p1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1196
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    move v9, v1

    :goto_2
    const-wide v10, 0x10800000002L

    .line 1197
    invoke-virtual {p1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz v9, :cond_2

    const-wide v9, 0x10900000003L

    .line 1200
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1199
    invoke-virtual {p1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_3

    :cond_2
    const-wide v9, 0x10900000004L

    .line 1203
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1202
    invoke-virtual {p1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1205
    :goto_3
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public executeSharedLibrariesUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 562
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 564
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V
    .locals 9

    .line 585
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V

    if-eqz p5, :cond_7

    .line 589
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 592
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 593
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v8, v1, 0x1

    move-object v4, v2

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    .line 594
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->addSharedLibraryLPr(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Set;Landroid/content/pm/SharedLibraryInfo;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    move v1, v8

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 597
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->setPkgStateLibraryFiles(Ljava/util/Collection;)Lcom/android/server/pm/PackageSetting;

    .line 601
    array-length p0, p6

    new-array p0, p0, [I

    move p1, v7

    move p3, p1

    .line 603
    :goto_1
    array-length p4, p6

    if-ge p1, p4, :cond_2

    .line 604
    aget p4, p6, p1

    invoke-virtual {p2, p4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    .line 605
    aget v0, p6, p1

    aput v0, p0, p3

    move p3, p4

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 608
    :cond_2
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v7

    :cond_3
    :goto_2
    if-ge p2, p1, :cond_6

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 p2, p2, 0x1

    check-cast p4, Landroid/content/pm/SharedLibraryInfo;

    .line 609
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result p6

    if-nez p6, :cond_4

    goto :goto_2

    .line 612
    :cond_4
    iget-object p6, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 613
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p6

    if-nez p6, :cond_5

    .line 615
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shared lib without setting: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p6, "PackageManager"

    invoke-static {p6, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move p4, v7

    :goto_3
    if-ge p4, p3, :cond_3

    .line 619
    aget v0, p0, p4

    const/4 v2, 0x1

    invoke-virtual {p6, v2, v0}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_6
    return-void

    .line 623
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-void
.end method

.method public getAll()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;
    .locals 9

    .line 838
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 839
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getSdkSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 840
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 841
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getDynamicSharedLibraryInfos()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    .line 846
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getSdkSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 847
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getSdkSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 849
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 850
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 852
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 853
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 855
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getDynamicSharedLibraryInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 859
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 860
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v4

    :cond_4
    if-eqz v3, :cond_6

    .line 864
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScanRequestDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-nez v1, :cond_5

    .line 865
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    goto :goto_1

    .line 866
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScanRequestDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v2

    :goto_1
    if-eqz v3, :cond_8

    .line 868
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 869
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    .line 870
    :cond_7
    const-string p0, "PackageManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " declares libraries that are not declared on the system image; skipping"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 874
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    .line 875
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getDynamicSharedLibraryInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 876
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getDynamicSharedLibraryInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    .line 877
    invoke-virtual {v4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_9

    .line 889
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLibraryNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 890
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " declares library "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " that is not declared on system image; skipping"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 896
    :cond_9
    iget-object v6, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    const-wide/16 v7, -0x1

    .line 897
    :try_start_0
    invoke-virtual {p0, v5, v7, v8}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 898
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " declares library "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " that already exists; skipping"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 902
    :cond_a
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 903
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 902
    :goto_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_b
    return-object v2
.end method

.method public getLatestStaticSharedLibraVersion(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 395
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 396
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .locals 9

    .line 408
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 409
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 416
    invoke-virtual {p0, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 417
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    .line 418
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    .line 422
    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SharedLibraryInfo;

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final getLibraryPackage(Lcom/android/server/pm/Computer;Landroid/content/pm/SharedLibraryInfo;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 2

    .line 309
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object p0

    .line 310
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 314
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v0

    .line 312
    invoke-interface {p1, p2, v0, v1}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0

    .line 317
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 318
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap;"
        }
    .end annotation

    .line 279
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 293
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 274
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    return-object p0
.end method

.method public getStaticSharedLibLatestVersionSetting(Lcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageSetting;
    .locals 2

    .line 436
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 442
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 444
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 445
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 447
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    .locals 18

    move-object/from16 v0, p0

    .line 336
    iget-object v1, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 337
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 346
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    .line 347
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_5

    .line 350
    invoke-virtual {v5, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v9, :cond_1

    :cond_0
    move-object/from16 v13, p1

    move/from16 v17, v8

    const/16 v16, 0x0

    goto :goto_4

    .line 354
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    .line 356
    invoke-virtual {v9, v11}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/SharedLibraryInfo;

    move-object/from16 v13, p1

    .line 357
    invoke-virtual {v0, v13, v12}, Lcom/android/server/pm/SharedLibrariesImpl;->getLibraryPackage(Lcom/android/server/pm/Computer;Landroid/content/pm/SharedLibraryInfo;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    if-nez v14, :cond_2

    :goto_2
    move/from16 v17, v8

    const/16 v16, 0x0

    goto :goto_3

    .line 363
    :cond_2
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v15

    sub-long v15, v3, v15

    cmp-long v15, v15, p4

    if-gez v15, :cond_3

    goto :goto_2

    .line 367
    :cond_3
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_2

    .line 371
    :cond_4
    new-instance v15, Landroid/content/pm/VersionedPackage;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 372
    invoke-virtual {v12}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v12

    move/from16 v17, v8

    const/16 v16, 0x0

    invoke-virtual {v12}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v7

    invoke-direct {v15, v14, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 371
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v17

    goto :goto_1

    :goto_4
    add-int/lit8 v8, v17, 0x1

    goto :goto_0

    :cond_5
    const/16 v16, 0x0

    .line 376
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v4, v16

    :goto_5
    if-ge v4, v3, :cond_7

    .line 378
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/VersionedPackage;

    .line 380
    iget-object v6, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 381
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 380
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 384
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    cmp-long v5, v7, p2

    if-ltz v5, :cond_6

    return v6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    return v16
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removeSharedLibrary(Ljava/lang/String;J)Z
    .locals 12

    .line 790
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 791
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedLongSparseArray;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 793
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    .line 795
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/server/utils/WatchedLongSparseArray;->indexOfKey(J)I

    move-result v3

    if-gez v3, :cond_1

    .line 797
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    .line 799
    :cond_1
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/content/pm/SharedLibraryInfo;

    .line 801
    iget-object v3, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 804
    iget-object v3, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v10, v3

    :goto_0
    if-ge v2, v10, :cond_5

    aget v9, v3, v2

    const-wide/16 v6, 0x0

    const/16 v8, 0x3e8

    .line 805
    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v6

    .line 807
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_2

    goto :goto_2

    .line 811
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/VersionedPackage;

    .line 812
    iget-object v8, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 813
    invoke-virtual {v7}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 812
    invoke-virtual {v8, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 815
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11, v9}, Lcom/android/server/pm/PackageSetting;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    :cond_5
    invoke-virtual {v0, p2, p3}, Lcom/android/server/utils/WatchedLongSparseArray;->remove(J)V

    .line 821
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result p2

    if-gtz p2, :cond_6

    .line 822
    iget-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    .line 824
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object p1

    .line 825
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 p0, 0x1

    return p0

    .line 829
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/SharedLibrariesRead;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedLibrariesRead;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->snapshot()Lcom/android/server/pm/SharedLibrariesRead;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public updateAllSharedLibrariesLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v1, p0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 687
    invoke-static/range {p1 .. p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v0

    move-object v0, v8

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v8

    move-object v2, v0

    move-object v9, v2

    :cond_1
    :goto_0
    if-nez v9, :cond_2

    move-object v3, v8

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 691
    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    :goto_1
    if-eqz v3, :cond_3

    .line 693
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    goto :goto_2

    :cond_3
    move-object v4, v8

    :goto_2
    if-eqz v3, :cond_4

    .line 695
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    move-object v5, v3

    goto :goto_3

    :cond_4
    move-object v5, v8

    .line 696
    :goto_3
    iget-object v3, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v7

    move v10, v3

    :goto_4
    if-ltz v10, :cond_c

    .line 697
    iget-object v3, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v10}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 698
    iget-object v6, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-eqz v4, :cond_5

    .line 700
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/SharedLibrariesImpl;->hasString(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 701
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/SharedLibrariesImpl;->hasString(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 702
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v11

    .line 703
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v12

    .line 702
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 704
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v11

    .line 705
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v12

    .line 704
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_6

    :cond_5
    if-nez v0, :cond_6

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    move-object v11, v0

    .line 711
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    if-nez v2, :cond_7

    .line 715
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 717
    :cond_7
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 718
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-static {v3, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object v12, v2

    move-object v2, v3

    move-object v3, v6

    move-object/from16 v6, p3

    .line 723
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 731
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 732
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v18

    .line 734
    iget-object v3, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    .line 735
    :try_start_1
    iget-object v13, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 736
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v17

    new-instance v19, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/16 v20, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 735
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_a

    .line 738
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 740
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAllSharedLibrariesLPw failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v0, v11

    move-object v2, v12

    :goto_6
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_b

    .line 734
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    throw v1

    :cond_c
    if-eqz v9, :cond_d

    .line 743
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_d
    return-object v0
.end method

.method public updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    .locals 8

    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0, p1, p5, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v6

    .line 551
    iget-object p5, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p5

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 553
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 552
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 554
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method
