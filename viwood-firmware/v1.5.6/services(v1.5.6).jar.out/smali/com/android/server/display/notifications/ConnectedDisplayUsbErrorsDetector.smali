.class public Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;
.super Ljava/lang/Object;
.source "ConnectedDisplayUsbErrorsDetector.java"

# interfaces
.implements Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

.field public final mIsConnectedDisplayErrorHandlingEnabled:Z

.field public mListener:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;


# direct methods
.method public static synthetic $r8$lambda$PN4BrLCfdXQAp9PYfft5KYnxARY(Landroid/content/Context;)Landroid/hardware/usb/UsbManager;
    .locals 1

    .line 74
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

    .line 83
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isConnectedDisplayErrorHandlingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mIsConnectedDisplayErrorHandlingEnabled:Z

    return-void
.end method


# virtual methods
.method public onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 2

    .line 116
    iget-object p1, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;

    if-nez p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getPartnerSinkStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getCableStatus()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 123
    iget-object p0, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;

    invoke-interface {p0}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;->onCableNotCapableDisplayPort()V

    return-void

    .line 127
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getLinkTrainingStatus()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 128
    iget-object p0, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;

    invoke-interface {p0}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;->onDisplayPortLinkTrainingFailure()V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerListener(Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;)V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mIsConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v0

    .line 94
    const-string v1, "ConnectedDisplayUsbErrorsDetector"

    if-nez v0, :cond_1

    .line 95
    const-string p0, "UsbManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;

    .line 102
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/hardware/usb/UsbManager;->registerDisplayPortAltModeInfoListener(Ljava/util/concurrent/Executor;Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 104
    const-string p1, "Failed to register listener"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
