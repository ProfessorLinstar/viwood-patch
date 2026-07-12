.class public Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
.super Ljava/lang/Object;
.source "AbsAppSnapshotController.java"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public mHasSet:Z

.field public mSnapshot:Landroid/window/TaskSnapshot;

.field public mSupplier:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/window/TaskSnapshot;
    .locals 0

    .line 574
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    .line 575
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 538
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->get()Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public handleSnapshot()V
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 562
    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-nez v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eqz p0, :cond_3

    .line 567
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setConsumer(Ljava/util/function/Consumer;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setSnapshot(Landroid/window/TaskSnapshot;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    return-void
.end method

.method public setSupplier(Ljava/util/function/Supplier;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Ljava/util/function/Supplier;

    return-void
.end method
