.class public Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;
.super Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.source "PackageManagerLocalImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;


# instance fields
.field public mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

.field public mCachedUnmodifiablePackageStates:Ljava/util/Map;

.field public mCachedUnmodifiableSharedUsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 212
    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->close()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    .line 214
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    return-void
.end method

.method public filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 7

    .line 167
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    iget-object v3, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    return-object v0
.end method

.method public getDisabledSystemPackageStates()Ljava/util/Map;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 205
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getDisabledSystemPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageStates()Ljava/util/Map;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 179
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public getSharedUsers()Ljava/util/Map;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 192
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getSharedUsers()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    return-object p0
.end method
