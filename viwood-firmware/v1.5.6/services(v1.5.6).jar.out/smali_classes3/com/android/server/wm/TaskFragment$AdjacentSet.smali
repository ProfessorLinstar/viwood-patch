.class public Lcom/android/server/wm/TaskFragment$AdjacentSet;
.super Ljava/lang/Object;
.source "TaskFragment.java"


# instance fields
.field public final mAdjacentSet:Landroid/util/ArraySet;


# direct methods
.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremove(Lcom/android/server/wm/TaskFragment$AdjacentSet;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->remove(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAsAdjacent(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->setAsAdjacent()V

    return-void
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .locals 3

    .line 3520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3521
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3528
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3529
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not yet support 3+ adjacent for non-Task TFs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3534
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    return-void

    .line 3523
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjacent TaskFragments must contain at least two TaskFragments, but only "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " were provided."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs constructor <init>([Lcom/android/server/wm/TaskFragment;)V
    .locals 1

    .line 3517
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>(Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 3565
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3566
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    const/4 v2, 0x0

    .line 3568
    invoke-static {v1, v2}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    const/4 v2, 0x0

    .line 3569
    invoke-static {v1, v2}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmDelayLastActivityRemoval(Lcom/android/server/wm/TaskFragment;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3571
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public contains(Lcom/android/server/wm/TaskFragment;)Z
    .locals 0

    .line 3576
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3619
    :cond_0
    instance-of v0, p1, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    .line 3622
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public forAllTaskFragments(Ljava/util/function/Consumer;Lcom/android/server/wm/TaskFragment;)V
    .locals 2

    .line 3584
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3585
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    if-eq v1, p2, :cond_0

    .line 3587
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forAllTaskFragments(Ljava/util/function/Predicate;Lcom/android/server/wm/TaskFragment;)Z
    .locals 3

    .line 3598
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 3599
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    if-ne v2, p2, :cond_0

    goto :goto_1

    .line 3603
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final remove(Lcom/android/server/wm/TaskFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 3554
    invoke-static {p1, v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    const/4 v0, 0x0

    .line 3555
    invoke-static {p1, v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmDelayLastActivityRemoval(Lcom/android/server/wm/TaskFragment;Z)V

    .line 3556
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3557
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 3559
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->clear()V

    :cond_0
    return-void
.end method

.method public final setAsAdjacent()V
    .locals 2

    .line 3539
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 3540
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fgetmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3545
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3546
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 3547
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    .line 3548
    invoke-static {v1, p0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public size()I
    .locals 0

    .line 3611
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3628
    const-string v1, "AdjacentSet{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3629
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz v2, :cond_0

    .line 3632
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3634
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3636
    :cond_1
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
