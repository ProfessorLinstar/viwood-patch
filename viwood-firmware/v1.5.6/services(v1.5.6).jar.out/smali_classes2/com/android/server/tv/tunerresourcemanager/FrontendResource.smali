.class public final Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.source "FrontendResource.java"


# instance fields
.field public final mExclusiveGroupId:I

.field public mExclusiveGroupMemberHandles:Ljava/util/Set;

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 49
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->-$$Nest$fgetmType(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 50
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->-$$Nest$fgetmExclusiveGroupId(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;Lcom/android/server/tv/tunerresourcemanager/FrontendResource-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)V

    return-void
.end method


# virtual methods
.method public addExclusiveGroupMemberFeHandle(J)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExclusiveGroupMemberFeHandles(Ljava/util/Collection;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getExclusiveGroupId()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    return p0
.end method

.method public getExclusiveGroupMemberFeHandles()Ljava/util/Set;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    return p0
.end method

.method public removeExclusiveGroupMemberFeId(J)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrontendResource[handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exclusiveGId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exclusiveGMemeberHandles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
