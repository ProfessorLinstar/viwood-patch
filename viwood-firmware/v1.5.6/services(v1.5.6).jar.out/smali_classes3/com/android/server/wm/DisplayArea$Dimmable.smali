.class public Lcom/android/server/wm/DisplayArea$Dimmable;
.super Lcom/android/server/wm/DisplayArea;
.source "DisplayArea.java"


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;


# direct methods
.method public static synthetic $r8$lambda$ewKAhLF3xnwcZneP-cgTtyNykBo(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 836
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->canAffectSystemUiFlags()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 0

    .line 811
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 808
    new-instance p1, Lcom/android/server/wm/Dimmer;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-void
.end method


# virtual methods
.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0
.end method

.method public prepareSurfaces()V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 822
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/DisplayArea$Dimmable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayArea$Dimmable$$ExternalSyntheticLambda0;-><init>()V

    .line 836
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->hasDimState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_1
    return-void
.end method
