.class public Lcom/android/server/pm/SnapshotStatistics$BinMap;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# instance fields
.field public final mCount:I

.field public final mMaxBin:I

.field public final mUserKey:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    .line 175
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    .line 177
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    return-void
.end method


# virtual methods
.method public count()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    return p0
.end method

.method public getBin(I)I
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 184
    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    if-ge p1, v1, :cond_2

    move v1, v0

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 186
    aget v2, v2, v1

    if-gt p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 191
    :cond_2
    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    if-lt p1, v1, :cond_3

    .line 192
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    array-length p0, p0

    return p0

    :cond_3
    return v0
.end method

.method public userKeys()[I
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    return-object p0
.end method
