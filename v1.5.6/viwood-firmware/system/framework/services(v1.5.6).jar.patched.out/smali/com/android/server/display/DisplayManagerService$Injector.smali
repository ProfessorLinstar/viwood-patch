.class Lcom/android/server/display/DisplayManagerService$Injector;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDisplayDelayTimeout()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public getDisplayPowerController(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayPowerController;
    .locals 0

    .line 3979
    new-instance p0, Lcom/android/server/display/DisplayPowerController;

    invoke-direct/range {p0 .. p13}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object p0
.end method

.method public getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;
    .locals 0

    .line 3969
    new-instance p0, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    return-object p0
.end method

.method public getHdrOutputConversionSupport()Z
    .locals 0

    .line 3960
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    move-result p0

    return p0
.end method

.method public getHdrOutputTypesWithLatency()[I
    .locals 0

    .line 3956
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputTypesWithLatency()[I

    move-result-object p0

    return-object p0
.end method

.method public getLocalDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;)Lcom/android/server/display/LocalDisplayAdapter;
    .locals 0

    .line 3936
    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    return-object p0
.end method

.method public getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 0

    .line 3964
    const-string/jumbo p0, "media_projection"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 3965
    invoke-static {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedHdrOutputTypes()[I
    .locals 0

    .line 3952
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getSupportedHdrOutputTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/VirtualDisplayAdapter;
    .locals 0

    .line 3928
    new-instance p0, Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object p0
.end method

.method public setHdrConversionMode(II[I)I
    .locals 0

    .line 3946
    invoke-static {p1, p2, p3}, Lcom/android/server/display/DisplayControl;->setHdrConversionMode(II[I)I

    move-result p0

    return p0
.end method
