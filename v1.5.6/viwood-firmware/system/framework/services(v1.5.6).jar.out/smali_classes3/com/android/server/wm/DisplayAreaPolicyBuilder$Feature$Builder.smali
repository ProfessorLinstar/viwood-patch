.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# instance fields
.field public mExcludeRoundedCorner:Z

.field public final mId:I

.field public final mLayers:[Z

.field public final mName:Ljava/lang/String;

.field public mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V
    .locals 1

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    const/4 v0, 0x1

    .line 707
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mExcludeRoundedCorner:Z

    .line 723
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 724
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    .line 725
    iput p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    .line 726
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result p1

    add-int/2addr p1, v0

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    return-void
.end method


# virtual methods
.method public all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-object p0
.end method

.method public varargs and([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 3

    const/4 v0, 0x0

    .line 741
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 742
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 743
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    .locals 9

    .line 789
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mExcludeRoundedCorner:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 793
    :cond_0
    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Z

    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;Lcom/android/server/wm/DisplayAreaPolicyBuilder-IA;)V

    return-object v3
.end method

.method public varargs except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 752
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 753
    aget v2, p1, v1

    .line 754
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final layerFromType(IZ)I
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p0

    return p0
.end method

.method public final set(IZ)V
    .locals 3

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v2

    aput-boolean p2, v0, v2

    const/16 v0, 0x7f6

    if-ne p1, v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result p1

    aput-boolean p2, v0, p1

    .line 800
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v0, 0x7d3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v0

    aput-boolean p2, p1, v0

    .line 801
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v0, 0x7d6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v0

    aput-boolean p2, p1, v0

    .line 802
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v0, 0x7da

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result p0

    aput-boolean p2, p1, p0

    :cond_0
    return-void
.end method

.method public setExcludeRoundedCornerOverlay(Z)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 0

    .line 784
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mExcludeRoundedCorner:Z

    return-object p0
.end method

.method public setNewDisplayAreaSupplier(Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    return-object p0
.end method

.method public upTo(I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 4

    const/4 v0, 0x0

    .line 764
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 766
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    aput-boolean v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    return-object p0
.end method
