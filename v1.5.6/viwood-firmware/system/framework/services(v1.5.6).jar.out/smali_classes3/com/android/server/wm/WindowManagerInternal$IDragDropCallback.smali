.class public interface abstract Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# direct methods
.method public static synthetic $r8$lambda$6yNQikD5pZ5UQHacgGeb_pDSRTc(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;Lcom/android/server/wm/DragState;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 386
    invoke-virtual {p2}, Lcom/android/server/wm/DragState;->getInputToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->startDragAndDrop(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 0

    .line 0
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .locals 0

    .line 0
    return-void
.end method

.method public postCancelDragAndDrop()V
    .locals 0

    .line 0
    return-void
.end method

.method public postPerformDrag()V
    .locals 0

    .line 0
    return-void
.end method

.method public postReportDropResult()V
    .locals 0

    .line 0
    return-void
.end method

.method public preCancelDragAndDrop(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public preReportDropResult(Landroid/view/IWindow;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 384
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DragState;->register(Landroid/view/Display;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p4, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;Lcom/android/server/wm/DragState;)V

    .line 385
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
