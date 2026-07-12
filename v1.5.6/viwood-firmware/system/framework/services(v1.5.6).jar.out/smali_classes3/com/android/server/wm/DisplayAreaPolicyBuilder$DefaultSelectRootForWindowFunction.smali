.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final mDisplayAreaGroupRoots:Ljava/util/List;

.field public final mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 385
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;Landroid/os/Bundle;)Lcom/android/server/wm/RootDisplayArea;
    .locals 1

    .line 390
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object p0

    :cond_0
    if-eqz p2, :cond_3

    .line 395
    const-string p1, "root_display_area_id"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 397
    iget-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    iget v0, p2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p1, :cond_1

    return-object p2

    .line 400
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    iget v0, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p1, :cond_2

    .line 402
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    return-object p0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 406
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 377
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->apply(Ljava/lang/Integer;Landroid/os/Bundle;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    return-object p0
.end method
