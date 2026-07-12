.class public final Lcom/android/server/display/mode/ModeChangeObserver;
.super Ljava/lang/Object;
.source "ModeChangeObserver.java"


# instance fields
.field mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public final mLooper:Landroid/os/Looper;

.field mModeChangeListener:Landroid/view/DisplayEventReceiver;

.field public final mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

.field public final mRejectedModesMap:Landroid/util/LongSparseArray;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRejectedModesMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/ModeChangeObserver;)Lcom/android/server/display/mode/VotesStorage;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateRejectedModesListByDisplay(Lcom/android/server/display/mode/ModeChangeObserver;JI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/ModeChangeObserver;->updateRejectedModesListByDisplay(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/ModeChangeObserver;->updateVoteForDisplay(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Landroid/os/Looper;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    .line 46
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    .line 57
    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 58
    iput-object p2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 59
    iput-object p3, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mLooper:Landroid/os/Looper;

    .line 60
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 5

    .line 67
    invoke-virtual {p0}, Lcom/android/server/display/mode/ModeChangeObserver;->updatePhysicalIdToLogicalIdMap()V

    .line 68
    new-instance v0, Lcom/android/server/display/mode/ModeChangeObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/ModeChangeObserver$1;-><init>(Lcom/android/server/display/mode/ModeChangeObserver;)V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 102
    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 106
    new-instance v0, Lcom/android/server/display/mode/ModeChangeObserver$2;

    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/mode/ModeChangeObserver$2;-><init>(Lcom/android/server/display/mode/ModeChangeObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mModeChangeListener:Landroid/view/DisplayEventReceiver;

    return-void
.end method

.method public final updatePhysicalIdToLogicalIdMap()V
    .locals 8

    .line 142
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 144
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {v3}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v4

    .line 149
    instance-of v5, v4, Landroid/view/DisplayAddress$Physical;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/DisplayAddress$Physical;

    .line 150
    iget-object v5, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v6

    .line 151
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 150
    invoke-virtual {v5, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateRejectedModesListByDisplay(JI)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    .line 159
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 162
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 165
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateVoteForDisplay(I)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    const-string p0, "ModeChangeObserver"

    const-string p1, "Added or Changed display has disappeared"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v0

    .line 132
    instance-of v1, v0, Landroid/view/DisplayAddress$Physical;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    .line 133
    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v0

    .line 134
    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 136
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    if-eqz v0, :cond_1

    .line 137
    invoke-static {v0}, Lcom/android/server/display/mode/Vote;->forRejectedModes(Ljava/util/Set;)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    .line 136
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_2
    return-void
.end method
