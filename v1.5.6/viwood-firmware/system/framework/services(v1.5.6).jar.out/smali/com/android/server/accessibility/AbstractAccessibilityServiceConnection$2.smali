.class public Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;
.super Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;
.source "AbstractAccessibilityServiceConnection.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

.field public final synthetic val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public final synthetic val$interactionId:I

.field public final synthetic val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/window/ScreenCapture$ScreenCaptureListener;)V
    .locals 0

    .line 1458
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iput p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    iput-object p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;

    invoke-direct {p0}, Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mcanCaptureSecureLayers(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_0

    .line 1466
    :try_start_0
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    const/4 p2, 0x6

    invoke-interface {p1, p2, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1475
    :cond_0
    new-instance p1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {p1, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 p3, 0x0

    .line 1477
    invoke-virtual {p1, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object p1

    int-to-long p2, p2

    .line 1478
    invoke-virtual {p1, p2, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 1479
    invoke-virtual {p1, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 1480
    invoke-virtual {p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object p1

    .line 1481
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;

    invoke-interface {p2, p1, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->performScreenCapture(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1483
    :try_start_1
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    const/4 p2, 0x1

    invoke-interface {p1, p2, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
