.class Lcom/android/server/wm/Task$DecorSurfaceContainer;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field final mContainerSurface:Landroid/view/SurfaceControl;

.field final mDecorSurface:Landroid/view/SurfaceControl;

.field public mIsBoosted:Z

.field public mIsBoostedRequested:Z

.field mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public final mPendingClientTransactions:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsBoosted(Lcom/android/server/wm/Task$DecorSurfaceContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcommitBoostedState(Lcom/android/server/wm/Task$DecorSurfaceContainer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->commitBoostedState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrelease(Lcom/android/server/wm/Task$DecorSurfaceContainer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->release()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestBoosted(Lcom/android/server/wm/Task$DecorSurfaceContainer;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->requestBoosted(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Z)V
    .locals 2

    .line 6914
    iput-object p1, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    .line 6915
    iput-object p2, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 6916
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 6917
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - decor surface container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6918
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 6919
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 6920
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 6921
    const-string v0, "Task.DecorSurfaceContainer"

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 6922
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    .line 6924
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 6925
    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - decor surface"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6926
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    xor-int/lit8 p2, p3, 0x1

    .line 6927
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 6928
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 6929
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/wm/Task-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task$DecorSurfaceContainer;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Z)V

    return-void
.end method


# virtual methods
.method public final applyPendingClientTransactions(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    const/4 v0, 0x0

    .line 6957
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6958
    iget-object v1, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6960
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    .line 6952
    iget-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 6953
    iget-object p2, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final commitBoostedState()V
    .locals 1

    .line 6947
    iget-boolean v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoostedRequested:Z

    iput-boolean v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    .line 6948
    iget-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->applyPendingClientTransactions(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final release()V
    .locals 2

    .line 6964
    iget-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 6965
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    .line 6966
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final requestBoosted(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 6938
    iput-boolean p1, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoostedRequested:Z

    if-eqz p2, :cond_0

    .line 6941
    iget-object p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
