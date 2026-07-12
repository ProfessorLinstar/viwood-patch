.class public Lcom/android/server/devicepolicy/PolicyVersionUpgrader;
.super Ljava/lang/Object;
.source "PolicyVersionUpgrader.java"


# instance fields
.field public final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field public final mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 64
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    return-void
.end method


# virtual methods
.method public final getOwnerForUser(Lcom/android/server/devicepolicy/OwnersData;I)Landroid/content/ComponentName;
    .locals 1

    .line 287
    iget p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne p0, p2, :cond_0

    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_0

    .line 288
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    return-object p0

    .line 289
    :cond_0
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 290
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVersionFile()Lcom/android/internal/util/JournaledFile;
    .locals 1

    .line 314
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    return-object p0
.end method

.method public final initializeEffectiveKeepProfilesRunning(Landroid/util/SparseArray;)V
    .locals 0

    const/4 p0, 0x0

    .line 239
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyData;

    if-nez p1, :cond_0

    return-void

    .line 243
    :cond_0
    iput-boolean p0, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 244
    const-string p0, "DevicePolicyManager"

    const-string p1, "Keep profile running effective state set to false"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadAllUsersData([IILcom/android/server/devicepolicy/OwnersData;)Landroid/util/SparseArray;
    .locals 5

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 277
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 278
    invoke-virtual {p0, p3, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getOwnerForUser(Lcom/android/server/devicepolicy/OwnersData;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 279
    invoke-virtual {p0, v3, p2, v4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadDataForUser(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final loadDataForUser(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/DevicePolicyData;
    .locals 2

    .line 297
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyData;-><init>(I)V

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x1

    .line 300
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 302
    :cond_0
    iget-object p2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 303
    invoke-interface {p2, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 304
    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getAdminInfoSupplier(I)Ljava/util/function/Function;

    move-result-object p0

    .line 302
    invoke-static {v0, p2, p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyData;->load(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public final loadOwners([I)Lcom/android/server/devicepolicy/OwnersData;
    .locals 1

    .line 248
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData;-><init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V

    .line 249
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData;->load([I)V

    return-object v0
.end method

.method public final readVersion()I
    .locals 3

    .line 318
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 326
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 325
    invoke-static {p0, v1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    .line 326
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 327
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 331
    const-string v1, "DevicePolicyManager"

    const-string v2, "Error reading version"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return v0
.end method

.method public final saveSuspendedPackages(Landroid/util/SparseArray;ILandroid/content/ComponentName;)V
    .locals 1

    .line 220
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 221
    const-string v0, "DevicePolicyManager"

    if-nez p1, :cond_0

    .line 222
    const-string p0, "No policy data for owner user, cannot migrate suspended packages"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez p1, :cond_1

    .line 228
    const-string p0, "No admin for owner, cannot migrate suspended packages"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {p0, p2}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getPlatformSuspendedPackages(I)Ljava/util/List;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 234
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p3, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 233
    const-string p1, "Saved %d packages suspended by %s in user %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final upgradePackageSuspension([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .locals 2

    .line 206
    iget-object p1, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p1, :cond_0

    .line 207
    iget v0, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->saveSuspendedPackages(Landroid/util/SparseArray;ILandroid/content/ComponentName;)V

    :cond_0
    const/4 p1, 0x0

    .line 211
    :goto_0
    iget-object v0, p2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 212
    iget-object v0, p2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 213
    iget-object v1, p2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 214
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->saveSuspendedPackages(Landroid/util/SparseArray;ILandroid/content/ComponentName;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public upgradePolicy(I)V
    .locals 7

    .line 72
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->readVersion()I

    move-result v0

    .line 73
    const-string v1, "DevicePolicyManager"

    if-lt v0, p1, :cond_0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 74
    const-string p1, "Current version %d, latest version %d, not upgrading."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getUsersForUpgrade()[I

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadOwners([I)Lcom/android/server/devicepolicy/OwnersData;

    move-result-object v2

    .line 86
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadAllUsersData([IILcom/android/server/devicepolicy/OwnersData;)Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x1

    .line 89
    const-string v5, "Upgrading from version %d"

    if-nez v0, :cond_1

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :cond_1
    const/4 v6, 0x2

    if-ne v0, v4, :cond_2

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradeSensorPermissionsAccess([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    move v0, v6

    :cond_2
    const/4 v4, 0x3

    if-ne v0, v6, :cond_3

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradeProtectedPackages(Lcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    move v0, v4

    :cond_3
    const/4 v6, 0x4

    if-ne v0, v4, :cond_4

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradePackageSuspension([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    move v0, v6

    :cond_4
    const/4 v4, 0x5

    if-ne v0, v6, :cond_5

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->initializeEffectiveKeepProfilesRunning(Landroid/util/SparseArray;)V

    move v0, v4

    :cond_5
    if-ne v0, v4, :cond_6

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 133
    :cond_6
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writePoliciesAndVersion([ILandroid/util/SparseArray;Lcom/android/server/devicepolicy/OwnersData;I)V

    return-void
.end method

.method public final upgradeProtectedPackages(Lcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .locals 3

    .line 166
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-nez p0, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    iget p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 171
    const-string p2, "DevicePolicyManager"

    if-nez p0, :cond_1

    .line 172
    const-string p0, "No policy data for do user"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_1
    iget-object v0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 176
    iget-object v2, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 179
    const-string v2, "Found protected packages in Owners"

    invoke-static {p2, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2
    iput-object v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 183
    const-string v0, "Found protected packages in DevicePolicyData"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 185
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    goto :goto_0

    .line 188
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez p0, :cond_5

    .line 190
    const-string p0, "DO admin not found in DO user"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_6

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    :cond_6
    :goto_2
    return-void
.end method

.method public final upgradeSensorPermissionsAccess([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .locals 9

    .line 142
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    aget v2, p1, v1

    .line 143
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyData;

    if-nez v3, :cond_0

    goto :goto_2

    .line 147
    :cond_0
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    :cond_1
    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 148
    iget v7, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne v7, v2, :cond_1

    iget-object v7, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v7, :cond_1

    iget-object v7, v7, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    iget-object v8, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 150
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 151
    const-string v8, "Marking Device Owner in user %d for permission grant "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "DevicePolicyManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    .line 153
    iput-boolean v7, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/devicepolicy/DevicePolicyData;->store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;)Z

    move-result p0

    return p0
.end method

.method public final writePoliciesAndVersion([ILandroid/util/SparseArray;Lcom/android/server/devicepolicy/OwnersData;I)V
    .locals 6

    .line 256
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget v5, p1, v3

    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 261
    invoke-virtual {p3}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v2

    .line 262
    :goto_2
    array-length v0, p1

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_4

    aget v4, p1, v3

    if-eqz p2, :cond_3

    .line 263
    invoke-virtual {p3, v4}, Lcom/android/server/devicepolicy/OwnersData;->writeProfileOwner(I)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_4

    :cond_3
    move p2, v2

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 267
    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeVersion(I)V

    return-void

    .line 270
    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 269
    const-string p1, "Error: Failed upgrading policies to version %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeVersion(I)V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v0

    .line 345
    :try_start_0
    const-string v1, "%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Writing version %d failed"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DevicePolicyManager"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    return-void
.end method
