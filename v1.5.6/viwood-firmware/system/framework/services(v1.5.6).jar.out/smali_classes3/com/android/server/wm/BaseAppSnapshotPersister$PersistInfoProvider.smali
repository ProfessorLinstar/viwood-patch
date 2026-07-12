.class public Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
.super Ljava/lang/Object;
.source "BaseAppSnapshotPersister.java"


# instance fields
.field public final mDirName:Ljava/lang/String;

.field public final mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

.field public final mEnableLowResSnapshots:Z

.field public final mInitializedUsers:Landroid/util/SparseBooleanArray;

.field public final mLowResScaleFactor:F

.field public final mScrambleDirectories:Landroid/util/SparseArray;

.field public final mUse16BitFormat:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;Ljava/lang/String;ZFZ)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mInitializedUsers:Landroid/util/SparseBooleanArray;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

    .line 99
    iput-object p2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    .line 100
    iput-boolean p3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    .line 101
    iput p4, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    .line 102
    iput-boolean p5, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return-void
.end method


# virtual methods
.method public createDirectory(I)Z
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public enableLowResSnapshots()Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    return p0
.end method

.method public final getBaseDirectory(I)Ljava/io/File;
    .locals 2

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirectory(I)Ljava/io/File;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getHighResolutionBitmapFile(II)Ljava/io/File;
    .locals 1

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLowResolutionBitmapFile(II)Ljava/io/File;
    .locals 1

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_reduced"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProtoFile(II)Ljava/io/File;
    .locals 1

    .line 196
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".proto"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public lowResScaleFactor()F
    .locals 0

    .line 212
    iget p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    return p0
.end method

.method public use16BitFormat()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return p0
.end method
