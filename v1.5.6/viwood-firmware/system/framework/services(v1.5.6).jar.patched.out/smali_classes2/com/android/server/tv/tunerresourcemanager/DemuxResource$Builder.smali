.class public Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.source "DemuxResource.java"


# instance fields
.field public mFilterTypes:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFilterTypes(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->mFilterTypes:I

    return p0
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(J)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/DemuxResource;
    .locals 2

    .line 93
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;Lcom/android/server/tv/tunerresourcemanager/DemuxResource-IA;)V

    return-object v0
.end method

.method public filterTypes(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->mFilterTypes:I

    return-object p0
.end method
