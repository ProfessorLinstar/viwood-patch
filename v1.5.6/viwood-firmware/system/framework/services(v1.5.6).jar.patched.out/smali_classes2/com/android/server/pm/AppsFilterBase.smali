.class public abstract Lcom/android/server/pm/AppsFilterBase;
.super Ljava/lang/Object;
.source "AppsFilterBase.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilterSnapshot;


# static fields
.field public static DEBUG_LOGGING:Z = false

.field public static DEBUG_TRACING:Z = false


# instance fields
.field public volatile mCacheEnabled:Z

.field public volatile mCacheReady:Z

.field public final mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

.field public mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

.field public mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field public mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mHandler:Landroid/os/Handler;

.field public mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

.field public volatile mNeedToUpdateCacheForImplicitAccess:Z

.field public mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field public mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

.field public mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

.field public mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSystemAppsQueryable:Z

.field public mSystemSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public static synthetic $r8$lambda$EzD-3Qgs3agQ0FfI--Dk-PGWLFc(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 9

    .line 719
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 722
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 724
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-nez v4, :cond_0

    if-ge v5, v2, :cond_0

    .line 725
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 726
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 725
    invoke-interface {p2, v4, v6, v7, v8}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[app id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not installed]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 731
    :cond_1
    array-length p1, v4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    aget-object p1, v4, v3

    goto :goto_1

    .line 732
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-static {p2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 734
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1

    :cond_3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 833
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_0

    .line 834
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 835
    :cond_0
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-eqz p1, :cond_2

    .line 837
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    :cond_2
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    if-nez p5, :cond_3

    goto :goto_1

    .line 839
    :cond_3
    invoke-interface {p5, p3}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 7

    const/4 v0, 0x0

    move v6, v0

    .line 805
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 806
    invoke-virtual {p2, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 807
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    if-nez p4, :cond_0

    .line 812
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v3, v0

    goto :goto_2

    .line 813
    :cond_0
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    .line 809
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    goto :goto_5

    .line 817
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    if-nez p4, :cond_2

    .line 819
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v3, v0

    move-object v0, p0

    goto :goto_4

    .line 820
    :cond_2
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 816
    :goto_4
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static isQueryableBySdkSandbox(II)Z
    .locals 0

    .line 324
    invoke-static {p0}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    .locals 2

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    .line 705
    const-string/jumbo p0, "system"

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 704
    const-string p1, "AppsFilter"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 3

    .line 684
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 690
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, p1}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    .line 694
    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    .line 698
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 699
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 6

    .line 757
    const-string v0, "  queries via forceQueryable:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v2

    const-string v3, "forceQueryable"

    const-string v4, "  "

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V
    .locals 2

    .line 717
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 718
    new-instance v1, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p4, p5}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 738
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 739
    const-string p5, "Queries:"

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 741
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p3}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result p3

    if-nez p3, :cond_0

    .line 742
    const-string p3, "  DISABLED"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    sget-boolean p3, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-nez p3, :cond_0

    return-void

    .line 747
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "  system apps queryable: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p5, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 749
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 750
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 751
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 752
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 1

    .line 770
    const-string v0, "  queries via component:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 7

    .line 776
    const-string v0, "  queryable via interaction:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p3, v1

    .line 778
    const-string v3, "    User "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_1

    .line 780
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 779
    const-string v6, "      "

    invoke-static {p1, v4, v5, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    if-nez p2, :cond_1

    goto :goto_2

    .line 783
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 782
    invoke-static {p1, v3, v2, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 1

    .line 764
    const-string v0, "  queries via package name:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 1

    .line 790
    const-string v0, "  queryable via uses-library:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .locals 16

    move-object/from16 v0, p3

    .line 272
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    return-object v8

    .line 276
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    array-length v3, v0

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    .line 277
    :goto_0
    array-length v3, v0

    if-ge v10, v3, :cond_6

    .line 278
    aget v7, v0, v10

    .line 279
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    new-array v12, v11, [I

    .line 282
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v13, v3

    move-object v15, v8

    move v14, v9

    :goto_1
    if-ltz v13, :cond_5

    move-object/from16 v3, p4

    .line 283
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 284
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    const/16 v6, 0x2710

    if-ge v4, v6, :cond_1

    :goto_2
    move v4, v9

    goto :goto_3

    .line 288
    :cond_1
    invoke-static {v12, v9, v14, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v6

    if-ltz v6, :cond_2

    goto :goto_2

    :cond_2
    move v8, v4

    .line 292
    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    move-object/from16 v3, p1

    move v9, v6

    move-object/from16 v6, p2

    .line 293
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v15, :cond_3

    .line 296
    new-array v15, v11, [I

    :cond_3
    not-int v2, v9

    sub-int v3, v14, v2

    const/4 v4, 0x0

    .line 299
    invoke-static {v12, v2, v15, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    aput v8, v12, v2

    add-int/lit8 v2, v2, 0x1

    .line 301
    invoke-static {v15, v4, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, p0

    move v9, v4

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    move v4, v9

    .line 305
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p0

    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Lcom/android/server/utils/WatchedArrayMap;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 319
    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object p4

    .line 318
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public isForceQueryable(I)Z
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isImplicitlyQueryable(II)Z
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaComponent(II)Z
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 245
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 246
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p2, p4, p0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p0

    if-eqz p0, :cond_2

    return p1

    .line 251
    :cond_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_0
    if-ltz p2, :cond_2

    .line 253
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 254
    iget-object p6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p5, p4, p6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p5

    if-eqz p5, :cond_1

    return p1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isQueryableViaPackage(II)Z
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaUsesLibrary(II)Z
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaUsesPermission(II)Z
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRetainedImplicitlyQueryable(II)Z
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .locals 11

    move/from16 v5, p5

    .line 335
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    const-wide/32 v6, 0x40000

    if-eqz v0, :cond_0

    .line 336
    const-string/jumbo v0, "shouldFilterApplication"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 339
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v0, 0x2710

    const/4 v9, 0x0

    if-lt v8, v0, :cond_c

    .line 341
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    if-lt v1, v0, :cond_c

    .line 342
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    if-ne v8, v0, :cond_1

    goto/16 :goto_1

    .line 344
    :cond_1
    invoke-static {v8}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    .line 345
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 346
    invoke-static {v5, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 349
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 350
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result p0

    if-nez p0, :cond_2

    .line 351
    invoke-static {p2, p1}, Lcom/android/server/pm/AppsFilterBase;->isQueryableBySdkSandbox(II)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    move v9, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 371
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p0, :cond_3

    .line 372
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    return v9

    .line 354
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    if-eqz v0, :cond_6

    .line 356
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 355
    invoke-virtual {p0, p2, p1, v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_8

    .line 371
    sget-boolean p0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p0, :cond_5

    .line 372
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return v9

    .line 361
    :cond_6
    :try_start_2
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/Computer;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_8

    .line 371
    sget-boolean p0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p0, :cond_7

    .line 372
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7
    return v9

    .line 366
    :cond_8
    :try_start_3
    sget-boolean p1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, v8}, Lcom/android/server/pm/FeatureConfig;->isLoggingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 367
    :cond_9
    const-string p0, "BLOCKED"

    invoke-static {p3, p4, p0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    :cond_a
    sget-boolean p0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p0, :cond_b

    .line 372
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return v10

    .line 371
    :cond_c
    :goto_1
    sget-boolean p0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p0, :cond_d

    .line 372
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_d
    return v9

    .line 371
    :goto_2
    sget-boolean p1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p1, :cond_e

    .line 372
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 374
    :cond_e
    throw p0
.end method

.method public shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    .line 396
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    const-wide/32 v11, 0x40000

    if-eqz v1, :cond_0

    .line 397
    const-string/jumbo v1, "shouldFilterApplicationInternal"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 400
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v1}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    const-string v2, "AppsFilter"

    const/4 v13, 0x0

    if-nez v1, :cond_3

    .line 402
    :try_start_1
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_1

    .line 403
    const-string v0, "filtering disabled; skipped"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_28

    .line 673
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_2

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    return v13

    :cond_3
    const/4 v14, 0x1

    if-nez v8, :cond_5

    .line 408
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No setting found for non system uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_4

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    return v14

    .line 412
    :cond_5
    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_6

    .line 413
    const-string v1, "getAppId"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 415
    :cond_6
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 416
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    .line 417
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_7

    .line 418
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7
    if-eq v5, v6, :cond_8

    const/16 v1, 0x2710

    if-lt v5, v1, :cond_8

    if-ge v6, v1, :cond_9

    :cond_8
    move/from16 v16, v13

    goto/16 :goto_27

    .line 430
    :cond_9
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_a

    .line 431
    const-string v1, "callingSetting instanceof"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 433
    :cond_a
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 435
    instance-of v1, v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v4, 0x0

    if-eqz v1, :cond_c

    .line 436
    move-object v1, v8

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 437
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 440
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v1

    move-object/from16 v15, p1

    invoke-interface {v15, v1}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 442
    invoke-interface {v1}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_1

    :cond_b
    move-object/from16 v15, p1

    move-object v4, v1

    goto :goto_1

    :cond_c
    move-object/from16 v15, p1

    .line 449
    move-object v1, v8

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 450
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 449
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 452
    :cond_d
    :goto_1
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_e

    .line 453
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    :cond_e
    const-string v1, "DISABLED"

    if-eqz v4, :cond_13

    .line 457
    :try_start_4
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v16

    if-eqz v16, :cond_12

    move/from16 v16, v13

    iget-object v13, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    move/from16 v17, v14

    .line 458
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 459
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_f

    .line 460
    invoke-static {v8, v9, v1}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 673
    :cond_f
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_10

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_10
    return v16

    :cond_11
    :goto_2
    move-wide/from16 v18, v11

    goto :goto_4

    :cond_12
    move/from16 v16, v13

    move/from16 v17, v14

    goto :goto_2

    :cond_13
    move/from16 v16, v13

    move/from16 v17, v14

    .line 465
    :try_start_5
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v13, v13, -0x1

    :goto_3
    if-ltz v13, :cond_11

    .line 466
    :try_start_6
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v14, :cond_16

    move-wide/from16 v18, v11

    .line 467
    :try_start_7
    iget-object v11, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v11, v14}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 468
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_14

    .line 469
    invoke-static {v8, v9, v1}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 673
    :cond_14
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_15

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_15
    return v16

    :cond_16
    move-wide/from16 v18, v11

    :cond_17
    add-int/lit8 v13, v13, -0x1

    move-wide/from16 v11, v18

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide/from16 v18, v11

    goto/16 :goto_28

    .line 477
    :goto_4
    :try_start_8
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_18

    .line 478
    const-string/jumbo v1, "requestsQueryAllPackages"

    move-wide/from16 v11, v18

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_26

    :cond_18
    :goto_5
    if-eqz v4, :cond_1b

    .line 481
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 482
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_1f

    .line 494
    :try_start_9
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_19

    const-wide/32 v18, 0x40000

    .line 495
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :cond_19
    const-wide/32 v18, 0x40000

    .line 673
    :goto_6
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_1a

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1a
    return v16

    .line 486
    :cond_1b
    :try_start_a
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_1f

    .line 487
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    if-eqz v11, :cond_1e

    .line 488
    invoke-static {v11}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v11, :cond_1e

    .line 494
    :try_start_b
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_1c

    const-wide/32 v18, 0x40000

    .line 495
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    :cond_1c
    const-wide/32 v18, 0x40000

    .line 673
    :goto_8
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_1d

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1d
    return v16

    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 494
    :cond_1f
    :try_start_c
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_20

    const-wide/32 v18, 0x40000

    .line 495
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_20
    move-object v1, v4

    .line 501
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v4, :cond_23

    .line 503
    :try_start_d
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v0, :cond_21

    .line 504
    :try_start_e
    const-string/jumbo v0, "shouldFilterApplication: targetPkg is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 673
    :cond_21
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_22

    const-wide/32 v11, 0x40000

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_22
    return v17

    :catchall_3
    move-exception v0

    const-wide/32 v11, 0x40000

    goto/16 :goto_28

    :cond_23
    const-wide/32 v11, 0x40000

    .line 508
    :try_start_f
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v2, :cond_25

    .line 673
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_24

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_24
    return v16

    .line 514
    :cond_25
    :try_start_10
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_26

    .line 515
    const-string v2, "mForceQueryable"

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_9

    :catchall_4
    move-exception v0

    goto/16 :goto_25

    .line 517
    :cond_26
    :goto_9
    invoke-virtual {v0, v6}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v2, :cond_2a

    .line 518
    :try_start_11
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v0, :cond_27

    .line 519
    :try_start_12
    const-string v0, "force queryable"

    invoke-static {v8, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 524
    :cond_27
    :try_start_13
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v0, :cond_28

    const-wide/32 v11, 0x40000

    .line 525
    :try_start_14
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_a

    :cond_28
    const-wide/32 v11, 0x40000

    .line 673
    :goto_a
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_29

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_29
    return v16

    :catchall_5
    move-exception v0

    const-wide/32 v11, 0x40000

    goto/16 :goto_25

    :cond_2a
    const-wide/32 v11, 0x40000

    .line 524
    :try_start_15
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_2b

    .line 525
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 529
    :cond_2b
    :try_start_16
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_2c

    .line 530
    const-string v2, "mQueriesViaPackage"

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_b

    :catchall_6
    move-exception v0

    goto/16 :goto_24

    .line 532
    :cond_2c
    :goto_b
    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v2, :cond_30

    .line 533
    :try_start_17
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-eqz v0, :cond_2d

    .line 534
    :try_start_18
    const-string/jumbo v0, "queries package"

    invoke-static {v8, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 539
    :cond_2d
    :try_start_19
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    if-eqz v0, :cond_2e

    const-wide/32 v11, 0x40000

    .line 540
    :try_start_1a
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_c

    :cond_2e
    const-wide/32 v11, 0x40000

    .line 673
    :goto_c
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_2f

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2f
    return v16

    :catchall_7
    move-exception v0

    const-wide/32 v11, 0x40000

    goto/16 :goto_24

    :cond_30
    const-wide/32 v11, 0x40000

    .line 539
    :try_start_1b
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_31

    .line 540
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 544
    :cond_31
    :try_start_1c
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_32

    .line 545
    const-string v2, "mQueriesViaComponent"

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_d

    :catchall_8
    move-exception v0

    goto/16 :goto_23

    .line 547
    :cond_32
    :goto_d
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    const-string/jumbo v11, "queries component"

    if-nez v2, :cond_38

    .line 548
    :try_start_1d
    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 549
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_33

    .line 550
    invoke-static {v8, v9, v11}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 565
    :cond_33
    :try_start_1e
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_34

    const-wide/32 v18, 0x40000

    .line 566
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_e

    :cond_34
    const-wide/32 v18, 0x40000

    .line 673
    :goto_e
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_35

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_35
    return v16

    :cond_36
    move-object v2, v1

    :cond_37
    const-wide/32 v11, 0x40000

    goto :goto_10

    .line 555
    :cond_38
    :try_start_1f
    invoke-interface {v15}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v20

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    if-eqz v1, :cond_37

    .line 558
    :try_start_20
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    if-eqz v0, :cond_39

    .line 559
    :try_start_21
    invoke-static {v8, v9, v11}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 565
    :cond_39
    :try_start_22
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    if-eqz v0, :cond_3a

    const-wide/32 v11, 0x40000

    .line 566
    :try_start_23
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_f

    :cond_3a
    const-wide/32 v11, 0x40000

    .line 673
    :goto_f
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_3b

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3b
    return v16

    :catchall_9
    move-exception v0

    const-wide/32 v11, 0x40000

    goto/16 :goto_23

    .line 565
    :goto_10
    :try_start_24
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_3c

    .line 566
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 571
    :cond_3c
    :try_start_25
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_3d

    .line 572
    const-string v1, "mImplicitlyQueryable"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_11

    :catchall_a
    move-exception v0

    goto/16 :goto_22

    .line 574
    :cond_3d
    :goto_11
    invoke-static {v10, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 575
    invoke-virtual {v0, v7, v1}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    if-eqz v1, :cond_41

    .line 576
    :try_start_26
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    if-eqz v0, :cond_3e

    .line 577
    :try_start_27
    const-string v0, "implicitly queryable for user"

    invoke-static {v8, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 582
    :cond_3e
    :try_start_28
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    if-eqz v0, :cond_3f

    const-wide/32 v11, 0x40000

    .line 583
    :try_start_29
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto :goto_12

    :cond_3f
    const-wide/32 v11, 0x40000

    .line 673
    :goto_12
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_40

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_40
    return v16

    :catchall_b
    move-exception v0

    const-wide/32 v11, 0x40000

    goto/16 :goto_22

    :cond_41
    const-wide/32 v11, 0x40000

    .line 582
    :try_start_2a
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_42

    .line 583
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 588
    :cond_42
    :try_start_2b
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_43

    .line 589
    const-string v1, "mRetainedImplicitlyQueryable"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_13

    :catchall_c
    move-exception v0

    goto/16 :goto_21

    .line 591
    :cond_43
    :goto_13
    invoke-static {v10, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 592
    invoke-virtual {v0, v7, v1}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    if-eqz v1, :cond_47

    .line 593
    :try_start_2c
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d

    if-eqz v0, :cond_44

    .line 594
    :try_start_2d
    const-string/jumbo v0, "retained implicitly queryable for user"

    invoke-static {v8, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    .line 600
    :cond_44
    :try_start_2e
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    if-eqz v0, :cond_45

    const-wide/32 v11, 0x40000

    .line 601
    :try_start_2f
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto :goto_14

    :cond_45
    const-wide/32 v11, 0x40000

    .line 673
    :goto_14
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_46

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_46
    return v16

    :catchall_d
    move-exception v0

    const-wide/32 v11, 0x40000

    goto/16 :goto_21

    :cond_47
    const-wide/32 v11, 0x40000

    .line 600
    :try_start_30
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_48

    .line 601
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 606
    :cond_48
    :try_start_31
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_49

    .line 607
    const-string v1, "mOverlayReferenceMapper"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_15

    :catchall_e
    move-exception v0

    goto/16 :goto_20

    .line 609
    :cond_49
    :goto_15
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 611
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    move/from16 v7, v16

    :goto_16
    if-ge v7, v4, :cond_4e

    .line 613
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 614
    iget-object v11, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 615
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 614
    invoke-virtual {v11, v1, v10}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 616
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_4a

    .line 617
    const-string/jumbo v0, "matches shared user of package that acts on target of overlay"

    invoke-static {v2, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    .line 634
    :cond_4a
    :try_start_32
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_4b

    const-wide/32 v18, 0x40000

    .line 635
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    goto :goto_17

    :cond_4b
    const-wide/32 v18, 0x40000

    .line 673
    :goto_17
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_4c

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4c
    return v16

    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_4e
    const-wide/32 v11, 0x40000

    goto :goto_19

    .line 625
    :cond_4f
    :try_start_33
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 626
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 625
    invoke-virtual {v3, v1, v4}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_e

    if-eqz v1, :cond_4e

    .line 627
    :try_start_34
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_f

    if-eqz v0, :cond_50

    .line 628
    :try_start_35
    const-string v0, "acts on target of overlay"

    invoke-static {v2, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_e

    .line 634
    :cond_50
    :try_start_36
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_3

    if-eqz v0, :cond_51

    const-wide/32 v11, 0x40000

    .line 635
    :try_start_37
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    goto :goto_18

    :cond_51
    const-wide/32 v11, 0x40000

    .line 673
    :goto_18
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_52

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_52
    return v16

    :catchall_f
    move-exception v0

    const-wide/32 v11, 0x40000

    goto/16 :goto_20

    .line 634
    :goto_19
    :try_start_38
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_53

    .line 635
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    .line 640
    :cond_53
    :try_start_39
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_54

    .line 641
    const-string v1, "mQueryableViaUsesLibrary"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1a

    :catchall_10
    move-exception v0

    goto/16 :goto_1f

    .line 643
    :cond_54
    :goto_1a
    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result v1
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_10

    if-eqz v1, :cond_58

    .line 644
    :try_start_3a
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_11

    if-eqz v0, :cond_55

    .line 645
    :try_start_3b
    const-string/jumbo v0, "queryable for library users"

    invoke-static {v8, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_10

    .line 650
    :cond_55
    :try_start_3c
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3

    if-eqz v0, :cond_56

    const-wide/32 v11, 0x40000

    .line 651
    :try_start_3d
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    goto :goto_1b

    :cond_56
    const-wide/32 v11, 0x40000

    .line 673
    :goto_1b
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_57

    .line 674
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_57
    return v16

    :catchall_11
    move-exception v0

    const-wide/32 v11, 0x40000

    goto :goto_1f

    :cond_58
    const-wide/32 v11, 0x40000

    .line 650
    :try_start_3e
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_59

    .line 651
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    .line 656
    :cond_59
    :try_start_3f
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_5a

    .line 657
    const-string v1, "mQueryableViaUsesPermission"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1c

    :catchall_12
    move-exception v0

    goto :goto_1e

    .line 659
    :cond_5a
    :goto_1c
    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesPermission(II)Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_12

    if-eqz v0, :cond_5e

    .line 660
    :try_start_40
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_14

    if-eqz v0, :cond_5b

    .line 661
    :try_start_41
    const-string/jumbo v0, "queryable for permission users"

    invoke-static {v8, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_12

    .line 666
    :cond_5b
    :try_start_42
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_13

    if-eqz v0, :cond_5c

    const-wide/32 v18, 0x40000

    .line 667
    :try_start_43
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    goto :goto_1d

    :cond_5c
    const-wide/32 v18, 0x40000

    .line 673
    :goto_1d
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_5d

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5d
    return v16

    :catchall_13
    move-exception v0

    const-wide/32 v18, 0x40000

    goto/16 :goto_28

    :catchall_14
    move-exception v0

    const-wide/32 v18, 0x40000

    goto :goto_1e

    :cond_5e
    const-wide/32 v18, 0x40000

    .line 666
    :try_start_44
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_5f

    .line 667
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    .line 673
    :cond_5f
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_60

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_60
    return v17

    .line 666
    :goto_1e
    :try_start_45
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_61

    const-wide/32 v18, 0x40000

    .line 667
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 669
    :cond_61
    throw v0

    .line 650
    :goto_1f
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_62

    const-wide/32 v18, 0x40000

    .line 651
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 653
    :cond_62
    throw v0

    .line 634
    :goto_20
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_63

    const-wide/32 v18, 0x40000

    .line 635
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 637
    :cond_63
    throw v0

    .line 600
    :goto_21
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_64

    const-wide/32 v18, 0x40000

    .line 601
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 603
    :cond_64
    throw v0

    .line 582
    :goto_22
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_65

    const-wide/32 v18, 0x40000

    .line 583
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 585
    :cond_65
    throw v0

    .line 565
    :goto_23
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_66

    const-wide/32 v18, 0x40000

    .line 566
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    :cond_66
    throw v0

    .line 539
    :goto_24
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_67

    const-wide/32 v18, 0x40000

    .line 540
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 542
    :cond_67
    throw v0

    .line 524
    :goto_25
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_68

    const-wide/32 v18, 0x40000

    .line 525
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 527
    :cond_68
    throw v0

    .line 494
    :goto_26
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_69

    const-wide/32 v18, 0x40000

    .line 495
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    :cond_69
    throw v0

    .line 423
    :goto_27
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_6a

    .line 424
    const-string/jumbo v0, "same app id or core app id"

    invoke-static {v8, v9, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    .line 673
    :cond_6a
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_6b

    const-wide/32 v18, 0x40000

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_6b
    return v16

    .line 673
    :goto_28
    sget-boolean v1, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v1, :cond_6c

    const-wide/32 v18, 0x40000

    .line 674
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 676
    :cond_6c
    throw v0
.end method

.method public shouldFilterApplicationUsingCache(III)Z
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    .line 379
    const-string v2, "AppsFilter"

    if-gez v0, :cond_0

    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Encountered calling uid with no cached rules: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 384
    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 385
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p3, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_1

    .line 387
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Encountered calling -> target with no cached rules: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 391
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result p0

    return p0
.end method
