.class public Lcom/android/server/wm/PossibleDisplayInfoMapper;
.super Ljava/lang/Object;
.source "PossibleDisplayInfoMapper.java"


# instance fields
.field public final mDisplayInfos:Landroid/util/SparseArray;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-void
.end method


# virtual methods
.method public getPossibleDisplayInfos(I)Ljava/util/List;
    .locals 1

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->updatePossibleDisplayInfos(I)V

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removePossibleDisplayInfos(I)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final updateDisplayInfos(Ljava/util/Set;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayInfo;

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    iget v2, v0, Landroid/view/DisplayInfo;->displayId:I

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 105
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    iget v0, v0, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePossibleDisplayInfos(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getPossibleDisplayInfo(I)Ljava/util/Set;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->updateDisplayInfos(Ljava/util/Set;)V

    return-void
.end method
