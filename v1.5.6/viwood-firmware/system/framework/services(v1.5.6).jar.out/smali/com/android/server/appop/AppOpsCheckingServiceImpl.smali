.class public Lcom/android/server/appop/AppOpsCheckingServiceImpl;
.super Ljava/lang/Object;
.source "AppOpsCheckingServiceImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# static fields
.field static final CURRENT_VERSION:I = 0x4


# instance fields
.field public final mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

.field public final mContext:Landroid/content/Context;

.field public mFastWriteScheduled:Z

.field public final mFile:Landroid/util/AtomicFile;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mModeChangedListeners:Ljava/util/List;

.field public final mSwitchedOps:Landroid/util/SparseArray;

.field final mUidModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserPackageModes:Landroid/util/SparseArray;

.field public mVersionAtBoot:I

.field public final mWriteRunner:Ljava/lang/Runnable;

.field public mWriteScheduled:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 94
    iput v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Lcom/android/server/appop/LegacyAppOpStateParser;

    invoke-direct {v0}, Lcom/android/server/appop/LegacyAppOpStateParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 138
    iput-object p2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 139
    iput-object p3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    .line 140
    iput-object p4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mContext:Landroid/content/Context;

    .line 141
    iput-object p5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mSwitchedOps:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;)Z
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 701
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearAllModes()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 328
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 329
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 3

    .line 334
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 335
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_0

    .line 338
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 340
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 341
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 342
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 345
    :cond_2
    monitor-exit v0

    return-object p2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getForegroundOps(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;
    .locals 3

    .line 352
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 353
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    .line 356
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 358
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_1

    .line 360
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 362
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 363
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 364
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 367
    :cond_3
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    .line 169
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_1

    .line 173
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit v0

    return-object p0

    .line 175
    :cond_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 176
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .locals 1

    .line 155
    iget-object p2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_0

    .line 158
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    monitor-exit p2

    return-object p0

    .line 161
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPackageMode(Ljava/lang/String;II)I
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    .line 234
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_1

    .line 238
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    monitor-exit v0

    return p0

    .line 240
    :cond_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    .line 241
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPackagesWithNonDefaultModes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserPackage;",
            ">;"
        }
    .end annotation

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 682
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 683
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v2

    .line 684
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 685
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    .line 686
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 687
    iget-object v6, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 688
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v6

    .line 687
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 692
    :cond_2
    monitor-exit v1

    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUidMode(ILjava/lang/String;I)I
    .locals 1

    .line 181
    iget-object p2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 182
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_0

    .line 184
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    monitor-exit p2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit p2

    return p0

    .line 187
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUidsWithNonDefaultModes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 666
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 667
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 668
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 669
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 670
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 673
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readState()V
    .locals 6

    .line 507
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/appop/LegacyAppOpStateParser;->readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    .line 510
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 511
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 510
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 511
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public removePackage(Ljava/lang/String;I)Z
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 313
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    if-eqz p1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    const/4 p0, 0x1

    .line 318
    monitor-exit v0

    return p0

    .line 320
    :cond_1
    monitor-exit v0

    return v1

    .line 321
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeUid(I)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    .line 301
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 305
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetUseFullScreenIntentLocked()V
    .locals 15

    .line 635
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 637
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 638
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 639
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/permission/PermissionManager;

    .line 640
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager;

    const/16 v4, 0x85

    .line 642
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v5

    .line 644
    invoke-interface {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 647
    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, v0, v8

    .line 648
    array-length v10, v1

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_1

    aget v12, v1, v11

    const-wide/16 v13, 0x0

    .line 649
    invoke-virtual {v2, v9, v13, v14, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    .line 651
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 650
    invoke-virtual {v3, v9, v5, v12}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_0

    .line 653
    const-string v12, "default:0"

    .line 657
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14

    .line 653
    invoke-virtual {p0, v13, v12, v4, v14}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->setUidMode(ILjava/lang/String;II)Z

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final scheduleFastWriteLocked()V
    .locals 3

    .line 380
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 382
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 383
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final scheduleWriteLocked()V
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 375
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setPackageMode(Ljava/lang/String;III)V
    .locals 5

    .line 246
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p4, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    if-eq p3, v0, :cond_0

    .line 251
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 252
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v4, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-ne p3, v4, :cond_2

    .line 264
    monitor-exit v1

    return-void

    :cond_2
    if-ne p3, v0, :cond_3

    .line 268
    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 269
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 270
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 272
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 277
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 278
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    if-nez v3, :cond_5

    .line 281
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 282
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_5
    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 291
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_7

    .line 292
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    invoke-interface {v1, p1, p4, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onPackageModeChanged(Ljava/lang/String;III)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_7
    return-void

    .line 289
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setUidMode(ILjava/lang/String;II)Z
    .locals 5

    .line 192
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move v3, v0

    :goto_0
    const/4 v4, 0x0

    if-ne p4, v3, :cond_1

    .line 202
    monitor-exit v1

    return v4

    :cond_1
    if-ne p4, v0, :cond_2

    .line 206
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 207
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 212
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    :cond_3
    invoke-virtual {v2, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleWriteLocked()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_5

    .line 223
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    invoke-interface {p0, p1, p3, p4, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onUidModeChanged(IIILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x1

    return p0

    .line 220
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public shutdown()V
    .locals 2

    .line 517
    monitor-enter p0

    .line 518
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 519
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 520
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 521
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 524
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->writeState()V

    :cond_1
    return-void

    .line 524
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeLocked(I)V

    .line 150
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final upgradeLocked(I)V
    .locals 3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 535
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading app-ops xml from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyAppOpsServiceInterfaceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeRunAnyInBackgroundLocked()V

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeScheduleExactAlarmLocked()V

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->resetUseFullScreenIntentLocked()V

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    :cond_4
    :goto_1
    return-void
.end method

.method public upgradeRunAnyInBackgroundLocked()V
    .locals 10

    .line 561
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x46

    const/16 v4, 0x3f

    if-ge v2, v0, :cond_1

    .line 563
    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    .line 565
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 568
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 574
    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 575
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 577
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_3

    .line 579
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    .line 581
    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_2

    .line 584
    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public upgradeScheduleExactAlarmLocked()V
    .locals 14

    .line 598
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 600
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 601
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const/16 v3, 0x6b

    .line 604
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v4

    .line 603
    invoke-interface {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 607
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v0, v6

    .line 608
    array-length v8, v1

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v1, v9

    const-wide/16 v11, 0x0

    .line 609
    invoke-virtual {v2, v7, v11, v12, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v10

    .line 611
    const-string v11, "default:0"

    invoke-virtual {p0, v10, v11, v3}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->getUidMode(ILjava/lang/String;I)I

    move-result v12

    .line 615
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 616
    invoke-virtual {p0, v10, v11, v3, v5}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->setUidMode(ILjava/lang/String;II)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeState()V
    .locals 17

    move-object/from16 v1, p0

    .line 390
    iget-object v2, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 400
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 401
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 402
    const-string v4, "app-ops"

    invoke-interface {v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    const-string/jumbo v4, "v"

    const/4 v6, 0x4

    invoke-interface {v0, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 406
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 410
    iget-object v7, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 411
    :try_start_2
    iget-object v8, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_0

    .line 413
    iget-object v11, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 414
    iget-object v12, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 415
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 417
    :cond_0
    iget-object v10, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    .line 419
    iget-object v12, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 420
    iget-object v13, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 421
    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 422
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 423
    invoke-virtual {v6, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v12, :cond_1

    .line 426
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    .line 427
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseIntArray;

    .line 428
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v14, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_1

    .line 431
    :cond_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_4

    .line 434
    :try_start_3
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 435
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    .line 437
    const-string/jumbo v11, "uid"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    const-string/jumbo v11, "n"

    invoke-interface {v0, v12, v11, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v7, :cond_3

    .line 442
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 443
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .line 444
    const-string/jumbo v14, "op"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    const-string/jumbo v14, "n"

    invoke-interface {v0, v15, v14, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    const-string/jumbo v12, "m"

    invoke-interface {v0, v15, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    const-string/jumbo v12, "op"

    invoke-interface {v0, v15, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 449
    :cond_3
    const-string/jumbo v7, "uid"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v10, :cond_7

    .line 453
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 455
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 457
    const-string/jumbo v8, "user"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    const-string/jumbo v8, "n"

    invoke-interface {v0, v15, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v5, :cond_6

    .line 462
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 463
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseIntArray;

    .line 465
    const-string/jumbo v12, "pkg"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 466
    const-string/jumbo v12, "n"

    invoke-interface {v0, v15, v12, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v9, :cond_5

    .line 470
    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 471
    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 473
    const-string/jumbo v15, "op"

    move/from16 v16, v4

    const/4 v4, 0x0

    invoke-interface {v0, v4, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const-string/jumbo v15, "n"

    invoke-interface {v0, v4, v15, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const-string/jumbo v13, "m"

    invoke-interface {v0, v4, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    const-string/jumbo v13, "op"

    invoke-interface {v0, v4, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    goto :goto_7

    :cond_5
    move/from16 v16, v4

    .line 478
    const-string/jumbo v4, "pkg"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v16

    goto :goto_6

    :cond_6
    move/from16 v16, v4

    .line 480
    const-string/jumbo v4, "user"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v16, 0x1

    goto/16 :goto_5

    .line 483
    :cond_7
    const-string v4, "app-ops"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 485
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_a

    .line 431
    :goto_8
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 487
    :goto_9
    :try_start_6
    const-string v4, "LegacyAppOpsServiceInterfaceImpl"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 490
    :goto_a
    monitor-exit v2

    goto :goto_b

    :catch_1
    move-exception v0

    .line 395
    const-string v1, "LegacyAppOpsServiceInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    monitor-exit v2

    :goto_b
    return-void

    .line 490
    :goto_c
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method
