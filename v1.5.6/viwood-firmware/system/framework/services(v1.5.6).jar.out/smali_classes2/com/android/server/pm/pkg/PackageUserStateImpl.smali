.class public Lcom/android/server/pm/pkg/PackageUserStateImpl;
.super Lcom/android/server/utils/WatchableImpl;
.source "PackageUserStateImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

.field public mBooleans:I

.field public mCeDataInode:J

.field public mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

.field public mDeDataInode:J

.field public mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

.field public mDistractionFlags:I

.field public mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

.field public mEnabledState:I

.field public mFirstInstallTimeMillis:J

.field public mHarmfulAppWarning:Ljava/lang/String;

.field public mInstallReason:I

.field public mLastDisableAppCaller:Ljava/lang/String;

.field public mMinAspectRatio:I

.field public mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

.field public mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSplashScreenTheme:Ljava/lang/String;

.field public mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

.field public mUninstallReason:I

.field public mWatchable:Lcom/android/server/utils/Watchable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/pkg/PackageUserStateImpl;)Lcom/android/server/utils/Watchable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/utils/Watchable;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 99
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 101
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 118
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 161
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 162
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 p1, 0x1

    .line 163
    invoke-direct {p0, p1, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean(IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Watchable;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 99
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 101
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 118
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 167
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 168
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 169
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 171
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 173
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 174
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_2

    .line 175
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 176
    iget-wide v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iput-wide v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 177
    iget-wide v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    iput-wide v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 178
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 179
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 180
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 181
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 182
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 183
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 184
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 185
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 186
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 187
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_4

    goto :goto_4

    .line 188
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 189
    iget-wide v0, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 190
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 191
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method private getBoolean(I)Z
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    .line 143
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;-><init>(Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private onChanged()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, v0}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 198
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method private setBoolean(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 79
    iget p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    return-void

    .line 81
    :cond_0
    iget p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    return-void
.end method


# virtual methods
.method public dataExists()Z
    .locals 4

    .line 701
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getCeDataInode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDeDataInode()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 859
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 861
    :cond_1
    check-cast p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 863
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 865
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 866
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 873
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 874
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 875
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 876
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 877
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 879
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 880
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 882
    invoke-virtual {p0, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->watchableEquals(Lcom/android/server/utils/Watchable;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 883
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 884
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshotEquals(Lcom/android/server/utils/SnapshotCache;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    .line 297
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-direct {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>(Landroid/content/pm/overlay/OverlayPaths;)V

    .line 298
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz p0, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/overlay/OverlayPaths;

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    return-object p0
.end method

.method public getCeDataInode()J
    .locals 2

    .line 731
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    return-wide v0
.end method

.method public getDeDataInode()J
    .locals 2

    .line 736
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    return-wide v0
.end method

.method public getDisabledComponents()Landroid/util/ArraySet;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p0, :cond_0

    .line 268
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDisabledComponents()Ljava/util/Set;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public getDistractionFlags()I
    .locals 0

    .line 741
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    return p0
.end method

.method public getEnabledComponents()Landroid/util/ArraySet;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p0, :cond_0

    .line 275
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getEnabledComponents()Ljava/util/Set;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public getEnabledState()I
    .locals 0

    .line 746
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    return p0
.end method

.method public getFirstInstallTimeMillis()J
    .locals 2

    .line 799
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    return-wide v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallReason()I
    .locals 0

    .line 751
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    return p0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    return-object p0
.end method

.method public getMinAspectRatio()I
    .locals 0

    .line 781
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    return p0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object p0
.end method

.method public getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 365
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p0, :cond_0

    .line 624
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .locals 0

    .line 776
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getUninstallReason()I
    .locals 0

    .line 756
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 894
    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 895
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 896
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 897
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 898
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 899
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 900
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 901
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 902
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 903
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 904
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 905
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 906
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 907
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 908
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 909
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 910
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 911
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 912
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->watchableHashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 913
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 914
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshotHashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p0, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHidden()Z
    .locals 1

    const/16 v0, 0x8

    .line 671
    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isInstalled()Z
    .locals 1

    const/4 v0, 0x1

    .line 656
    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isInstantApp()Z
    .locals 1

    const/16 v0, 0x10

    .line 676
    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isNotLaunched()Z
    .locals 1

    const/4 v0, 0x4

    .line 666
    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isQuarantined()Z
    .locals 4

    .line 686
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isSuspended()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 689
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 690
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 691
    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/SuspendParams;

    .line 692
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/SuspendParams;->isQuarantined()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isStopped()Z
    .locals 1

    const/4 v0, 0x2

    .line 661
    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSuspended()Z
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isVirtualPreload()Z
    .locals 1

    const/16 v0, 0x20

    .line 681
    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 320
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 321
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 325
    :goto_0
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 326
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 330
    iget-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 332
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    goto :goto_3

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v1, :cond_4

    .line 336
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 337
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 340
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    :cond_6
    return v0
.end method

.method public putSuspendParams(Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 380
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 383
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 384
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public removeSuspension(Landroid/content/pm/UserPackage;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public resetOverrideComponentLabelIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    return-void
.end method

.method public setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 616
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 449
    iput-wide p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 450
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setDeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 455
    iput-wide p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 456
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 405
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    if-eqz p1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 485
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 486
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 418
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    if-eqz p1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 503
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 504
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 605
    iput-wide p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 606
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 527
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    const/16 v0, 0x8

    .line 479
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean(IZ)V

    .line 480
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    .line 509
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 510
    const-class v0, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 512
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    const/4 v0, 0x1

    .line 461
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean(IZ)V

    .line 462
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    const/16 v0, 0x10

    .line 491
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean(IZ)V

    .line 492
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 533
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setMinAspectRatio(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    .line 564
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 565
    const-class v0, Landroid/content/pm/PackageManager$UserMinAspectRatio;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 567
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    const/4 v0, 0x4

    .line 473
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean(IZ)V

    .line 474
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 218
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    .line 221
    :cond_3
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 222
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    const/4 p0, 0x1

    return p0
.end method

.method public setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 235
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/overlay/OverlayPaths;

    .line 238
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 241
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return v0

    .line 242
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    move v1, v0

    .line 243
    :cond_4
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return v1
.end method

.method public setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 554
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    const/4 v0, 0x2

    .line 467
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean(IZ)V

    .line 468
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setSuspendParams(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_1

    .line 580
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 581
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 584
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 585
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    .line 518
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 519
    const-class v0, Landroid/content/pm/PackageManager$UninstallReason;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 521
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    const/16 v0, 0x20

    .line 497
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean(IZ)V

    .line 498
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setWatchable(Lcom/android/server/utils/Watchable;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    return-object p0
.end method

.method public final snapshotEquals(Lcom/android/server/utils/SnapshotCache;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final snapshotHashCode()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final watchableEquals(Lcom/android/server/utils/Watchable;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final watchableHashCode()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
