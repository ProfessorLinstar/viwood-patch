.class public Lcom/android/server/pm/UserManagerService$WatchedUserStates;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# instance fields
.field public final states:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 925
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 939
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public get(II)I
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public has(I)Z
    .locals 1

    .line 942
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    const/16 v0, -0x2710

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final invalidateIsUserUnlockedCache()V
    .locals 0

    .line 949
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public put(II)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
