.class public Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AccessibilityServiceConnection;
.source "ProxyAccessibilityServiceConnection.java"


# instance fields
.field public mDeviceId:I

.field public mDisplayId:I

.field public mFocusColor:I

.field public mFocusStrokeWidth:I

.field public mInstalledAndEnabledServices:Ljava/util/List;

.field public mInteractiveTimeout:I

.field public mNonInteractiveTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .locals 15

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p11

    .line 93
    invoke-direct/range {v0 .. v14}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    move/from16 v1, p12

    .line 96
    iput v1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    const/4 v1, 0x2

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDisplayTypes(I)V

    .line 98
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 100
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10600f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    move/from16 v1, p13

    .line 102
    iput v1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method public bridge synthetic attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method public bridge synthetic bindInputLocked()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->bindInputLocked()V

    return-void
.end method

.method public bridge synthetic bindLocked()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->bindLocked()V

    return-void
.end method

.method public binderDied()V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic canReceiveEventsLocked()Z
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic canRetrieveInteractiveWindowsLocked()Z
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V

    return-void
.end method

.method public bridge synthetic connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V

    return-void
.end method

.method public bridge synthetic createImeSessionLocked()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionLocked()V

    return-void
.end method

.method public disableSelf()V
    .locals 1

    .line 382
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "disableSelf is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 0

    .line 550
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "dispatchGesture is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 664
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string p3, "ProxyAccessibilityServiceConnection"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 665
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 666
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy[displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 667
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", deviceId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 668
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", feedbackType"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 669
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 668
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 670
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", capabilities="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 671
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", eventTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 672
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 671
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 673
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", notificationTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 674
    const-string p3, ", nonInteractiveUiTimeout="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 675
    const-string p3, ", interactiveUiTimeout="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 676
    const-string p3, ", focusStrokeWidth="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 677
    const-string p3, ", focusColor="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 678
    const-string p3, ", installedAndEnabledServiceCount="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 679
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 678
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 680
    const-string p3, ", installedAndEnabledServices="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 681
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    .line 680
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 682
    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 683
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .locals 0

    .line 69
    invoke-super/range {p0 .. p9}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 0

    .line 69
    invoke-super/range {p0 .. p8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 0

    .line 69
    invoke-super/range {p0 .. p8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 0

    .line 69
    invoke-super/range {p0 .. p8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 0

    .line 69
    invoke-super/range {p0 .. p8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCapabilities()I
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMagnificationRegion(I)Landroid/graphics/Region;
    .locals 0

    .line 450
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getCurrentMagnificationRegion is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDeviceId()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    return p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 106
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    return p0
.end method

.method public getFocusColorLocked()I
    .locals 0

    .line 274
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    return p0
.end method

.method public getFocusStrokeWidthLocked()I
    .locals 0

    .line 266
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    return p0
.end method

.method public getInstalledAndEnabledServices()Ljava/util/List;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInstalledAndEnabledServices:Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInteractiveTimeout()I
    .locals 0

    .line 631
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    return p0
.end method

.method public getMagnificationCenterX(I)F
    .locals 0

    .line 428
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getMagnificationCenterX is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMagnificationCenterY(I)F
    .locals 0

    .line 435
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getMagnificationCenterY is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .locals 0

    .line 414
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getMagnificationConfig is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .locals 0

    .line 442
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getMagnificationRegion is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMagnificationScale(I)F
    .locals 0

    .line 421
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getMagnificationScale is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNonInteractiveTimeout()I
    .locals 0

    .line 635
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    return p0
.end method

.method public bridge synthetic getOverlayWindowToken(I)Landroid/os/IBinder;
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getOverlayWindowToken(I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSoftKeyboardShowMode()I
    .locals 1

    .line 504
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSoftKeyboardShowMode is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSystemActions()Ljava/util/List;
    .locals 1

    .line 405
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSystemActions is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getWindowIdForLeashToken(Landroid/os/IBinder;)I
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .locals 3

    .line 230
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v0

    .line 231
    new-instance v1, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;-><init>()V

    .line 235
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, p0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public hasRightsToCurrentUserLocked()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public initializeClient(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 3

    .line 114
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 115
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    .line 116
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {p1, p0, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    return-void
.end method

.method public isAccessibilityButtonAvailable()Z
    .locals 1

    .line 534
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "isAccessibilityButtonAvailable is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public isCapturingFingerprintGestures()Z
    .locals 1

    .line 323
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "isCapturingFingerprintGestures is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic isConnectedLocked()Z
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isConnectedLocked()Z

    move-result p0

    return p0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .locals 1

    .line 346
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "isFingerprintGestureDetectionAvailable is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .locals 0

    .line 490
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "isMagnificationCallbackEnabled is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic isMultiFingerGesturesEnabled()Z
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isMultiFingerGesturesEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSendMotionEventsEnabled()Z
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isSendMotionEventsEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isServiceDetectsGesturesEnabled(I)Z
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceDetectsGesturesEnabled(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isServiceHandlesDoubleTapEnabled()Z
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceHandlesDoubleTapEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isTwoFingerPassthroughEnabled()Z
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isTwoFingerPassthroughEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super/range {p0 .. p11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    return-void
.end method

.method public bridge synthetic notifyAccessibilityButtonClickedLocked(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked(I)V

    return-void
.end method

.method public bridge synthetic notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public bridge synthetic notifyClearAccessibilityNodeInfoCache()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    return-void
.end method

.method public bridge synthetic notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method public bridge synthetic notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method public bridge synthetic notifyMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedLocked(I)V

    return-void
.end method

.method public bridge synthetic notifySystemActionsChangedLocked()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySystemActionsChangedLocked()V

    return-void
.end method

.method public bridge synthetic notifyTouchState(II)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyTouchState(II)V

    return-void
.end method

.method public bridge synthetic onDisplayRemoved(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    return-void
.end method

.method public onDoubleTap(I)V
    .locals 0

    .line 613
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "onDoubleTap is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDoubleTapAndHold(I)V
    .locals 0

    .line 620
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "onDoubleTapAndHold is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onFingerprintGesture(I)V
    .locals 0

    .line 339
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "onFingerprintGesture is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .locals 0

    .line 331
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "onFingerprintGestureDetectionActiveChanged is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 0

    .line 316
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "onKeyEvent is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    return-void
.end method

.method public bridge synthetic onRemoved()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onRemoved()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 355
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "onServiceConnected is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 364
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "onServiceDisconnected is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 0

    .line 69
    invoke-super/range {p0 .. p9}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result p0

    return p0
.end method

.method public performGlobalAction(I)Z
    .locals 0

    .line 389
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "performGlobalAction is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestDelegating(I)V
    .locals 0

    .line 606
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "requestDelegating is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestDragging(II)V
    .locals 0

    .line 599
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "requestDragging is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic requestImeApis()Z
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result p0

    return p0
.end method

.method public requestTouchExploration(I)V
    .locals 0

    .line 592
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "requestTouchExploration is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetCurrentMagnification(IZ)Z
    .locals 0

    .line 466
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "resetCurrentMagnification is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic resetLocked()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    return-void
.end method

.method public resetMagnification(IZ)Z
    .locals 0

    .line 458
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "resetMagnification is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 281
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getFocusedWindowId(II)I

    move-result p1

    .line 288
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    invoke-virtual {p2, p1, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->windowIdBelongsToDisplayType(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return p1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 0

    .line 542
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "sendGesture is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAnimationScale(F)V
    .locals 0

    .line 627
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setAnimationScale is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setAttributionTag(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setAttributionTag(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCacheEnabled(Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setCacheEnabled(Z)V

    return-void
.end method

.method public final setDefaultPropertiesIfNullLocked(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxyClass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-string v1, "ProxyPackage"

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 197
    new-instance v2, Landroid/content/pm/ServiceInfo;

    invoke-direct {v2}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 198
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 200
    iput-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 201
    iput-object p0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 203
    iput-object v1, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 204
    iput-object p0, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 206
    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 207
    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 208
    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method

.method public setFocusAppearance(II)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    monitor-exit v0

    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusStrokeWidthLocked()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusColorLocked()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 252
    monitor-exit v0

    return-void

    .line 255
    :cond_2
    iput p1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 256
    iput p2, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    .line 257
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onProxyChanged(I)V

    .line 258
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 0

    .line 566
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setGestureDetectionPassthroughRegion is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)I
    .locals 0

    .line 527
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setInputMethodEnabled is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInstalledAndEnabledServices(Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 131
    :try_start_0
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v4, p1

    .line 132
    :try_start_1
    iput-object v4, v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 133
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    const/4 v6, 0x0

    .line 135
    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 136
    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const-wide/16 v7, 0x0

    .line 137
    iput-wide v7, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 138
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 147
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 148
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v13

    or-int/2addr v8, v13

    .line 149
    iget-object v13, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    if-eqz v13, :cond_1

    array-length v14, v13

    if-nez v14, :cond_0

    goto :goto_1

    :cond_0
    if-nez v11, :cond_2

    .line 152
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v11, 0x1

    .line 155
    :cond_2
    :goto_2
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    move-result v13

    .line 154
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 157
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    move-result v13

    .line 156
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 158
    iget-wide v13, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    move-object/from16 v16, v7

    iget-wide v6, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 160
    iget v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iget v7, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    or-int/2addr v6, v7

    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 161
    iget v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iget v7, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    or-int/2addr v6, v7

    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 162
    iget v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    iget v7, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/2addr v6, v7

    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 164
    invoke-virtual {v0, v12}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->setDefaultPropertiesIfNullLocked(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v16, v7

    .line 167
    invoke-virtual {v5, v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setAccessibilityTool(Z)V

    .line 168
    invoke-virtual {v5, v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setInteractiveUiTimeoutMillis(I)V

    .line 169
    invoke-virtual {v5, v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setNonInteractiveUiTimeoutMillis(I)V

    .line 170
    iput v9, v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    .line 171
    iput v10, v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    if-eqz v11, :cond_4

    const/4 v4, 0x0

    .line 176
    iput-object v4, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 178
    new-array v4, v15, [Ljava/lang/String;

    move-object/from16 v6, v16

    invoke-interface {v6, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 182
    :goto_3
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 184
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget v0, v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    invoke-interface {v4, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onProxyChanged(I)V

    .line 185
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 185
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 187
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    throw v0
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .locals 0

    .line 483
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setMagnificationCallbackEnabled is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z
    .locals 0

    .line 475
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setMagnificationConfig is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 0

    .line 397
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setOnKeyEventResult is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .locals 0

    .line 584
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setServiceDetectsGesturesEnabled is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    .line 374
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setServiceInfo is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 0

    .line 512
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setSoftKeyboardCallbackEnabled is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSoftKeyboardShowMode(I)Z
    .locals 0

    .line 497
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setSoftKeyboardShowMode is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setTestBrailleDisplayData(Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->setTestBrailleDisplayData(Ljava/util/List;)V

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 0

    .line 575
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setTouchExplorationPassthroughRegion is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public switchToInputMethod(Ljava/lang/String;)Z
    .locals 0

    .line 519
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "switchToInputMethod is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .locals 0

    .line 558
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "takeScreenshot is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic takeScreenshotOfWindow(IILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->takeScreenshotOfWindow(IILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method public bridge synthetic unbindInputLocked()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->unbindInputLocked()V

    return-void
.end method

.method public bridge synthetic unbindLocked()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    return-void
.end method

.method public updateTimeouts(II)Z
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    move-result p2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 647
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    move-result p1

    .line 650
    :goto_1
    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    const/4 v1, 0x1

    if-eq v0, p2, :cond_2

    .line 651
    iput p2, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    move p2, v1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 654
    :goto_2
    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    if-eq v0, p1, :cond_3

    .line 655
    iput p1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    return v1

    :cond_3
    return p2
.end method

.method public bridge synthetic wantsGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
