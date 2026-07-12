.class public final Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# instance fields
.field public final mA11yWindowInfoById:Landroid/util/SparseArray;

.field public final mCachedWindowInfos:Ljava/util/List;

.field public final mDisplayId:I

.field public mHasWatchOutsideTouchWindow:Z

.field public mIsProxy:Z

.field public mProxyDisplayAccessibilityFocusedWindow:I

.field public mTrackingWindows:Z

.field public final mWindowInfoById:Landroid/util/SparseArray;

.field public mWindows:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindows(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 213
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    const/4 p1, 0x0

    .line 216
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    const/4 p1, -0x1

    .line 218
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 229
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return-void
.end method

.method public static isReportedWindowType(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static windowMattersToUnaccountedSpaceComputation(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Z
    .locals 3

    .line 624
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v2, 0x7f2

    if-eq v0, v2, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTrustedOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result p0

    const/16 v0, 0x7f0

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final cacheWindows(Ljava/util/List;)V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 679
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    invoke-virtual {v1}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 681
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 683
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    .line 684
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-static {v2}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final clearWindowsLocked()V
    .locals 3

    .line 760
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 761
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    .line 764
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 767
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    const/4 v0, 0x0

    .line 768
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(IZLandroid/graphics/Region;)Z
    .locals 8

    .line 383
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 394
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 395
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 397
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v4, :cond_1

    .line 399
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 400
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 401
    invoke-virtual {p3, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    move-object v4, p3

    if-eqz p2, :cond_2

    :goto_1
    move v1, v3

    goto :goto_2

    .line 408
    :cond_1
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 410
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 411
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final createWindowInfoListLocked(Landroid/graphics/Point;Ljava/util/List;)Ljava/util/List;
    .locals 11

    .line 496
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 497
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 501
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 503
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v4

    .line 507
    new-instance v5, Landroid/graphics/Region;

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7, v6, p1}, Landroid/graphics/Region;-><init>(IIII)V

    .line 508
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v7

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    .line 509
    invoke-virtual {v6, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInWindow(Landroid/graphics/Region;)V

    .line 511
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v8

    .line 512
    iget-object v9, v8, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v9, :cond_1

    .line 513
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v10, v4, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v9

    goto :goto_0

    :cond_1
    const/4 v9, -0x1

    .line 516
    :goto_0
    invoke-virtual {p0, v6, v9, v2, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowMattersToAccessibilityLocked(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;ILandroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-ltz v9, :cond_2

    .line 521
    iget-object v10, v8, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v10, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 522
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v10

    iput v10, v8, Landroid/view/WindowInfo;->layer:I

    .line 523
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowAttributes(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowAttributes;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowWithWindowAttributes(Landroid/view/WindowInfo;Landroid/view/accessibility/AccessibilityWindowAttributes;)V

    .line 525
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v8, v8, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_2
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowMattersToUnaccountedSpaceComputation(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 531
    invoke-virtual {v6, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInScreen(Landroid/graphics/Region;)V

    .line 532
    sget-object v8, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v3, v5, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 536
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result v6

    or-int/2addr p2, v6

    goto :goto_1

    .line 537
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isUntouchableNavigationBar()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 538
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getSystemBarInsetsFrame()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 544
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getSystemBarInsetsFrame()Landroid/graphics/Rect;

    move-result-object v6

    sget-object v8, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 543
    invoke-virtual {v5, v6, v5, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 549
    :cond_5
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    .line 555
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_7
    if-ge v7, p0, :cond_a

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v7, v7, 0x1

    check-cast p1, Landroid/view/WindowInfo;

    .line 556
    iget-object p2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const/4 p2, 0x0

    .line 557
    iput-object p2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 559
    :cond_8
    iget-object p2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz p2, :cond_7

    .line 560
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_7

    .line 562
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 563
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_a
    return-object v1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1048
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    if-eqz p1, :cond_0

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Proxy accessibility focused window = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1053
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 1054
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_4

    if-nez p3, :cond_1

    .line 1057
    const-string v0, "Display["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1058
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1059
    const-string v0, "] : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1060
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1
    if-lez p3, :cond_2

    const/16 v0, 0x2c

    .line 1063
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 1064
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1066
    :cond_2
    const-string v0, "A11yWindow["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1067
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 1068
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/16 v1, 0x5d

    .line 1069
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 1070
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1071
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1073
    const-string v1, "WindowInfo["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1074
    invoke-virtual {v0}, Landroid/view/WindowInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1075
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1076
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1080
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_5
    return-void
.end method

.method public findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object p0
.end method

.method public findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInfo;

    return-object p0
.end method

.method public getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 317
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTypeForWindowManagerWindowType(I)I
    .locals 4

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/16 v3, 0x3ed

    if-eq p1, v3, :cond_3

    const/16 v3, 0x7e1

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7e8

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7f0

    if-eq p1, v3, :cond_1

    const/16 v2, 0x7f2

    if-eq p1, v2, :cond_0

    const/16 v2, 0x7f4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x7e3

    if-eq p1, v2, :cond_2

    const/16 v2, 0x7e4

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    return v0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v2

    :cond_2
    :pswitch_2
    return v1

    :cond_3
    :pswitch_3
    return p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d5
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f6
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInfo;

    if-eqz p1, :cond_2

    .line 422
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-eqz v0, :cond_2

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    if-eqz v2, :cond_0

    .line 426
    iget v3, v2, Landroid/view/WindowInfo;->layer:I

    iget v4, p1, Landroid/view/WindowInfo;->layer:I

    if-ge v3, v4, :cond_0

    iget-boolean v2, v2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 433
    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getWindowListLocked()Ljava/util/List;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-object p0
.end method

.method public isTrackingWindowsLocked()Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    return p0
.end method

.method public onAccessibilityWindowsChanged(ZILandroid/os/IBinder;Landroid/graphics/Point;Ljava/util/List;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 452
    :try_start_0
    invoke-virtual {p0, p4, p5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->createWindowInfoListLocked(Landroid/graphics/Point;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    if-nez p1, :cond_0

    .line 469
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->shouldUpdateWindowsLocked(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 470
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 471
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$misProxyed(Lcom/android/server/accessibility/AccessibilityWindowManager;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 472
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmLastNonProxyTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 474
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)V

    .line 480
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->cacheWindows(Ljava/util/List;)V

    .line 482
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 485
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 491
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final populateReportedWindowLocked(ILandroid/view/WindowInfo;Landroid/util/SparseArray;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 6

    .line 940
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v0

    .line 941
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 943
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 944
    iget v2, p2, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 945
    iget v2, p2, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 946
    iget-boolean v2, p2, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 947
    iget-object v2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setRegionInScreen(Landroid/graphics/Region;)V

    .line 948
    iget-object v2, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 949
    iget-wide v2, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 950
    iget-boolean v2, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 951
    iget v2, p2, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setDisplayId(I)V

    .line 952
    iget v2, p2, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTaskId(I)V

    .line 953
    iget-object v2, p2, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLocales(Landroid/os/LocaleList;)V

    .line 955
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 957
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 960
    :cond_0
    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 961
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 963
    iget-object v4, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 964
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, p1, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 966
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 971
    :cond_2
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez p0, :cond_3

    .line 973
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    return-object v1

    .line 975
    :cond_3
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 976
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 977
    iget-object p2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 978
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTransitionTimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    return-object v1

    .line 980
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    return-object v1
.end method

.method public final sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 7

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 908
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 909
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 910
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 911
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    const/4 v6, 0x2

    .line 910
    invoke-static {v5, v4, v6}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 916
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_4

    .line 918
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 919
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v4, :cond_2

    .line 921
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 922
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    const/4 v5, 0x1

    .line 921
    invoke-static {v4, v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 924
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 926
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 927
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    .line 926
    invoke-static {v5, v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 932
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    if-ge v2, p1, :cond_5

    .line 934
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {p2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public setAccessibilityFocusedWindowLocked(I)Z
    .locals 6

    .line 357
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 358
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 360
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 361
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v3, 0x1

    .line 362
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public setActiveWindowLocked(I)Z
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 336
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 337
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v3, 0x1

    .line 338
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_1

    .line 341
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public final shouldUpdateWindowsLocked(Ljava/util/List;)Z
    .locals 6

    .line 646
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 654
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    return v2

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_3

    .line 662
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    .line 663
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowInfo;

    .line 667
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public startTrackingWindowsLocked()V
    .locals 3

    .line 236
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 241
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowsForAccessibilityCallback"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    :cond_1
    return-void
.end method

.method public stopTrackingWindowsLocked()V
    .locals 3

    .line 254
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callback=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowsForAccessibilityCallback"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->clearWindowsLocked()V

    :cond_1
    return-void
.end method

.method public final updateWindowWithWindowAttributes(Landroid/view/WindowInfo;Landroid/view/accessibility/AccessibilityWindowAttributes;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 641
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowAttributes;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 642
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowAttributes;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    return-void
.end method

.method public final updateWindowsLocked(ILjava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 778
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v2, :cond_0

    .line 779
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 782
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 783
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 786
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 787
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    const/4 v4, 0x0

    move v5, v4

    .line 789
    :goto_0
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 790
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    invoke-virtual {v6}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 792
    :cond_1
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 793
    iput-boolean v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 795
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    .line 796
    iget v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v4

    .line 798
    :goto_1
    iget v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v7, v9, :cond_4

    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    if-eq v7, v10, :cond_3

    goto :goto_2

    :cond_3
    move v7, v4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v6, :cond_6

    if-lez v5, :cond_5

    .line 807
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v9, v1, v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v11

    invoke-static {v9, v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    goto :goto_4

    .line 810
    :cond_5
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 813
    :goto_4
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 814
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 827
    :cond_6
    iget-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    if-eqz v9, :cond_7

    .line 828
    iget v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    goto :goto_5

    .line 829
    :cond_7
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v9

    :goto_5
    if-eqz v7, :cond_8

    if-eq v9, v10, :cond_8

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    move v10, v4

    :goto_6
    if-lez v5, :cond_12

    .line 836
    iget-boolean v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v11, :cond_c

    move v11, v4

    const/4 v12, 0x1

    :goto_7
    if-ge v11, v5, :cond_d

    move-object/from16 v13, p2

    .line 838
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowInfo;

    .line 840
    invoke-virtual {v0, v1, v14, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->populateReportedWindowLocked(ILandroid/view/WindowInfo;Landroid/util/SparseArray;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v15

    add-int/lit8 v16, v5, -0x1

    .line 843
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v17

    sub-int v4, v16, v17

    invoke-virtual {v15, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 845
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    .line 846
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v16

    if-eqz v16, :cond_a

    if-eqz v6, :cond_a

    .line 847
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 850
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    const/4 v8, 0x1

    .line 851
    invoke-virtual {v15, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_8

    .line 852
    :cond_9
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v8

    if-ne v4, v8, :cond_a

    const/4 v12, 0x0

    .line 856
    :cond_a
    :goto_8
    iget-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-nez v8, :cond_b

    iget-boolean v8, v14, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    .line 857
    iput-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 859
    :cond_b
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 861
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v14}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v14

    invoke-virtual {v8, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_7

    :cond_c
    const/4 v12, 0x1

    .line 864
    :cond_d
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v6, :cond_10

    .line 866
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v12, :cond_e

    .line 867
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    :cond_e
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_10

    .line 872
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 873
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v8

    if-ne v6, v8, :cond_f

    const/4 v8, 0x1

    .line 874
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_10
    if-eqz v7, :cond_12

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_12

    .line 880
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 881
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, v9, :cond_11

    const/4 v8, 0x1

    .line 882
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    const/4 v4, 0x0

    goto :goto_b

    :cond_11
    const/4 v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_12
    const/4 v8, 0x1

    move v4, v10

    .line 890
    :goto_b
    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 892
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_c
    if-ltz v1, :cond_13

    .line 894
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_13
    if-eqz v4, :cond_14

    .line 898
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mclearAccessibilityFocusLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    :cond_14
    return-void
.end method

.method public final windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .locals 5

    const/4 p0, 0x0

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    .line 698
    :cond_2
    iget v1, p1, Landroid/view/WindowInfo;->type:I

    iget v2, p2, Landroid/view/WindowInfo;->type:I

    if-eq v1, v2, :cond_3

    return v0

    .line 701
    :cond_3
    iget-boolean v1, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 704
    :cond_4
    iget-object v1, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v1, :cond_5

    .line 705
    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_6

    return v0

    .line 708
    :cond_5
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 711
    :cond_6
    iget-object v1, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v1, :cond_7

    .line 712
    iget-object v1, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_8

    return v0

    .line 715
    :cond_7
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 718
    :cond_8
    iget-object v1, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-nez v1, :cond_9

    .line 719
    iget-object v1, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-eqz v1, :cond_a

    return v0

    .line 722
    :cond_9
    iget-object v2, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 725
    :cond_a
    iget-object v1, p1, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 728
    :cond_b
    iget-object v1, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_c

    .line 729
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 732
    :cond_c
    iget-object v1, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 735
    :cond_d
    iget-wide v1, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v3, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    return v0

    .line 738
    :cond_e
    iget-boolean v1, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-eq v1, v2, :cond_f

    return v0

    .line 741
    :cond_f
    iget-boolean v1, p1, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eq v1, v2, :cond_10

    return v0

    .line 744
    :cond_10
    iget v1, p1, Landroid/view/WindowInfo;->displayId:I

    iget v2, p2, Landroid/view/WindowInfo;->displayId:I

    if-eq v1, v2, :cond_11

    return v0

    .line 747
    :cond_11
    iget v1, p1, Landroid/view/WindowInfo;->taskId:I

    iget v2, p2, Landroid/view/WindowInfo;->taskId:I

    if-eq v1, v2, :cond_12

    return v0

    .line 750
    :cond_12
    iget-object p1, p1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    iget-object p2, p2, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-nez p1, :cond_13

    return v0

    :cond_13
    return p0
.end method

.method public final windowMattersToAccessibilityLocked(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;ILandroid/graphics/Region;Landroid/graphics/Region;)Z
    .locals 4

    .line 575
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 582
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 583
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v3, 0x7f2

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isPIPMenu()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isEmbeddedHierarchyWindowsLocked(I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    .line 592
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTmpRegion(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/graphics/Region;

    move-result-object p0

    sget-object p2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p4, p3, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    .line 597
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isReportedWindowType(I)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method
