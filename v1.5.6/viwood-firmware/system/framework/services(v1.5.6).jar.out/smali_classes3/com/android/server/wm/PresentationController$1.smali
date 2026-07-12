.class public Lcom/android/server/wm/PresentationController$1;
.super Ljava/lang/Object;
.source "PresentationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PresentationController;

.field public final synthetic val$displayId:I

.field public final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PresentationController;ILcom/android/server/wm/WindowState;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    iput p2, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    iput-object p3, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoved()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    iget v1, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/PresentationController;->-$$Nest$mhasPresentationWindow(Lcom/android/server/wm/PresentationController;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_ERROR_enabled:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    int-to-long v0, v0

    iget-object p0, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x37250f1290fe354fL    # 4.7215635313942315E-43

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    invoke-static {v0}, Lcom/android/server/wm/PresentationController;->-$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PresentationController$Presentation;

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, v0, Lcom/android/server/wm/PresentationController$Presentation;->mPresentationListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 184
    iget-object v1, v0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_2

    .line 185
    iget-object v0, v0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTaskListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    invoke-static {v0}, Lcom/android/server/wm/PresentationController;->-$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p0, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onPresentation(IZ)V

    return-void
.end method
