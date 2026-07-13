.class public final Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;
.super Lcom/android/server/AccessibilityManagerInternal;
.source "AccessibilityManagerService.java"


# instance fields
.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerInternal;-><init>()V

    .line 451
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public bindInput()V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleBindInput()V

    return-void
.end method

.method public createImeSession(Landroid/util/ArraySet;)V
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleCreateImeSession(Landroid/util/ArraySet;)V

    return-void
.end method

.method public isTouchExplorationEnabled(I)Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 490
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public performSystemAction(I)V
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetSystemActionPerformer(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    return-void
.end method

.method public setImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSetImeSessionEnabled(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method public startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleStartInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public unbindInput()V
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUnbindInput()V

    return-void
.end method
