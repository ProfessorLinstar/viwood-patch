.class public Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSetting.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageStateInternal;


# instance fields
.field public categoryOverride:I

.field public installSource:Lcom/android/server/pm/InstallSource;

.field public keySetData:Lcom/android/server/pm/PackageKeySetData;

.field public lastUpdateTime:J

.field public legacyNativeLibraryPath:Ljava/lang/String;

.field public mAppId:I

.field public mAppMetadataFilePath:Ljava/lang/String;

.field public mAppMetadataSource:I

.field public mBaseRevisionCode:I

.field public mBooleans:I

.field public mCpuAbiOverride:Ljava/lang/String;

.field public mDomainSetId:Ljava/util/UUID;

.field public mLastModifiedTime:J

.field public mLoadingCompletedTime:J

.field public mLoadingProgress:F

.field public mName:Ljava/lang/String;

.field public mOldPaths:Ljava/util/LinkedHashSet;

.field public mPageSizeAppCompatFlags:I

.field public mPath:Ljava/io/File;

.field public mPathString:Ljava/lang/String;

.field public mPrimaryCpuAbi:Ljava/lang/String;

.field public mRealName:Ljava/lang/String;

.field public mRestrictUpdateHash:[B

.field public mSecondaryCpuAbi:Ljava/lang/String;

.field public mSharedUserAppId:I

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSplitNames:[Ljava/lang/String;

.field public mSplitRevisionCodes:[I

.field public mTargetSdkVersion:I

.field public final mUserStates:Landroid/util/SparseArray;

.field public mimeGroups:Ljava/util/Map;

.field public pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

.field public final pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

.field public signatures:Lcom/android/server/pm/PackageSignatures;

.field public usesSdkLibraries:[Ljava/lang/String;

.field public usesSdkLibrariesOptional:[Z

.field public usesSdkLibrariesVersionsMajor:[J

.field public usesStaticLibraries:[Ljava/lang/String;

.field public usesStaticLibrariesVersions:[J

.field public versionCode:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 305
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 2

    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 209
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 228
    new-instance v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 237
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    if-eqz p2, :cond_0

    .line 313
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V
    .locals 0

    .line 277
    invoke-direct {p0, p4, p5}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 209
    new-instance p4, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {p4}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 213
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 p4, -0x1

    .line 224
    iput p4, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    const/4 p4, 0x0

    .line 226
    iput p4, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 228
    new-instance p5, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {p5, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object p5, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 237
    iput p4, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 278
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 279
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 280
    iput-object p3, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 281
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 282
    new-instance p1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {p1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 283
    sget-object p1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 284
    iput-object p6, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 285
    invoke-direct {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    .line 267
    new-instance v0, Lcom/android/server/pm/PackageSetting$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PackageSetting$1;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public static writeArchiveState(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/pm/pkg/ArchiveState;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x10b0000000cL

    .line 1368
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1369
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v4, 0x10900000002L

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    const-wide v6, 0x20b00000001L

    .line 1370
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1372
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x10900000001L

    invoke-virtual {p0, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1375
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getOriginalComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x10900000004L

    .line 1373
    invoke-virtual {p0, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1376
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1378
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1377
    invoke-virtual {p0, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1380
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1382
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000003L

    .line 1381
    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1384
    :cond_2
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    .line 1388
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getInstallerTitle()Ljava/lang/String;

    move-result-object p1

    .line 1387
    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1389
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public addDisabledComponent(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1202
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1203
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public addEnabledComponent(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1208
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1209
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 1210
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public addMimeTypes(Ljava/lang/String;Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .locals 2

    .line 1716
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1717
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 1722
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1723
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 1406
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1409
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public final copyMimeGroups(Ljava/util/Map;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 683
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-void

    .line 687
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 688
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 689
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 692
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 694
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 4

    .line 805
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    .line 806
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 807
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 808
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 809
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 810
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 811
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 812
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 813
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 814
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 815
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 816
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 817
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 818
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 819
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 820
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 821
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 822
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 823
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 824
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 825
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 826
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 827
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 828
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 829
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 830
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 831
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 832
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 833
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 834
    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 835
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 836
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 837
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 838
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    if-eqz v0, :cond_3

    .line 839
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 841
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 842
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 843
    :goto_4
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 844
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-eqz v0, :cond_5

    .line 845
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 846
    :goto_5
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 847
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    if-eqz v0, :cond_6

    .line 848
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v0, v1

    .line 849
    :goto_6
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 851
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 852
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v0, v1

    .line 853
    :goto_7
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 854
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_8

    .line 855
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 856
    :cond_8
    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 857
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 858
    :goto_8
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    if-eqz p2, :cond_9

    .line 860
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 861
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    .line 860
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 863
    :cond_9
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 864
    invoke-virtual {v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setWatchable(Lcom/android/server/utils/Watchable;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 865
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 869
    :cond_a
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 870
    iget p2, p1, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    iput p2, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 872
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V

    .line 873
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public disableComponentLPw(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1225
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1226
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1228
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_1
    return p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .locals 10

    .line 328
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 329
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    :goto_0
    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000003L

    .line 331
    iget-wide v7, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000006L

    .line 332
    iget-wide v7, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    const-wide v5, 0x10900000007L

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_2

    const-wide v5, 0x10900000004L

    .line 336
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x20b00000008L

    .line 338
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 339
    const-string v0, "base"

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 341
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const/4 v0, 0x0

    .line 343
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v0, v7, :cond_1

    .line 344
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 345
    iget-object v9, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {p1, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 346
    iget-object v9, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 347
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitRevisionCodes()[I

    move-result-object v9

    aget v9, v9, v0

    .line 346
    invoke-virtual {p1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 348
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-wide v3, 0x10b0000000aL

    .line 351
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 352
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 358
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_2
    const-wide v0, 0x10800000002L

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x20b00000009L

    .line 361
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x20b0000000cL

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    .line 362
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageSetting;->writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    .line 363
    invoke-virtual {v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enableComponentLPw(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1214
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1215
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1217
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_1
    return p1
.end method

.method public getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    .line 1524
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    return-object p0
.end method

.method public getApexModuleName()Ljava/lang/String;
    .locals 0

    .line 1611
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getApexModuleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppId()I
    .locals 0

    .line 1928
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    return p0
.end method

.method public getAppMetadataFilePath()Ljava/lang/String;
    .locals 0

    .line 2030
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getAppMetadataSource()I
    .locals 0

    .line 2035
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    return p0
.end method

.method public getBaseRevisionCode()I
    .locals 0

    .line 631
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    return p0
.end method

.method public final getBoolean(I)Z
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCategoryOverride()I
    .locals 0

    .line 2015
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    return p0
.end method

.method public getCeDataInode(I)J
    .locals 0

    .line 1023
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide p0

    return-wide p0
.end method

.method public getCpuAbiOverride()Ljava/lang/String;
    .locals 0

    .line 1974
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 0

    .line 1271
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 1272
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1273
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1275
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1276
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDeDataInode(I)J
    .locals 0

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide p0

    return-wide p0
.end method

.method public getDisabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .locals 0

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getDomainSetId()Ljava/util/UUID;
    .locals 0

    .line 2025
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    return-object p0
.end method

.method public getEnabled(I)I
    .locals 0

    .line 913
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    return p0
.end method

.method public getEnabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .locals 0

    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getHiddenApiEnforcementPolicy()I
    .locals 1

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public getInstallReason(I)I
    .locals 0

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result p0

    return p0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 0

    .line 1999
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    return-object p0
.end method

.method public getInstalled(I)Z
    .locals 0

    .line 927
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    return p0
.end method

.method public getInstantApp(I)Z
    .locals 0

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    return p0
.end method

.method public getKeySetData()Lcom/android/server/pm/PackageKeySetData;
    .locals 0

    .line 1994
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    return-object p0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .line 1979
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getLastPackageUsageTime()[J
    .locals 0

    .line 1595
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object p0

    return-object p0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 1984
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    return-wide v0
.end method

.method public getLegacyNativeLibraryPath()Ljava/lang/String;
    .locals 0

    .line 1913
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 0

    .line 742
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public getLoadingCompletedTime()J
    .locals 2

    .line 1969
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    return-wide v0
.end method

.method public getLoadingProgress()F
    .locals 0

    .line 1964
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    return p0
.end method

.method public getMimeGroups()Ljava/util/Map;
    .locals 1

    .line 1511
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 1512
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1918
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNotInstalledUserIds()[I
    .locals 4

    .line 1289
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1290
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1, v0}, Landroid/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1292
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1293
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getOldPaths()Ljava/util/LinkedHashSet;
    .locals 0

    .line 1959
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public bridge synthetic getOldPaths()Ljava/util/Set;
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    .line 891
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;
    .locals 0

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1518
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPageSizeAppCompatFlags()I
    .locals 0

    .line 1651
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    return p0
.end method

.method public getPageSizeCompatWarningMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1857
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, p0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p0, 0x8

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v4, p0, 0x10

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    const/4 v5, 0x0

    if-nez v0, :cond_8

    if-nez v3, :cond_8

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    const p0, 0x104070c

    .line 1873
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1875
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz v0, :cond_7

    const p0, 0x104070d

    .line 1879
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1880
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz v1, :cond_8

    const p0, 0x104070e

    .line 1884
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1885
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_4
    return-object v5
.end method

.method public getPath()Ljava/io/File;
    .locals 0

    .line 1949
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    return-object p0
.end method

.method public getPathString()Ljava/lang/String;
    .locals 0

    .line 1954
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    return-object p0
.end method

.method public getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    .locals 0

    .line 1941
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    return-object p0
.end method

.method public getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0

    .line 2020
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .locals 1

    .line 1738
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_0

    .line 1739
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1742
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryCpuAbiLegacy()Ljava/lang/String;
    .locals 0

    .line 1767
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 0

    .line 1923
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-object p0
.end method

.method public getRestrictUpdateHash()[B
    .locals 0

    .line 2045
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    return-object p0
.end method

.method public getSeInfo()Ljava/lang/String;
    .locals 2

    .line 1757
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getOverrideSeInfo()Ljava/lang/String;

    move-result-object v0

    .line 1758
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1762
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getSeInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .locals 1

    .line 1747
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_0

    .line 1748
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1751
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryCpuAbiLegacy()Ljava/lang/String;
    .locals 0

    .line 1772
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedLibraryDependencies()Ljava/util/List;
    .locals 0

    .line 1566
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserAppId()I
    .locals 0

    .line 568
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    return p0
.end method

.method public getSignatures()Lcom/android/server/pm/PackageSignatures;
    .locals 0

    .line 1989
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    return-object p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSigningInfo()Landroid/content/pm/SigningInfo;
    .locals 1

    .line 1529
    new-instance v0, Landroid/content/pm/SigningInfo;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    return-object v0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 651
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    if-nez p0, :cond_1

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public getSplitRevisionCodes()[I
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_0

    .line 669
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitRevisionCodes()[I

    move-result-object p0

    return-object p0

    .line 671
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    if-nez p0, :cond_1

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    :cond_1
    return-object p0
.end method

.method public getStateForUser(Landroid/os/UserHandle;)Lcom/android/server/pm/pkg/PackageUserState;
    .locals 0

    .line 1732
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserState;

    if-nez p0, :cond_0

    .line 1733
    sget-object p0, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    :cond_0
    return-object p0
.end method

.method public getTargetSdkVersion()I
    .locals 0

    .line 2040
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    return p0
.end method

.method public getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0

    .line 1707
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public getUninstallReason(I)I
    .locals 0

    .line 956
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result p0

    return p0
.end method

.method public getUserStates()Landroid/util/SparseArray;
    .locals 0

    .line 1712
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .locals 0

    .line 1578
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsesSdkLibraries()[Ljava/lang/String;
    .locals 0

    .line 1535
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getUsesSdkLibrariesOptional()[Z
    .locals 0

    .line 1548
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    :cond_0
    return-object p0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .locals 0

    .line 1541
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_0
    return-object p0
.end method

.method public getUsesStaticLibraries()[Ljava/lang/String;
    .locals 0

    .line 1554
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .locals 0

    .line 1560
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_0
    return-object p0
.end method

.method public getVersionCode()J
    .locals 2

    .line 1502
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    return-wide v0
.end method

.method public getVirtualPreload(I)Z
    .locals 0

    .line 1092
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result p0

    return p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 0

    .line 2007
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public hasDataOnAnyOtherUser([II)Z
    .locals 4

    .line 990
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    goto :goto_1

    .line 994
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 995
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hasSharedUser()Z
    .locals 0

    .line 573
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApex()Z
    .locals 4

    .line 1783
    sget-boolean v0, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "armeabi"

    .line 1784
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1786
    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    aget-object v0, v0, v3

    .line 1787
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "isDexoptable"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1793
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isApkInUpdatedApex()Z
    .locals 0

    .line 1605
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isApkInUpdatedApex()Z

    move-result p0

    return p0
.end method

.method public isArchived(I)Z
    .locals 0

    .line 931
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result p0

    return p0
.end method

.method public isArchivedOnAnyUser([I)Z
    .locals 4

    .line 938
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 939
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->isArchived(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isDebuggable()Z
    .locals 1

    const/16 v0, 0x20

    .line 601
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .locals 0

    .line 1819
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isExternalStorage()Z
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isForceQueryableOverride()Z
    .locals 1

    const/4 v0, 0x4

    .line 1798
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isHiddenUntilInstalled()Z
    .locals 0

    .line 1589
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p0

    return p0
.end method

.method public isIncremental()Z
    .locals 0

    .line 1457
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInstallPermissionsFixed()Z
    .locals 1

    const/4 v0, 0x1

    .line 1811
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isInstalledOnAnyOtherUser([II)Z
    .locals 4

    .line 977
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    goto :goto_1

    .line 981
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 982
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isLeavingSharedUser()Z
    .locals 1

    const/16 v0, 0x40

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1463
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x322bcc77    # 1.0E-8f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOdm()Z
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOem()Z
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPageSizeAppCompatEnabled()Z
    .locals 4

    .line 1836
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, p0, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit8 p0, p0, 0x2c

    if-eqz p0, :cond_3

    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method public isPendingRestore()Z
    .locals 1

    const/16 v0, 0x10

    .line 587
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isPersistent()Z
    .locals 0

    .line 1824
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPrivileged()Z
    .locals 0

    .line 751
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isProduct()Z
    .locals 1

    .line 763
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRequestLegacyExternalStorage()Z
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRequiredForSystemUser()Z
    .locals 0

    .line 768
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isScannedAsStoppedSystemApp()Z
    .locals 1

    const/16 v0, 0x8

    .line 1829
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSystem()Z
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSystemExt()Z
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUpdateAvailable()Z
    .locals 1

    const/4 v0, 0x2

    .line 1806
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isUpdatedSystemApp()Z
    .locals 0

    .line 1600
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p0

    return p0
.end method

.method public isUserDataFragile()Z
    .locals 1

    .line 789
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVendor()Z
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    .line 881
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 882
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_0
    return-object v0
.end method

.method public modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    .line 1185
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1187
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1188
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 1191
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p3

    if-nez p3, :cond_1

    .line 1192
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    if-eqz v0, :cond_2

    .line 1196
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_2
    return-object p1
.end method

.method public overrideNonLocalizedLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)Z
    .locals 0

    .line 1431
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p1

    .line 1432
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return p1
.end method

.method public queryInstalledUsers([IZ)[I
    .locals 5

    .line 1003
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1004
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 1005
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 1006
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public queryUsersInstalledOrHasData([I)[I
    .locals 5

    .line 1013
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1014
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 1015
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1016
    :cond_0
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    :cond_2
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .locals 0

    .line 898
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-nez p0, :cond_0

    .line 900
    sget-object p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    :cond_0
    return-object p0
.end method

.method public removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 440
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public removeOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    if-eqz p1, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1418
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1419
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public removeUser(I)V
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public resetOverrideComponentLabelIcon(I)V
    .locals 0

    .line 1441
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->resetOverrideComponentLabelIcon()V

    .line 1442
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x1

    .line 1236
    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1237
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1238
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1239
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1240
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    or-int p1, v0, v1

    if-eqz p1, :cond_2

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_2
    return p1
.end method

.method public restoreComponentSettings(I)V
    .locals 6

    const/4 v0, 0x1

    .line 1248
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1249
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    .line 1250
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    .line 1253
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_1

    .line 1254
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1255
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v3, v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1259
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 1260
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1261
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v3, v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_4
    return-void
.end method

.method public setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 1700
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public setAppId(I)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 367
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 368
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1485
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 1486
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1494
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 1495
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;I)V
    .locals 0

    .line 922
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 923
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setBaseRevisionCode(I)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 622
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 623
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public final setBoolean(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 120
    iget p2, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    return-void

    .line 122
    :cond_0
    iget p2, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    return-void
.end method

.method public setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1621
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setCeDataInode(JI)V
    .locals 0

    .line 1031
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setDeDataInode(JI)V
    .locals 0

    .line 1036
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setDebuggable(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1

    const/16 v0, 0x20

    .line 594
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 595
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setDisabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .locals 0

    .line 1178
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 1179
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1178
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1615
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setEnabled(IILjava/lang/String;)V
    .locals 0

    .line 906
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 907
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 908
    invoke-virtual {p1, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 909
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setEnabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .locals 0

    .line 1172
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 1173
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1172
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 401
    iget-object p3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 403
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;
    .locals 5

    const/4 v0, 0x0

    .line 384
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 386
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1

    const/4 v0, 0x4

    .line 413
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setHidden(ZI)V
    .locals 0

    .line 1069
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1

    const/4 v0, 0x1

    .line 746
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    return-object p0
.end method

.method public setInstallReason(II)V
    .locals 0

    .line 951
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 952
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 434
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setInstalled(ZI)V
    .locals 0

    .line 917
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 918
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallerPackage(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstallSource;->setInstallerPackage(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 422
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setInstantApp(ZI)V
    .locals 0

    .line 1087
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 446
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 457
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 458
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 463
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 464
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLeavingSharedUser(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1

    const/16 v0, 0x40

    .line 608
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 609
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1656
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLoadingCompletedTime(J)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1476
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 1468
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 1469
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 469
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 470
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Z
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 482
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_1
    return v1

    .line 477
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown MIME group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for package "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    if-eqz p1, :cond_0

    .line 1663
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public setNotLaunched(ZI)V
    .locals 0

    .line 1060
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z
    .locals 0

    .line 970
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    .line 971
    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result p1

    .line 972
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return p1
.end method

.method public setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;
    .locals 2

    if-ltz p1, :cond_2

    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    .line 1635
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    const/16 v1, 0x8

    if-ne v1, p1, :cond_0

    and-int/lit8 p1, v0, -0x11

    .line 1640
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    if-ne v1, p1, :cond_1

    and-int/lit8 p1, v0, -0x9

    .line 1643
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 1646
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0

    .line 1631
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid page size compat mode specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1397
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 1398
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1399
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1

    const/16 v0, 0x10

    .line 580
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 581
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 491
    check-cast p1, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 492
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPkgStateLibraryFiles(Ljava/util/Collection;)Lcom/android/server/pm/PackageSetting;
    .locals 3

    .line 504
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    .line 505
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 506
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 507
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 508
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 515
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 562
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1

    const/16 v0, 0x8

    .line 1050
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 521
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 549
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 550
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 527
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object p1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 800
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSplitNames([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 639
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 659
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setStopped(ZI)V
    .locals 0

    .line 1045
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 555
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 556
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUninstallReason(II)V
    .locals 0

    .line 960
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 961
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1

    const/4 v0, 0x2

    .line 543
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 544
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 428
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V
    .locals 0

    .line 1108
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1109
    invoke-virtual {p1, p12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSuspendParams(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1110
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1111
    invoke-virtual {p1, p4, p5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1112
    invoke-virtual {p1, p6}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1113
    invoke-virtual {p1, p7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1114
    invoke-virtual {p1, p8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1115
    invoke-virtual {p1, p9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1116
    invoke-virtual {p1, p10}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1117
    invoke-virtual {p1, p11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1118
    invoke-virtual {p1, p15}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p16

    .line 1119
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p17

    .line 1120
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move/from16 p2, p18

    .line 1121
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move/from16 p2, p19

    .line 1122
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1123
    invoke-virtual {p1, p13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1124
    invoke-virtual {p1, p14}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p20

    .line 1125
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p21

    .line 1126
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-wide/from16 p2, p22

    .line 1127
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move/from16 p2, p24

    .line 1128
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setMinAspectRatio(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p25

    .line 1129
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1670
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 1671
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1682
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1676
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1688
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1694
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 1695
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->snapshot()Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/PackageSetting;)V
    .locals 1

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 703
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 704
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    .line 706
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 715
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-object p0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 721
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 724
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    .line 725
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 727
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 728
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 731
    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 734
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 735
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-object p0
.end method

.method public writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .locals 4

    .line 1306
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    const-wide v0, 0x20b0000000cL

    .line 1307
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1308
    iget p4, p3, Landroid/content/pm/UserInfo;->id:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1310
    iget p4, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-interface {p5, p4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p4

    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 1311
    invoke-virtual {p4, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object p3

    .line 1312
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 1313
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, 0x20900000002L

    .line 1315
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p4

    .line 1314
    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    .line 1318
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    .line 1323
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1325
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1326
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1327
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const-wide v7, 0x10500000001L

    .line 1328
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1330
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    .line 1332
    :cond_0
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const-wide v8, 0x10e00000002L

    .line 1337
    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10800000003L

    .line 1338
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x1050000000aL

    .line 1339
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10800000004L

    .line 1340
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1341
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    .line 1342
    :goto_2
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 1344
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserPackage;

    iget-object v8, v8, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    const-wide v9, 0x20900000009L

    .line 1343
    invoke-virtual {p1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const-wide v8, 0x10800000005L

    .line 1351
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1352
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v5

    xor-int/2addr v5, v7

    const-wide v7, 0x10800000006L

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10e00000007L

    .line 1353
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v5

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10900000008L

    .line 1356
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v5

    .line 1354
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x1050000000bL

    .line 1358
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v9

    .line 1357
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1359
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/pm/PackageSetting;->writeArchiveState(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/pm/pkg/ArchiveState;)V

    .line 1360
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
