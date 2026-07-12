.class public Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# instance fields
.field public users:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 416
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 420
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 421
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method

.method public appendAll([I)V
    .locals 4

    .line 424
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 425
    iget-object v3, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 428
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method

.method public contains(I)Z
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0
.end method

.method public final invalidateIsUserUnlockedCache()V
    .locals 0

    .line 446
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 432
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 433
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
