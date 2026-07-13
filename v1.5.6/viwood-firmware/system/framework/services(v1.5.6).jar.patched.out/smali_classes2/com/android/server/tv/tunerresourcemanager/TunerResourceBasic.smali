.class public abstract Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.super Ljava/lang/Object;
.source "TunerResourceBasic.java"


# instance fields
.field public final mHandle:J

.field public mIsInUse:Z

.field public mOwnerClientId:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 44
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->-$$Nest$fgetmHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    return-void
.end method


# virtual methods
.method public getHandle()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    return-wide v0
.end method

.method public getOwnerClientId()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return p0
.end method

.method public isInUse()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    return p0
.end method

.method public removeOwner()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return-void
.end method

.method public setOwner(I)V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 66
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return-void
.end method
