.class public Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.source "LnbResource.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(J)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .locals 2

    .line 51
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;Lcom/android/server/tv/tunerresourcemanager/LnbResource-IA;)V

    return-object v0
.end method
