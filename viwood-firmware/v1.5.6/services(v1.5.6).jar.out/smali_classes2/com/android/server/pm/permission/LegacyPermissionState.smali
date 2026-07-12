.class public final Lcom/android/server/pm/permission/LegacyPermissionState;
.super Ljava/lang/Object;
.source "LegacyPermissionState.java"


# instance fields
.field public final mMissing:Landroid/util/SparseBooleanArray;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static checkUserId(I)V
    .locals 3

    if-ltz p0, :cond_0

    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V
    .locals 7

    if-ne p1, p0, :cond_0

    goto :goto_2

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 56
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 58
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    new-instance v5, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    iget-object v6, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    invoke-direct {v5, v6}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;-><init>(Lcom/android/server/pm/permission/LegacyPermissionState$UserState;)V

    .line 58
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 63
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 65
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/server/pm/permission/LegacyPermissionState;

    if-eq v2, v1, :cond_2

    return v0

    .line 90
    :cond_2
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 93
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 94
    iget-object v2, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 98
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 99
    iget-object v4, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .locals 0

    .line 118
    invoke-static {p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 119
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionStates(I)Ljava/util/Collection;
    .locals 0

    .line 172
    invoke-static {p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 173
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    if-nez p0, :cond_0

    .line 175
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->getPermissionStates()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public hasPermissionState(Ljava/util/Collection;)Z
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 154
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 156
    invoke-virtual {v3, v5}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isMissing(I)Z
    .locals 0

    .line 190
    invoke-static {p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 191
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V
    .locals 1

    .line 134
    invoke-static {p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;-><init>()V

    .line 138
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 76
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public setMissing(ZI)V
    .locals 0

    .line 204
    invoke-static {p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    if-eqz p1, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method
