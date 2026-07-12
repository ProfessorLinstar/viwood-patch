.class public Lcom/android/server/wm/PresentationController;
.super Ljava/lang/Object;
.source "PresentationController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mPresentations:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasPresentationWindow(Lcom/android/server/wm/PresentationController;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PresentationController;->hasPresentationWindow(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;II)Z
    .locals 0

    const/16 p0, 0x7ee

    if-ne p3, p0, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x7f5

    if-eq p3, p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->isPublicPresentation()Z

    move-result p0

    return p0
.end method

.method public final hasPresentationWindow(I)Z
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PresentationController;->removePresentation(ILjava/lang/String;)V

    return-void
.end method

.method public onPresentationAdded(Lcom/android/server/wm/WindowState;I)V
    .locals 5

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p2

    .line 170
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x356cd1f34bc735b7L    # 2.4071686273437146E-51

    invoke-static {v4, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 172
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p2, v1}, Landroid/hardware/display/DisplayManagerInternal;->onPresentation(IZ)V

    .line 174
    new-instance v0, Lcom/android/server/wm/PresentationController$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/PresentationController$1;-><init>(Lcom/android/server/wm/PresentationController;ILcom/android/server/wm/WindowState;)V

    .line 192
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 220
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/PresentationController$Presentation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/android/server/wm/PresentationController$Presentation;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainerListener;)V

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public removePresentation(ILjava/lang/String;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/PresentationController$Presentation;

    return-void
.end method

.method public shouldOccludeActivities(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
