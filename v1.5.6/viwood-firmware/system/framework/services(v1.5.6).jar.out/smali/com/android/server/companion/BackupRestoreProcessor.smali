.class public Lcom/android/server/companion/BackupRestoreProcessor;
.super Ljava/lang/Object;
.source "BackupRestoreProcessor.java"


# instance fields
.field public final mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;


# direct methods
.method public static synthetic $r8$lambda$DyV-WVlS-Kk4PIRN0FrbMj0nlWE(Landroid/companion/AssociationInfo;Landroid/companion/datatransfer/SystemDataTransferRequest;)Z
    .locals 0

    .line 168
    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result p1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$JIdOXdUl_K6TEHMMcvRCDJvcUDo(Lcom/android/server/companion/BackupRestoreProcessor;Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/BackupRestoreProcessor;->lambda$restorePendingAssociations$2(Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KaaBuRoJlP5hxFXWvNSfy9Fph8Y(Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;)Z
    .locals 4

    .line 241
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 240
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 244
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/companion/DeviceId;->isSameDevice(Landroid/companion/DeviceId;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v3
.end method

.method public static synthetic $r8$lambda$ZI_ky7rF-P1GL62m8KHTAW0h5-o(Landroid/companion/datatransfer/SystemDataTransferRequest;Landroid/companion/datatransfer/SystemDataTransferRequest;)Z
    .locals 0

    .line 266
    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getDataType()I

    move-result p1

    invoke-virtual {p0}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getDataType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ge7zP4zZ0ZlLddnXsQ-WJKdBIhk(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 189
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/association/AssociationDiskStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/association/AssociationRequestsProcessor;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 72
    iput-object p3, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 73
    iput-object p4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 74
    iput-object p5, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 75
    iput-object p6, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload([BI)V
    .locals 8

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyRestoredPayload() userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], payload size=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_BackupRestoreProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    array-length v0, p1

    if-nez v0, :cond_0

    .line 115
    const-string p0, "CDM backup payload was empty."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string p0, "Unsupported backup payload version"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v0, v0, [B

    .line 135
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v2, v2, [B

    .line 139
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    invoke-static {v0, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromPayload([BI)Lcom/android/server/companion/association/Associations;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 149
    invoke-virtual {v0, v2, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromPayload([BI)Ljava/util/List;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 152
    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getAssociations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 162
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 167
    :cond_3
    new-instance v3, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-static {v0, v3}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v3

    .line 172
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/companion/BackupRestoreProcessor;->handleCollision(ILandroid/companion/AssociationInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 178
    iget-object v5, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v5}, Lcom/android/server/companion/association/AssociationStore;->getNextId()I

    move-result v5

    .line 179
    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v6, v5, p2, v4, v2}, Landroid/companion/AssociationInfo$Builder;-><init>(IILjava/lang/String;Landroid/companion/AssociationInfo;)V

    .line 180
    invoke-virtual {v6}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v2

    .line 188
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 191
    iget-object v4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v6}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    goto :goto_1

    .line 194
    :cond_5
    new-instance v4, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v4, v2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v2

    .line 196
    iget-object v4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v4, v2}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 200
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 201
    invoke-virtual {v3, v5}, Landroid/companion/datatransfer/SystemDataTransferRequest;->copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    move-result-object v3

    .line 202
    invoke-virtual {v3, p2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->setUserId(I)V

    .line 203
    iget-object v4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v4, p2, v3}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    goto :goto_2

    :cond_6
    return-void

    :catch_0
    move-exception p0

    .line 141
    const-string p1, "CDM backup payload was mal-formatted."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getBackupPayload(I)[B
    .locals 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBackupPayload() userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_BackupRestoreProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getBackupPayload(I)[B

    move-result-object v0

    .line 88
    array-length v1, v0

    .line 91
    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getBackupPayload(I)[B

    move-result-object p0

    .line 92
    array-length p1, p0

    add-int/lit8 v2, v1, 0xc

    add-int/2addr v2, p1

    .line 98
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public final handleCollision(ILandroid/companion/AssociationInfo;Ljava/util/List;)Z
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 238
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda3;-><init>(Landroid/companion/AssociationInfo;)V

    .line 248
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/AssociationInfo;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conflict detected with association id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " while restoring CDM backup. Keeping local association."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_BackupRestoreProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 259
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsByAssociationId(II)Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 265
    new-instance v3, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda4;-><init>(Landroid/companion/datatransfer/SystemDataTransferRequest;)V

    invoke-static {v0, v3}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to an existing association id=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/companion/datatransfer/SystemDataTransferRequest;->copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    move-result-object v2

    .line 278
    invoke-virtual {v2, p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->setUserId(I)V

    .line 279
    iget-object v3, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$restorePendingAssociations$2(Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;Ljava/lang/Boolean;)V
    .locals 1

    .line 220
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string v0, "CDM_BackupRestoreProcessor"

    if-eqz p3, :cond_0

    .line 221
    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Association=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is restored."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to restore association=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restorePendingAssociations(ILjava/lang/String;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getPendingAssociations(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 211
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found pending associations for package=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]. Restoring..."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CDM_BackupRestoreProcessor"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/AssociationInfo;

    .line 216
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/BackupRestoreProcessor;Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method
