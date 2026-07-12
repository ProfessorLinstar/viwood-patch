.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
.super Lcom/android/server/wm/DisplayAreaPolicy;
.source "DisplayAreaPolicyBuilder.java"


# instance fields
.field public final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public final mDisplayAreaGroupRoots:Ljava/util/List;

.field public final mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

.field public final mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;


# direct methods
.method public static synthetic $r8$lambda$YTS6mATtwOUjwC_PPe0TcCmppOQ(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 2

    .line 828
    iget v0, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;Ljava/util/function/BiFunction;Ljava/util/function/Function;)V
    .locals 0

    .line 822
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;)V

    .line 823
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 824
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 827
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    new-instance p2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    new-instance p5, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;

    invoke-direct {p5, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    :goto_0
    iput-object p5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    return-void

    .line 832
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No display area with FEATURE_DEFAULT_TASK_CONTAINER"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 2

    .line 848
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0
.end method

.method public findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 1

    .line 855
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 909
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation

    .line 861
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 862
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 863
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 864
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    iget-object v2, v2, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 866
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getTaskDisplayArea(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 915
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public getWindowingArea()Lcom/android/server/wm/DisplayArea;
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v0, v0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v0, v0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 896
    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmId(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->canBeWindowingLayer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object p0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    .line 898
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 899
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 900
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayArea;

    return-object p0

    .line 903
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There must be exactly one DisplayArea at top for the FEATURE_WINDOWED_MAGNIFICATION or FEATURE_WINDOWING_LAYER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 893
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There must be at least one feature."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
