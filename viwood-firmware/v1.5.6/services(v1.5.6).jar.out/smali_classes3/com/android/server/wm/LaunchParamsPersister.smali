.class public Lcom/android/server/wm/LaunchParamsPersister;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"


# instance fields
.field public final mLaunchParamsMap:Landroid/util/SparseArray;

.field public final mLoadingTaskMap:Landroid/util/SparseArray;

.field public mPackageList:Lcom/android/server/pm/PackageList;

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mUserFolderGetter:Ljava/util/function/IntFunction;

.field public final mWindowLayoutAffinityMap:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$Ip_uUCJLGuS3Gr9M-J6e9lMwVq4(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .locals 1

    .line 177
    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister-IA;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$SuSbIWUcHvyh2nJ-2XrpVocJaLc(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .locals 0

    .line 299
    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->-$$Nest$fgetmComponentName(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dzkIUtZw9QdSf01gGQQHsakwwiQ(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 0

    .line 224
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageList(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/pm/PackageList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersisterQueue(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/PersisterQueue;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupervisor(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/ActivityTaskSupervisor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddComponentNameToLaunchParamAffinityMapIfNotNull(Lcom/android/server/wm/LaunchParamsPersister;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLaunchParamFolder(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetParamFile(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/PersisterQueue;",
            "Lcom/android/server/wm/ActivityTaskSupervisor;",
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLoadingTaskMap:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 119
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 120
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 121
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public final addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 225
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getLaunchParamFolder(I)Ljava/io/File;
    .locals 1

    .line 313
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    invoke-interface {p0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 314
    new-instance p1, Ljava/io/File;

    const-string v0, "launch_params"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    :goto_0
    if-eqz p1, :cond_1

    .line 230
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_1

    :cond_1
    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 231
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/LaunchParamsPersister;->waitAndMoveResultIfLoading(I)V

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    goto :goto_2

    .line 236
    :cond_2
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 237
    :cond_3
    iget-object p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 240
    :goto_2
    invoke-virtual {p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 241
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_4

    goto :goto_5

    .line 247
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    if-eqz p1, :cond_8

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 251
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 252
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 253
    :goto_3
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 254
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 255
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    .line 260
    iget-wide v3, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    iget-wide v5, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    :cond_6
    move-object v0, v2

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-nez v0, :cond_9

    :goto_5
    return-void

    .line 271
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 276
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    iput-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 278
    :cond_a
    iget p0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iput p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 279
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .locals 1

    .line 307
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x2f

    const/16 v0, 0x2d

    .line 308
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 309
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public onCleanupUser(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLoadingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 144
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .line 125
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 126
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister-IA;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLoadingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicated onUnlockUser "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LaunchParamsPersister"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILcom/android/server/wm/LaunchParamsPersister-IA;)V

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLoadingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    invoke-static {v0}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->-$$Nest$mexecute(Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;)V

    return-void
.end method

.method public removeRecordForPackage(Ljava/lang/String;)V
    .locals 7

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 286
    invoke-virtual {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v2

    .line 287
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 288
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_1

    .line 289
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 290
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 291
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 292
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {v2, v4, p1}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 302
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance p1, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister-IA;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 303
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    .line 164
    iget-object v3, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->waitAndMoveResultIfLoading(I)V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_1
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 178
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/LaunchParamsPersister;->saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result p1

    .line 180
    iget-object p2, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister-IA;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .locals 2

    .line 191
    new-instance p0, Landroid/view/DisplayInfo;

    invoke-direct {p0}, Landroid/view/DisplayInfo;-><init>()V

    .line 192
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 194
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 195
    iget-object p0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object p0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 197
    iget p0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq p0, v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, p2

    .line 198
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    iput p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 200
    iget-object p2, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_1

    .line 201
    iget-object v1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    or-int/2addr p0, p2

    .line 202
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 204
    :cond_1
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    or-int/2addr p0, p2

    .line 205
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 208
    :goto_1
    iget-object p1, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 209
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p0, p2

    .line 210
    iput-object p1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    :cond_2
    return p0
.end method

.method public final waitAndMoveResultIfLoading(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLoadingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->-$$Nest$mget(Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
