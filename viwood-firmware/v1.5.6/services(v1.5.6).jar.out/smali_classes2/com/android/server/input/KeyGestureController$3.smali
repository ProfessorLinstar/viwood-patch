.class public Lcom/android/server/input/KeyGestureController$3;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "KeyGestureController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;II)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 318
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v0, 0x19

    const/16 v1, 0x18

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x37

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public execute()V
    .locals 4

    .line 310
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v0, 0x19

    const/16 v1, 0x18

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public preCondition()Z
    .locals 2

    .line 304
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/KeyGestureController;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-result-object p0

    const/4 v1, 0x0

    .line 305
    invoke-interface {p0, v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->isKeyguardLocked(I)Z

    move-result p0

    .line 304
    invoke-virtual {v0, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result p0

    return p0
.end method
