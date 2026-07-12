.class Lcom/android/server/display/BrightnessTracker$Injector;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelIdleJob(Landroid/content/Context;)V
    .locals 0

    .line 1203
    invoke-static {p1}, Lcom/android/server/display/BrightnessIdleJob;->cancelJob(Landroid/content/Context;)V

    return-void
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtimeNanos()J
    .locals 2

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public enableColorSampling(ZI)Z
    .locals 2

    .line 1261
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1262
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1263
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    move-result p0

    return p0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    .line 1140
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayState(Landroid/content/Context;)I
    .locals 0

    .line 1211
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    .line 1212
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 1213
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    return p0
.end method

.method public getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 2

    .line 1155
    new-instance p0, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 2

    .line 1187
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1191
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Landroid/app/IActivityTaskManager;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    return-object p0

    .line 1195
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFrameRate(Landroid/content/Context;)F
    .locals 0

    .line 1248
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    .line 1249
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 1250
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method public getLegacyFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 2

    .line 1159
    new-instance p0, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getNightDisplayColorTemperature(Landroid/content/Context;)I
    .locals 0

    .line 1217
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 1218
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result p0

    return p0
.end method

.method public getProfileIds(Landroid/os/UserManager;I)[I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1180
    invoke-virtual {p1, p2, p0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p0

    return-object p0

    .line 1182
    :cond_0
    filled-new-array {p2}, [I

    move-result-object p0

    return-object p0
.end method

.method public getReduceBrightColorsOffsetFactor(Landroid/content/Context;)F
    .locals 0

    .line 1231
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 1232
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsOffsetFactor()F

    move-result p0

    return p0
.end method

.method public getReduceBrightColorsStrength(Landroid/content/Context;)I
    .locals 0

    .line 1226
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 1227
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsStrength()I

    move-result p0

    return p0
.end method

.method public getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 1

    .line 1254
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1255
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x0

    .line 1256
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getUserId(Landroid/os/UserManager;I)I
    .locals 0

    .line 1175
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result p0

    return p0
.end method

.method public getUserSerialNumber(Landroid/os/UserManager;I)I
    .locals 0

    .line 1171
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p0

    return p0
.end method

.method public isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z
    .locals 2

    const/4 p0, -0x2

    .line 1144
    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v1
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .locals 0

    .line 1207
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public isNightDisplayActivated(Landroid/content/Context;)Z
    .locals 0

    .line 1222
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result p0

    return p0
.end method

.method public isReduceBrightColorsActivated(Landroid/content/Context;)Z
    .locals 0

    .line 1236
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 1237
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    move-result p0

    return p0
.end method

.method public registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    .line 1119
    const-string/jumbo p0, "screen_brightness_mode"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 0

    .line 1269
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1270
    invoke-virtual {p0, p2, p3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    const/4 p0, 0x2

    .line 1131
    invoke-virtual {p1, p2, p3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    .locals 0

    .line 1107
    const-class p0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 p1, 0x3

    .line 1108
    invoke-virtual {p0, p2, p3, p1, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method

.method public sampleColor(I)Landroid/hardware/display/DisplayedContentSample;
    .locals 6

    .line 1241
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1242
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 1243
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    return-object p0
.end method

.method public scheduleIdleJob(Landroid/content/Context;)V
    .locals 0

    .line 1199
    invoke-static {p1}, Lcom/android/server/display/BrightnessIdleJob;->scheduleJob(Landroid/content/Context;)V

    return-void
.end method

.method public unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 0

    .line 1126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 0

    .line 1275
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1276
    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 1136
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V
    .locals 0

    .line 1113
    const-class p0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    .line 1114
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
