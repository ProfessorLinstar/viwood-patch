.class public Lcom/android/server/wm/ActivitySnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "ActivitySnapshotController.java"


# instance fields
.field public final mOnBackPressedActivities:Landroid/util/ArraySet;

.field final mPendingDeleteActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingLoadActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemoveActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mSavedFilesInOrder:Ljava/util/ArrayList;

.field public final mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTmpBelowActivities:Ljava/util/ArrayList;

.field public final mTmpTransitionParticipants:Ljava/util/ArrayList;

.field public final mUserSavedFiles:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$UFtlSz8H01SEaT5oyvUlsyj6zTk(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskFragment;)Z
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$skAS2XdAF4jBY4e2YOQOtEL1n6A(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->lambda$adjustSavedFileOrder$2(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vu49lpFwkreDTHjGOPW9Eij0xec(Lcom/android/server/wm/ActivitySnapshotController;ZLjava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController;->lambda$getActivityBelow$1(ZLjava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSnapshotLoader(Lcom/android/server/wm/ActivitySnapshotController;)Lcom/android/server/wm/AppSnapshotLoader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 102
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110140

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotEnabled(Z)V

    .line 108
    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 110
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 114
    new-instance p2, Lcom/android/server/wm/AppSnapshotLoader;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    .line 115
    new-instance p1, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-direct {p1}, Lcom/android/server/wm/ActivitySnapshotCache;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->initialize(Lcom/android/server/wm/SnapshotCache;)V

    return-void
.end method

.method public static createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .locals 7

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110287

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 136
    new-instance v1, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "activity_snapshots"

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;Ljava/lang/String;ZFZ)V

    return-object v1
.end method

.method public static getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 0

    .line 413
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 3

    .line 558
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 559
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-eq p0, v2, :cond_1

    .line 560
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V
    .locals 0

    .line 484
    iget-object p4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/ActivitySnapshotController;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V

    .line 485
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 486
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 492
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addOnBackPressedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V
    .locals 5

    const/4 v0, 0x0

    .line 684
    aget v1, p3, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(II)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 686
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Duplicate request for recording activity snapshot "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 690
    :cond_0
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 691
    aget v2, p3, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 693
    :cond_1
    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;-><init>(II)V

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v2

    .line 695
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 696
    aget v4, p3, v3

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 698
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v2, p3}, Landroid/util/IntArray;->addAll([I)V

    .line 699
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 702
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_3

    .line 703
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->purgeSavedFile()V

    :cond_3
    return-void
.end method

.method public final adjustSavedFileOrder(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 568
    new-instance v0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivitySnapshotController;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public beginSnapshotProcess()V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    return-void
.end method

.method public final cleanUpUserFiles(I)V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$1;

    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/wm/ActivitySnapshotController$1;-><init>(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearOnBackPressedActivities()V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .locals 0

    .line 120
    new-instance p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/android/server/wm/ActivitySnapshotController;->createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .line 732
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 735
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 736
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UserSavedFile userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 739
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    .line 740
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 742
    :cond_0
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_1

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SavedFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public endSnapshotProcess()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->postProcess()V

    return-void
.end method

.method public findAppTokenForSnapshot(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 618
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canCaptureSnapshot()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 55
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public findSavedFile(II)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
    .locals 0

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object p0

    .line 649
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    return-object p0
.end method

.method public findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
    .locals 1

    .line 643
    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 644
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(II)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V
    .locals 5

    .line 497
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 501
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 505
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    .line 506
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eq v2, v3, :cond_8

    .line 507
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 519
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 524
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V

    return-void

    .line 531
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 532
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 533
    :cond_4
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 534
    :goto_0
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Task;I)V

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 544
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 545
    :cond_6
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_7
    new-instance p1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivitySnapshotController;ZLjava/util/ArrayList;)V

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    return-void

    :cond_8
    :goto_1
    if-eqz p2, :cond_a

    .line 513
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    .line 514
    :cond_a
    :goto_3
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 0

    .line 629
    sget-object p0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;
    .locals 6

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 151
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 152
    iget-object v3, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    array-length v4, p1

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move v4, v0

    :goto_0
    if-ltz v3, :cond_2

    .line 157
    aget-object v5, p1, v3

    invoke-static {v5}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    xor-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 159
    :cond_2
    iget p1, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    if-ne p1, v4, :cond_3

    .line 160
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/ActivitySnapshotCache;

    iget-object p1, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->getSnapshotInner(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getTaskDescription(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 606
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public bridge synthetic getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 55
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getTaskDescription(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method public getTopActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 0
    return-object p1
.end method

.method public bridge synthetic getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 55
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getTopActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getUserFiles(I)Landroid/util/SparseArray;
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->cleanUpUserFiles(I)V

    .line 639
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public final handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 437
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    const-string v2, "load-snapshot"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    const-string v2, "remove-snapshot"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    return-void
.end method

.method public final handleTaskTransition(Lcom/android/server/wm/Task;)V
    .locals 4

    .line 457
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    const-string v3, "load-snapshot"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->adjustSavedFileOrder(Lcom/android/server/wm/Task;)V

    return-void

    .line 474
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    const-string v1, "remove-snapshot"

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    return-void
.end method

.method public handleTransitionFinish(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 420
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 422
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivitySnapshotController;->handleTaskTransition(Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 424
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 430
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 431
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public hasRecord(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initSnapshotScale()F
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050109

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final synthetic lambda$adjustSavedFileOrder$2(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 569
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 572
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final synthetic lambda$getActivityBelow$1(ZLjava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 548
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    .line 549
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 550
    invoke-static {p3, p0}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 551
    :cond_0
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public loadActivitySnapshot()V
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 312
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 314
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 317
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 322
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 323
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->filterExistActivities(Landroid/util/ArraySet;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 327
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 331
    :cond_4
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/ActivitySnapshotController;->loadSnapshotInner([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public loadSnapshotInner([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;)V
    .locals 8

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    iget v5, p2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget v6, p2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    iget-object v7, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;-><init>(Lcom/android/server/wm/ActivitySnapshotController;[Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->insertQueueAtFirstLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 340
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    .line 405
    iget-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    const/4 v0, 0x0

    const-string v1, "remove-snapshot"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->postProcess()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 582
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final postProcess()V
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->loadActivitySnapshot()V

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->removeCachedFiles(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    return-void
.end method

.method public final purgeSavedFile()V
    .locals 8

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x14

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 714
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x15

    :goto_0
    if-ltz v0, :cond_2

    .line 716
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 717
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    iget v5, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 718
    iget-object v5, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_1
    if-ltz v5, :cond_1

    .line 719
    iget-object v6, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v6, Lcom/android/server/wm/ActivitySnapshotCache;

    iget-object v7, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v7, v5}, Landroid/util/IntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 720
    iget-object v6, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 722
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 724
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2
    if-ltz v0, :cond_3

    .line 725
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 726
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v4, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget v2, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public recordSnapshot(Ljava/util/ArrayList;)V
    .locals 6

    .line 350
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v0, v0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->peekWriteQueueSize()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v0, v0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 357
    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->peekQueueSize()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 361
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 362
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 364
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->recordSnapshotInner(Lcom/android/server/wm/WindowContainer;ZLjava/util/function/Consumer;)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 367
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    :cond_2
    if-eqz v0, :cond_7

    .line 369
    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v2

    aput v2, v1, v3

    .line 370
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V

    return-void

    .line 375
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 377
    iget-object v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 378
    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 383
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 384
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 385
    iget-object v5, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v5, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)V

    .line 386
    invoke-static {v4}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_5
    iget p1, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V

    return-void

    .line 358
    :cond_6
    :goto_1
    const-string p0, "WindowManager"

    const-string p1, "Skipping recording activity snapshot, too many requests!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public final removeCachedFiles(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 653
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 655
    iget-object v0, p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 656
    iget-object v1, p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 657
    iget-object v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v2, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SnapshotCache;->onIdRemoved(Ljava/lang/Integer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 665
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 666
    iget-object v2, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 667
    iget-object v3, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 668
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->remove(I)V

    .line 669
    iget-object v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v4, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SnapshotCache;->onIdRemoved(Ljava/lang/Integer;)V

    .line 670
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v0, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    :cond_1
    return-void
.end method

.method public resetTmpFields()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public use16BitFormat()Z
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result p0

    return p0
.end method
