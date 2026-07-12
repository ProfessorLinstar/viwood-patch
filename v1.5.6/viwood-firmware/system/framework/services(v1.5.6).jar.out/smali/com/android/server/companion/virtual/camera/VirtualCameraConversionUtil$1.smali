.class public Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;
.super Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;
.source "VirtualCameraConversionUtil.java"


# instance fields
.field public final synthetic val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;


# direct methods
.method public constructor <init>(Landroid/companion/virtual/camera/IVirtualCameraCallback;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-direct {p0}, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessCaptureRequest(II)V
    .locals 2

    .line 72
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onProcessCaptureRequest(IJ)V

    return-void
.end method

.method public onStreamClosed(I)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-interface {p0, p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onStreamClosed(I)V

    return-void
.end method

.method public onStreamConfigured(ILandroid/view/Surface;III)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 67
    invoke-static {p5}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->-$$Nest$smconvertToJavaFormat(I)I

    move-result p5

    .line 66
    invoke-interface/range {p0 .. p5}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    return-void
.end method
