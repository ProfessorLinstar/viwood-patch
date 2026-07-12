.class public final Lcom/android/server/tv/tunerresourcemanager/DemuxResource;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.source "DemuxResource.java"


# instance fields
.field public final mFilterTypes:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    .line 30
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->-$$Nest$fgetmFilterTypes(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;Lcom/android/server/tv/tunerresourcemanager/DemuxResource-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;)V

    return-void
.end method


# virtual methods
.method public getNumOfCaps()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v1, v3, :cond_1

    .line 58
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hasSufficientCaps(I)Z
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    and-int/2addr p0, p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemuxResource[handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", filterTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ownerClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
