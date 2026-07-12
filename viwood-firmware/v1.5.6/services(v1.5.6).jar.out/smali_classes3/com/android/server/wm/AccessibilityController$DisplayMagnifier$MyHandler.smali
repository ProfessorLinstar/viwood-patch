.class public Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 1004
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1009
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return-void

    .line 1026
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1027
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onImeWindowVisibilityChanged(Z)V

    return-void

    .line 1022
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onDisplaySizeChanged()V

    return-void

    .line 1018
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onUserContextChanged()V

    return-void

    .line 1011
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1012
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Region;

    .line 1013
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    .line 1014
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    return-void
.end method
