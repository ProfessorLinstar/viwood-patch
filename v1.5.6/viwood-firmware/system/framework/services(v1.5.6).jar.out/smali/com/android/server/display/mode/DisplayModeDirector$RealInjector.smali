.class Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/display/mode/DisplayModeDirector$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3216
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .locals 0

    .line 3281
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3283
    invoke-virtual {p0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceConfig()Landroid/provider/DeviceConfigInterface;
    .locals 0

    .line 3222
    sget-object p0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 0

    .line 3259
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayInfo(ILandroid/view/DisplayInfo;)Z
    .locals 0

    .line 3269
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3276
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result p0

    return p0
.end method

.method public final getDisplayManager()Landroid/hardware/display/DisplayManager;
    .locals 2

    .line 3353
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    .line 3354
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3356
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;
    .locals 0

    .line 3333
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 1

    .line 3264
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getSensorManagerInternal()Lcom/android/server/sensors/SensorManagerInternal;
    .locals 0

    .line 3343
    const-class p0, Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sensors/SensorManagerInternal;

    return-object p0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 0

    .line 3338
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    return-object p0
.end method

.method public final getThermalService()Landroid/os/IThermalService;
    .locals 0

    .line 3360
    const-string/jumbo p0, "thermalservice"

    .line 3361
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 3360
    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method

.method public getVotesStatsReporter()Lcom/android/server/display/mode/VotesStatsReporter;
    .locals 1

    .line 3349
    new-instance v0, Lcom/android/server/display/mode/VotesStatsReporter;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->supportsFrameRateOverride()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/VotesStatsReporter;-><init>(Z)V

    return-object v0
.end method

.method public isDozeState(Landroid/view/Display;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3293
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result p0

    return p0
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 0

    .line 3242
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .locals 0

    .line 3248
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V
    .locals 0

    .line 3254
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V

    return-void
.end method

.method public registerMinRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    .line 3235
    sget-object p0, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->MIN_REFRESH_RATE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    .line 3228
    sget-object p0, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerThermalServiceListener(Landroid/os/IThermalEventListener;)Z
    .locals 3

    .line 3298
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x0

    .line 3299
    const-string v1, "DisplayModeDirector"

    if-nez p0, :cond_0

    .line 3300
    const-string p0, "Could not observe thermal status. Service not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v2, 0x3

    .line 3304
    :try_start_0
    invoke-interface {p0, p1, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 3307
    const-string p1, "Failed to register thermal status listener"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public supportsFrameRateOverride()Z
    .locals 1

    .line 3328
    invoke-static {}, Landroid/sysprop/SurfaceFlingerProperties;->enable_frame_rate_override()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public unregisterThermalServiceListener(Landroid/os/IThermalEventListener;)V
    .locals 2

    .line 3315
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getThermalService()Landroid/os/IThermalService;

    move-result-object p0

    .line 3316
    const-string v0, "DisplayModeDirector"

    if-nez p0, :cond_0

    .line 3317
    const-string v1, "Could not unregister thermal status. Service not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3322
    const-string p1, "Failed to unregister thermal status listener"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
