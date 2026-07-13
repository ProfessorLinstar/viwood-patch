.class public final Lcom/android/server/storage/ImmutableVolumeInfo;
.super Ljava/lang/Object;
.source "ImmutableVolumeInfo.java"


# instance fields
.field public final mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, p1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    return-void
.end method

.method public static fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/ImmutableVolumeInfo;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/server/storage/ImmutableVolumeInfo;

    invoke-direct {v0, p0}, Lcom/android/server/storage/ImmutableVolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method


# virtual methods
.method public buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/android/server/storage/ImmutableVolumeInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/storage/ImmutableVolumeInfo;->fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/server/storage/ImmutableVolumeInfo;->clone()Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getInternalPath()Ljava/io/File;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getMountUserId()I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget p0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return p0
.end method

.method public getPath()Ljava/io/File;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget p0, p0, Landroid/os/storage/VolumeInfo;->type:I

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
