.class public Lcom/android/server/accessibility/ProxyManager;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

.field public final mContext:Landroid/content/Context;

.field public final mLastStates:Landroid/util/SparseIntArray;

.field public mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mProxyA11yServiceConnections:Landroid/util/SparseArray;

.field public final mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

.field public final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field public mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# direct methods
.method public static synthetic $r8$lambda$-YJUChS1oHy7NC4DJUxfU_r--Ts(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateStateForRemovedDisplay$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1lqOab7Nsxaydn03fWD7PulcQ8E(Lcom/android/server/accessibility/ProxyManager;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$registerProxy$0(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7t1bypd8xupNzvNLsoCOrpH3-DM(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$889ArYMZ4A7VqmA7gDZErnGOzJw(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$registerProxy$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$D3T8BY1IWQiWaMOHlE-dHSE5Kwc(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateFocusAppearanceLocked$10(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WtX_FcMis-DiuxtV8ANe_2vXP0Y(Lcom/android/server/accessibility/ProxyManager;ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateRelevantEventTypesLocked$3(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dXip0VjKEz0EtlE9HBuYxOuiv2A(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateRelevantEventTypesLocked$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j-_bFVCm984sRUc0SVl1rlA6o50(Lcom/android/server/accessibility/ProxyManager;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleUpdateProxyClientsIfNeededLocked$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$qLIY1M0GW0dykNfyz9sTUpQ_dmo(Lcom/android/server/accessibility/ProxyManager;ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$7(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yRJ56K5_K30I4mT4WBNIgvQ3VMg(IILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 1

    .line 675
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p0, :cond_0

    .line 676
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$z_mArRUv4PXeQkTo6ZTMR411tjU(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 2

    .line 720
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 721
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 722
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusStrokeWidthLocked()I

    move-result v0

    .line 723
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusColorLocked()I

    move-result p0

    .line 721
    invoke-interface {p1, v0, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setFocusAppearance(II)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearConnectionAndUpdateState(Lcom/android/server/accessibility/ProxyManager;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-string v0, "ProxyManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/accessibility/UiAutomationManager;Lcom/android/server/accessibility/ProxyManager$SystemSupport;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 143
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 144
    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 145
    iput-object p3, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 146
    iput-object p4, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 147
    iput-object p5, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 148
    iput-object p6, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 149
    const-class p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method


# virtual methods
.method public addServiceInterfacesLocked(Ljava/util/List;I)V
    .locals 3

    const/4 v0, 0x0

    .line 556
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 558
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 560
    iget-object v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    .line 561
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 563
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final broadcastToClientsLocked(Ljava/util/function/Consumer;)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 744
    invoke-interface {v0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 745
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 746
    invoke-interface {p0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object p0

    .line 747
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 748
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 419
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 421
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 422
    iget-boolean v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_1
    :goto_1
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At least one proxy can retrieve windows: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ProxyManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public clearCacheLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 928
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 930
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 931
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clearConnectionAndUpdateState(I)Z
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 291
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->unregisterVirtualDeviceListener()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 295
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->updateStateForRemovedDisplay(II)V

    .line 301
    :cond_2
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 302
    const-string p0, "ProxyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistered proxy for display id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    .line 295
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public clearConnections(I)V
    .locals 6

    .line 254
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 255
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 256
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 257
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 258
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_0

    .line 259
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 260
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDisplayId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 265
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 263
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 531
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 532
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 533
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_1

    .line 534
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v4, v5, :cond_1

    .line 535
    invoke-virtual {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v3

    or-int/2addr v2, v3

    .line 536
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 537
    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 536
    invoke-static {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    :cond_2
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 543
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Relevant event types for device id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 543
    const-string p1, "ProxyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public displayBelongsToCaller(II)Z
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v0

    .line 387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDevice;

    .line 388
    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDisplayIdsForDevice(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 962
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 964
    const-string v1, "Proxy manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Number of proxy connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    const-string v1, "    Registered proxy connections:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 968
    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 969
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 970
    invoke-interface {v2}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v2

    const/4 v3, 0x0

    .line 971
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 972
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 973
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_0

    .line 975
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 977
    :cond_0
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 978
    const-string v5, "        User clients for proxy\'s virtual device id"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v5

    invoke-virtual {p0, p2, v1, v5}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    .line 980
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 981
    const-string v5, "        Global clients for proxy\'s virtual device id"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    invoke-virtual {p0, p2, v2, v4}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 985
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFirstDeviceIdForUidLocked(I)I
    .locals 2

    .line 831
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object p0

    .line 836
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 837
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 838
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;
    .locals 3

    const/4 v0, 0x0

    .line 731
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 732
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 733
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusColorLocked(I)I
    .locals 0

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusColorLocked()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFocusStrokeWidthLocked(I)I
    .locals 0

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusStrokeWidthLocked()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;
    .locals 5

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 577
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 578
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 579
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_2

    .line 580
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v3

    if-ne v3, p2, :cond_2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 583
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 584
    :cond_0
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    .line 586
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    .line 588
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 589
    iget v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    .line 590
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getLastSentStateLocked(I)I
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_0

    .line 947
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 949
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public getRecommendedTimeoutMillisLocked(I)J
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 784
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 785
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 786
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_0

    .line 787
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 789
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInteractiveTimeout()I

    move-result v4

    .line 791
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getNonInteractiveTimeout()I

    move-result v3

    .line 792
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 794
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_1
    invoke-static {v1, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getStateForDisplayIdLocked(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)I
    .locals 4

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 468
    iget-boolean p1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v0

    .line 473
    :goto_0
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility is enabled for all proxies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    move v2, p0

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProxyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Touch exploration is enabled for all proxies: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method public getStateLocked(I)I
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canIntrospect()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 442
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 443
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 444
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_0

    .line 445
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 447
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/ProxyManager;->getStateForDisplayIdLocked(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)I

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :cond_1
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 452
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For device id "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a11y is enabled: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "ProxyManager"

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " touch exploration is enabled: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method public isProxyedDeviceId(I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 372
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 374
    const-string p0, "ProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    .line 372
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return v0
.end method

.method public isProxyedDisplay(I)Z
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    .line 355
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 356
    const-string v1, "ProxyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking proxy display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 358
    :cond_0
    :goto_0
    monitor-exit v0

    return p0

    .line 359
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$registerProxy$0(Ljava/util/Set;)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->notifyProxyOfRunningAppsChange(Ljava/util/Set;)V

    return-void
.end method

.method public final synthetic lambda$registerProxy$1(I)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplayIfInstalled(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$7(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 1

    .line 696
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_0
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getRecommendedTimeoutMillisLocked(I)J

    move-result-wide p0

    .line 698
    invoke-interface {p2, p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    .line 700
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final synthetic lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$8(I)V
    .locals 1

    .line 695
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$scheduleUpdateProxyClientsIfNeededLocked$6(II)V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_0
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda7;-><init>(II)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 679
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$updateFocusAppearanceLocked$10(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .locals 1

    .line 719
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$updateRelevantEventTypesLocked$3(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 1

    .line 514
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p1, :cond_0

    .line 515
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p0

    .line 516
    iget p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq p1, p0, :cond_0

    .line 517
    iput p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 518
    iget-object p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$updateRelevantEventTypesLocked$4(I)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 522
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$updateStateForRemovedDisplay$2(I)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 320
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplayIfInstalled(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public notifyProxyOfRunningAppsChange(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 894
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 895
    const-string v0, "ProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyProxyOfRunningAppsChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 899
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v1

    if-nez v1, :cond_2

    .line 903
    monitor-exit v0

    return-void

    .line 905
    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    .line 906
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 907
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 908
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_4

    .line 910
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    .line 911
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 912
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 913
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 918
    :cond_5
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 919
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    goto :goto_2

    .line 921
    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProxyChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    return-void
.end method

.method public final onProxyChanged(IZ)V
    .locals 3

    .line 626
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 627
    const-string v0, "ProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProxyChanged called for deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(I)V

    .line 639
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->updateWindowsForAccessibilityCallbackLocked()V

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateRelevantEventTypesLocked(I)V

    .line 643
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->scheduleUpdateProxyClientsIfNeededLocked(IZ)V

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateFocusAppearanceLocked(I)V

    .line 648
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->notifyClearAccessibilityCacheLocked()V

    .line 649
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 991
    :goto_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 994
    invoke-virtual {p2, p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 995
    iget v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v1, p3, :cond_0

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerProxy(Landroid/accessibilityservice/IAccessibilityServiceClient;IILcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    .line 160
    sget-boolean v2, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "ProxyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register proxy for display id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v2, :cond_1

    return-void

    .line 168
    :cond_1
    invoke-virtual {v2, v14}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v15

    .line 172
    new-instance v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    const/4 v2, 0x3

    .line 173
    invoke-virtual {v5, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxyClass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "ProxyPackage"

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 178
    new-instance v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v2 .. v15}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager;II)V

    .line 184
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 185
    :try_start_0
    iget-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    iget-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    if-nez v4, :cond_2

    .line 187
    new-instance v4, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    iput-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    .line 189
    invoke-virtual {v0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 191
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    invoke-virtual {v4, v5}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->registerAppsOnVirtualDeviceListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 194
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 195
    invoke-virtual {v0}, Lcom/android/server/accessibility/ProxyManager;->registerVirtualDeviceListener()V

    .line 197
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    new-instance v3, Lcom/android/server/accessibility/ProxyManager$1;

    invoke-direct {v3, v0, v1, v14}, Lcom/android/server/accessibility/ProxyManager$1;-><init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 208
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 210
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v14}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->initializeClient(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    return-void

    .line 197
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final registerVirtualDeviceListener()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    if-nez v1, :cond_1

    .line 224
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/ProxyManager$2;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, v1, p0}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    return-void
.end method

.method public final scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V
    .locals 2

    .line 691
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify services state change at device id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleUpdateProxyClientsIfNeededLocked(IZ)V
    .locals 5

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    move-result v0

    .line 664
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State for device id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProxyManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last state for device id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getLastSentStateLocked(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getLastSentStateLocked(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 671
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager;->setLastStateLocked(II)V

    .line 672
    iget-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 402
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 403
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz p0, :cond_1

    .line 405
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send proxy event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for display id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method public setAccessibilityInputFilter(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 2

    .line 939
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set proxy input filter to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-void
.end method

.method public final setLastStateLocked(II)V
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public setLocalVirtualDeviceManager(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method

.method public unregisterProxy(I)Z
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    move-result p0

    return p0
.end method

.method public final unregisterVirtualDeviceListener()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, p0}, Landroid/companion/virtual/VirtualDeviceManager;->unregisterVirtualDeviceListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    return-void
.end method

.method public final updateDeviceIdsIfNeededLocked(I)V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 850
    invoke-interface {v0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 852
    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 854
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    .line 855
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public final updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V
    .locals 7

    .line 863
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 868
    :goto_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 870
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    if-eqz p1, :cond_4

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 874
    :cond_1
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 875
    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 876
    iget v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    const-string v5, " are "

    const-string v6, "ProxyManager"

    if-eq v4, p1, :cond_3

    if-eqz v3, :cond_3

    .line 877
    sget-boolean v3, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packages moved to device id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 879
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 878
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_2
    iput p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    goto :goto_1

    :cond_3
    if-ne v4, p1, :cond_4

    if-nez v3, :cond_4

    .line 883
    iput v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 884
    sget-boolean v3, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packages moved to the default device from device id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 886
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 885
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final updateFocusAppearanceLocked(I)V
    .locals 2

    .line 710
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update proxy focus appearance at device id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 718
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final updateRelevantEventTypesLocked(I)V
    .locals 2

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateStateForRemovedDisplay(II)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingDisplayProxy(I)V

    .line 315
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 331
    iget-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->unregisterAppsOnVirtualDeviceListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;)V

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 340
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {v0, p2}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->removeDeviceIdLocked(I)V

    .line 341
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 342
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 345
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(I)V

    return-void
.end method

.method public updateTimeoutsIfNeeded(II)V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 764
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 765
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 766
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->updateTimeouts(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 769
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
