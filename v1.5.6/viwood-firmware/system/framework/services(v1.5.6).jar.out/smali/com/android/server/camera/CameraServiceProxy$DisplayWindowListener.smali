.class public final Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "CameraServiceProxy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Lcom/android/server/camera/CameraServiceProxy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onDesktopModeEligibleChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mgetCameraServiceRawLocked(Lcom/android/server/camera/CameraServiceProxy;)Landroid/hardware/ICameraService;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/ICameraService;->notifyDisplayConfigurationChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not notify cameraserver, remote exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraService_proxy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    return-void
.end method
