.class public Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
.super Ljava/lang/Object;
.source "ActivitySnapshotController.java"


# instance fields
.field public final mActivityIds:Landroid/util/IntArray;

.field public final mFileId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 759
    iput p1, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    .line 760
    iput p2, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 0

    .line 764
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public filterExistActivities(Landroid/util/ArraySet;)[Lcom/android/server/wm/ActivityRecord;
    .locals 5

    .line 777
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 778
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 779
    invoke-static {v3}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    .line 781
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 783
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 786
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p0

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    .line 789
    new-array p0, p0, [Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public remove(I)V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 770
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 795
    const-string v1, "UserSavedFile{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v1, " fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v1, ", activityIds=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 801
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    .line 803
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 806
    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
