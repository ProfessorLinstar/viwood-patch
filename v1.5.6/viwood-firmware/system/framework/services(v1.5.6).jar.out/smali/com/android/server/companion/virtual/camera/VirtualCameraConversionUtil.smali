.class public abstract Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;
.super Ljava/lang/Object;
.source "VirtualCameraConversionUtil.java"


# direct methods
.method public static synthetic $r8$lambda$GbsuBtfWboD1INdCSSvZK_JsSko(Landroid/companion/virtual/camera/VirtualCameraStreamConfig;)Landroid/companion/virtualcamera/SupportedStreamConfiguration;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertSupportedStreamConfiguration(Landroid/companion/virtual/camera/VirtualCameraStreamConfig;)Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LzWQiZNxN_C1LzNLgPdGNS9yANs(I)[Landroid/companion/virtualcamera/SupportedStreamConfiguration;
    .locals 0

    .line 52
    new-array p0, p0, [Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smconvertToJavaFormat(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToJavaFormat(I)I

    move-result p0

    return p0
.end method

.method public static convertCallback(Landroid/companion/virtual/camera/IVirtualCameraCallback;)Landroid/companion/virtualcamera/IVirtualCameraCallback;
    .locals 1

    .line 62
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;-><init>(Landroid/companion/virtual/camera/IVirtualCameraCallback;)V

    return-object v0
.end method

.method public static convertSupportedStreamConfiguration(Landroid/companion/virtual/camera/VirtualCameraStreamConfig;)Landroid/companion/virtualcamera/SupportedStreamConfiguration;
    .locals 2

    .line 85
    new-instance v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    invoke-direct {v0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->height:I

    .line 87
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->width:I

    .line 88
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getFormat()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToHalFormat(I)I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->pixelFormat:I

    .line 89
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getMaximumFramesPerSecond()I

    move-result p0

    iput p0, v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->maxFps:I

    return-object v0
.end method

.method public static convertToHalFormat(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static convertToJavaFormat(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getServiceCameraConfiguration(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtualcamera/VirtualCameraConfiguration;
    .locals 3

    .line 48
    new-instance v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    invoke-direct {v0}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getStreamConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 51
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 52
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    iput-object v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->supportedStreamConfigs:[Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    .line 53
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getSensorOrientation()I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->sensorOrientation:I

    .line 54
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->lensFacing:I

    .line 55
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertCallback(Landroid/companion/virtual/camera/IVirtualCameraCallback;)Landroid/companion/virtualcamera/IVirtualCameraCallback;

    move-result-object p0

    iput-object p0, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->virtualCameraCallback:Landroid/companion/virtualcamera/IVirtualCameraCallback;

    return-object v0
.end method
