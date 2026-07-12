.class public Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "InsetsStateController.java"


# instance fields
.field public final mControlTargetProvidersMap:Landroid/util/ArrayMap;

.field public final mDispatchInsetsChanged:Ljava/util/function/Consumer;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mForcedConsumingTypes:I

.field public final mIdControlTargetMap:Landroid/util/SparseArray;

.field public final mIdFakeControlTargetMap:Landroid/util/SparseArray;

.field public final mLastState:Landroid/view/InsetsState;

.field public final mPendingTargetProvidersMap:Landroid/util/ArrayMap;

.field public final mProviders:Landroid/util/SparseArray;

.field public final mState:Landroid/view/InsetsState;

.field public final mSurfaceTransactionIds:Landroid/util/SparseLongArray;


# direct methods
.method public static synthetic $r8$lambda$9P0lIIOEjVyKR81E86PJUW6hJRs(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .locals 0

    .line 379
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$ByGwbLxcGKvL9evJ-S2rqZyHoIw(Lcom/android/server/wm/WindowState;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyToDispatchInsetsState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$TzYyjwJniEoBgyDjbMpQVgjWyYo(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .locals 0

    .line 367
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$a0HV9ad2Wd_wQT3ba_TprluaiHw(Lcom/android/server/wm/InsetsStateController;ILandroid/util/SparseLongArray;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->lambda$notifyPendingInsetsControlChanged$4(ILandroid/util/SparseLongArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tyu8cagOKV5anXv5qidgt8V37vE(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->lambda$onDisplayFramesUpdated$1(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 59
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    .line 76
    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 368
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 370
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 372
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 1

    .line 378
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>()V

    .line 379
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 380
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WindowInsetsStateController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Control map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 493
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 496
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 498
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    .line 499
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v5, :cond_1

    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getFakeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    if-ne v2, v6, :cond_0

    .line 503
    const-string v6, "(fake) "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    :cond_0
    invoke-virtual {v5, v2}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 509
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  none"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InsetsSourceProviders:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_5

    .line 514
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 516
    :cond_5
    iget p1, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    if-eqz p1, :cond_6

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mForcedConsumingTypes="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 518
    invoke-static {p0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 517
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 4

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 524
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 526
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-wide v2, 0x10b0000001fL

    goto :goto_1

    :cond_0
    const-wide v2, 0x20b00000023L

    .line 525
    :goto_1
    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .locals 4

    .line 103
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    new-array v1, v0, [Landroid/view/InsetsSourceControl;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFakeControllingTypes(Lcom/android/server/wm/InsetsTarget;)I
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 252
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->getFakeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 254
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .locals 2

    .line 141
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InsetsStateController;->getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-object p0
.end method

.method public getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v0

    .line 128
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    if-ne p1, v1, :cond_1

    .line 129
    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider;

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    goto :goto_0

    .line 130
    :cond_1
    new-instance v1, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 132
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    and-int/2addr p2, v0

    const/4 v0, 0x4

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 131
    :goto_1
    invoke-virtual {v1, p2, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(II)Z

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public getRawInsetsState()Landroid/view/InsetsState;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    return-object p0
.end method

.method public getSourceProviders()Landroid/util/SparseArray;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    return-object p0
.end method

.method public hasPendingControls(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$notifyPendingInsetsControlChanged$4(ILandroid/util/SparseLongArray;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 417
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 418
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    if-nez v1, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/InsetsSourceProvider;->onSurfaceTransactionCommitted(J)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_1
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 425
    iget-object p2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    .line 428
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_6

    .line 429
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 430
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 431
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_4

    .line 432
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 433
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->isLeashInitialized()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    if-eq v5, v2, :cond_3

    .line 435
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 438
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 439
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 442
    invoke-interface {v2, p2}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged(I)V

    .line 443
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 445
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 453
    :cond_6
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_4
    if-ltz p2, :cond_7

    .line 456
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsTarget;

    .line 457
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    const/4 v2, 0x0

    .line 456
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 459
    :cond_7
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final synthetic lambda$onDisplayFramesUpdated$1(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 212
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 213
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public notifyControlRevoked(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    return-void
.end method

.method public notifyControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public notifyInsetsChanged()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->notifyInsetsChanged(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyInsetsChanged(Landroid/util/ArraySet;)V
    .locals 3

    .line 473
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyPendingInsetsControlChanged()V
    .locals 6

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    .line 410
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 412
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    .line 413
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 412
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/SparseLongArray;->append(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v3, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InsetsStateController;ILandroid/util/SparseLongArray;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySurfaceTransactionReady(Lcom/android/server/wm/InsetsSourceProvider;JZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 390
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 6

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 285
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    .line 286
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 287
    invoke-virtual {p0, v2, p1, v5}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 288
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    goto :goto_1

    .line 289
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 290
    invoke-virtual {p0, v2, p3, v5}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 291
    invoke-virtual {p0, v2, p4, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public final onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V
    .locals 3

    if-eqz p3, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    :goto_0
    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 316
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 325
    invoke-virtual {p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateFakeControlTarget(Lcom/android/server/wm/InsetsControlTarget;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 328
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 332
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 338
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 339
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 342
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 343
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/InsetsStateController;->addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onDisplayFramesUpdated(Z)V
    .locals 4

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_0
    if-ltz p1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 4

    if-eqz p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 266
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x5cc2f3394287cc11L    # -6.098552492072722E-139

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public onPostLayout()V
    .locals 5

    .line 173
    const-string v0, "ISC.onPostLayout"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v4, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 181
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 7

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_6

    .line 226
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 227
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    .line 228
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    if-ne v5, v6, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    and-int/2addr v5, p2

    if-eqz v5, :cond_4

    if-eqz v6, :cond_1

    move-object v5, p3

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 230
    :goto_2
    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 234
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getFakeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    if-ne p1, v4, :cond_2

    goto :goto_3

    :cond_2
    move v4, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v1

    :goto_4
    or-int/2addr v3, v4

    goto :goto_5

    :cond_4
    if-eqz v6, :cond_5

    .line 236
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x31

    invoke-interface {v4, p3, v5}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 241
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 242
    iget-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 244
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    :cond_7
    return-void
.end method

.method public final removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 358
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 360
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeSourceProvider(I)V
    .locals 1

    .line 145
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    if-eq p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public setForcedConsumingTypes(I)V
    .locals 6

    .line 152
    iget v0, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    if-eq v0, p1, :cond_2

    .line 153
    iput p1, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 156
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    .line 158
    invoke-virtual {v3}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p1

    const/4 v5, 0x4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    .line 157
    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(II)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    :cond_2
    return-void
.end method

.method public updateAboveInsetsState(Z)V
    .locals 4

    .line 190
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 192
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    or-int/2addr v2, v3

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 193
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 194
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 199
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
