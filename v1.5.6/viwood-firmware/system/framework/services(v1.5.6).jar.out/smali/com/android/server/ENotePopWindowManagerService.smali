.class public Lcom/android/server/ENotePopWindowManagerService;
.super Landroid/os/enote/IENotePopWindowManager$Stub;
.source "ENotePopWindowManagerService.java"


# instance fields
.field public chargingInHander:Landroid/os/Handler;

.field public clChargingSw:Landroid/view/View;

.field public fLWallpaper:Landroid/widget/FrameLayout;

.field public fLWallpaperLp:Landroid/view/WindowManager$LayoutParams;

.field public handlerThread:Landroid/os/HandlerThread;

.field public isFactoryMode:Z

.field public isTransparentWallpaper:Z

.field public mBatteryLevel:I

.field public mBootCompleted:Z

.field public mContext:Landroid/content/Context;

.field public volatile mEnoteBaseResInited:Z

.field public final mEnoteBaseResLock:Ljava/lang/Object;

.field public mHideDelayedGC:Z

.field public mIVContent:Landroid/widget/ImageView;

.field public mIVWhiteScreen:Landroid/widget/ImageView;

.field public mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public mIsFastCharging:Z

.field public mIsKeyguardShowing:Z

.field public mLastBatteryLevel:I

.field public mLastFontWeight:I

.field public mLastOrientation:I

.field public mLastPlugType:I

.field public mLastRequestTime:J

.field public mLastShowChargingBatteryLevel:I

.field public mLock:Ljava/lang/Object;

.field public mOrientationChangeShow:Z

.field public mPlugType:I

.field public volatile mPluggedInResInited:Z

.field public final mPluggedInResLock:Ljava/lang/Object;

.field public mPluggedInView:Landroid/view/View;

.field public mPluggedInViewLp:Landroid/view/WindowManager$LayoutParams;

.field public volatile mPluggedInViewShowing:Z

.field public mPortSleepBmp:Landroid/graphics/Bitmap;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mShowShutDownPopupWindow:Z

.field public mShutDownSw:Landroid/view/View;

.field public volatile mShutdownResInited:Z

.field public final mShutdownResLock:Ljava/lang/Object;

.field public mSleepBmp:Landroid/graphics/Bitmap;

.field public volatile mSleepResInited:Z

.field public final mSleepResLock:Ljava/lang/Object;

.field public mSleepWallpaperShowed:Z

.field public mSleepWallpaperShowing:Z

.field public mWindowManager:Landroid/view/WindowManager;

.field public mWindowManagerService:Landroid/view/IWindowManager;

.field public mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$BU8D_HZ4u5G7bj9LBT95mEf6CRw(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->lambda$updateBatteryState$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$__Rm_cs9KGJLy2jLGZVdOoNGgWw()V
    .locals 2

    .line 924
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/enote/ENoteSetting;->setGlobalEpdMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetchargingInHander(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->chargingInHander:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryLevel(Lcom/android/server/ENotePopWindowManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ENotePopWindowManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastBatteryLevel(Lcom/android/server/ENotePopWindowManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastBatteryLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastOrientation(Lcom/android/server/ENotePopWindowManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastOrientation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrientationChangeShow(Lcom/android/server/ENotePopWindowManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mOrientationChangeShow:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPluggedInResInited(Lcom/android/server/ENotePopWindowManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResInited:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPluggedInView(Lcom/android/server/ENotePopWindowManagerService;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/PowerManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSleepWallpaperShowing(Lcom/android/server/ENotePopWindowManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmainHandler(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHideDelayedGC(Lcom/android/server/ENotePopWindowManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mHideDelayedGC:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastOrientation(Lcom/android/server/ENotePopWindowManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastOrientation:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOrientationChangeShow(Lcom/android/server/ENotePopWindowManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mOrientationChangeShow:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSleepWallpaperShowed(Lcom/android/server/ENotePopWindowManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowed:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdissmissPluggedInPopupWindowIfShowing(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->dissmissPluggedInPopupWindowIfShowing()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhide(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->hide()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideSetMode(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->hideSetMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitEnotePopWindowRes(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->initEnotePopWindowRes()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitPluggedInPopupWindow(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->initPluggedInPopupWindow()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misChargingFull(Lcom/android/server/ENotePopWindowManagerService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isChargingFull()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSleepWallpaperShowed(Lcom/android/server/ENotePopWindowManagerService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isSleepWallpaperShowed()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloadSleepBitmap(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->loadSleepBitmap()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monKeyguardShowing(Lcom/android/server/ENotePopWindowManagerService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ENotePopWindowManagerService;->onKeyguardShowing(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemPropertiesChangedIfNeed(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->onSystemPropertiesChangedIfNeed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowEinkLayerPopWindow(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->showEinkLayerPopWindow()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowPluggedInPopupWindow(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->showPluggedInPopupWindow()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowShutdownPopupWindowLocked(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->showShutdownPopupWindowLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowSleepPopupWindowLocked(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->showSleepPopupWindowLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 171
    invoke-direct {p0}, Landroid/os/enote/IENotePopWindowManager$Stub;-><init>()V

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ENotePWMS"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->handlerThread:Landroid/os/HandlerThread;

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastRequestTime:J

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPlugType:I

    .line 134
    iput v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    .line 135
    iput v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastBatteryLevel:I

    .line 136
    iput v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastPlugType:I

    const/4 v1, -0x1

    .line 137
    iput v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastShowChargingBatteryLevel:I

    .line 139
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowed:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mHideDelayedGC:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->isFactoryMode:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mIsFastCharging:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mShowShutDownPopupWindow:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mIsKeyguardShowing:Z

    .line 150
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mLock:Ljava/lang/Object;

    .line 152
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResLock:Ljava/lang/Object;

    .line 153
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutdownResLock:Ljava/lang/Object;

    .line 154
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mEnoteBaseResLock:Ljava/lang/Object;

    .line 155
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResLock:Ljava/lang/Object;

    .line 157
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResInited:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutdownResInited:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mEnoteBaseResInited:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResInited:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewShowing:Z

    .line 163
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mBootCompleted:Z

    .line 165
    iput v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastOrientation:I

    .line 166
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mOrientationChangeShow:Z

    .line 169
    iput v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastFontWeight:I

    .line 172
    const-string v1, "ENotePopWindowManagerService"

    invoke-static {v1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    .line 174
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 175
    new-instance p1, Lcom/android/server/ENotePopWindowManagerService$MainHander;

    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/ENotePopWindowManagerService$MainHander;-><init>(Lcom/android/server/ENotePopWindowManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    .line 176
    new-instance p1, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;

    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;-><init>(Lcom/android/server/ENotePopWindowManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->chargingInHander:Landroid/os/Handler;

    .line 177
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 178
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 179
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 180
    const-string p1, "com.vivoods.powerGoToSleep"

    const-string v1, "false"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mShowShutDownPopupWindow:Z

    .line 182
    const-string p0, "com.vivoods.updateOrientationSleepPopup"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBatteryPercentage(Landroid/content/Context;)I
    .locals 3

    .line 1001
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    .line 1004
    const-string/jumbo v1, "level"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 1005
    const-string/jumbo v2, "scale"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    int-to-float p0, v1

    int-to-float v0, v0

    div-float/2addr p0, v0

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENotePopWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 956
    const-string v0, "ENotePopWindowManagerService"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    .line 961
    :cond_0
    new-instance v1, Ljava/io/File;

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 963
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to create directory: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 967
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    .line 969
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to delete existing file: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 973
    :cond_2
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 975
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to compress Bitmap to file: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 973
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 981
    :goto_2
    const-string p1, "IOException"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 979
    :goto_3
    const-string p1, "FileNotFoundException"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_4

    .line 987
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "File saved but failed to load as Bitmap: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", let me delete it"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    .line 957
    :cond_5
    :goto_5
    const-string p0, "Invalid Bitmap, skipping save."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final dissmissPluggedInPopupWindowIfShowing()V
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 846
    const-string p0, "ENotePopWindowManagerService"

    const-string v0, "dissmissPluggedInPopupWindowIfShowing failed as WindowManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isPowered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    const-string v0, "ENotePopWindowManagerService"

    const-string v1, "[dissmissPluggedInPopupWindowIfShowing] now is not charging"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 851
    iput v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastShowChargingBatteryLevel:I

    .line 853
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewShowing:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 855
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewShowing:Z

    .line 856
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    const-string v0, "ENotePopWindowManagerService"

    const-string v1, "dissmissPluggedInPopupWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 862
    const-string v0, "ENotePopWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove plug view exception exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 856
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public doWhiteScreenGc(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public getBatteryWarning(I)Ljava/lang/String;
    .locals 2

    const v0, 0x1040a61

    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    .line 835
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 837
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    .line 839
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 841
    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public final hide()V
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 734
    const-string p0, "ENotePopWindowManagerService"

    const-string v0, "hide failed as WindowManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    const-string v1, "ENotePopWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide start mSleepWallpaperShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 740
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    .line 741
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :try_start_1
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/enote/ENoteSetting;->getCurrRealEpdMode()I

    move-result v0

    .line 744
    const-string v1, "ENotePopWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide start mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 747
    const-string v0, "ENotePopWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove sleep wallpaper view exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_0
    const-string p0, "ENotePopWindowManagerService"

    const-string v0, "hide sleepWallpaper ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 741
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final hideSetMode()V
    .locals 4

    .line 753
    const-string/jumbo v0, "persist.eink.last.mipimode"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 754
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isKeyguardOn()Z

    move-result p0

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideSetMode : ,persist.eink.last.mipimode appSetMipiMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isKeyguardOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ENotePopWindowManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    .line 758
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/enote/ENoteSetting;->setGlobalEpdMode(I)V

    if-ne v0, v1, :cond_0

    .line 760
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/enote/ENoteSetting;->setGlobalEpdMode(I)V

    return-void

    .line 762
    :cond_0
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/enote/ENoteSetting;->setGlobalEpdMode(I)V

    :cond_1
    return-void
.end method

.method public hideSleepPopupWindow()V
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 490
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowed:Z

    .line 492
    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_cold_from_user"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 493
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/enote/ENoteSetting;->setBrightness(II)V

    .line 495
    iget-boolean v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    if-nez v2, :cond_0

    .line 496
    const-string p0, "ENotePopWindowManagerService"

    const-string v1, "hideSleepPopupWindow abort as the sleepWallpaperShowing is false."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 499
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastRequestTime:J

    .line 500
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mHideDelayedGC:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->removeAllMessage()V

    .line 503
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 504
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 505
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    const-string p0, "ENotePopWindowManagerService"

    const-string v0, "hideSleepPopupWindow ended."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 505
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final initEnotePopWindowRes()V
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sleep_wallpaper_transparent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    .line 225
    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mEnoteBaseResInited:Z

    if-eqz v0, :cond_1

    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mEnoteBaseResLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mEnoteBaseResInited:Z

    if-eqz v3, :cond_2

    .line 231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 233
    :cond_2
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    .line 235
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVContent:Landroid/widget/ImageView;

    .line 236
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 237
    iget-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVContent:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    const/high16 v5, -0x1000000

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 239
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaperLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7f7

    .line 240
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 241
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 242
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const v5, 0x1000400

    .line 243
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 252
    iget-boolean v5, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    const/4 v5, -0x3

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 254
    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVWhiteScreen:Landroid/widget/ImageView;

    .line 255
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 256
    iget-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVWhiteScreen:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v2, v6

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 258
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mEnoteBaseResInited:Z

    .line 259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    const-string p0, "ENotePopWindowManagerService"

    const-string v0, "initEnotePopWindowRes ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 259
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final initPluggedInPopupWindow()V
    .locals 7

    .line 315
    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResInited:Z

    if-eqz v1, :cond_1

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 324
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900a9

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    .line 326
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f7

    .line 327
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 329
    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050300

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 330
    iget-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 331
    iget-object v4, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 333
    iget-object v5, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x31

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 334
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 335
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 337
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 338
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x1

    .line 340
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 v3, 0x1000000

    .line 341
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x2

    .line 349
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 351
    iput-boolean v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResInited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 353
    :try_start_2
    iput-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    .line 354
    const-string p0, "ENotePopWindowManagerService"

    const-string v1, "initPluggedInPopupWindow failed"

    invoke-static {p0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    const-string p0, "ENotePopWindowManagerService"

    const-string v0, "initPluggedInPopupWindow ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 356
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final initShutdownPopWindow()V
    .locals 5

    .line 264
    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutdownResInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutdownResLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutdownResInited:Z

    if-eqz v1, :cond_1

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    if-nez v1, :cond_2

    .line 273
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const v4, 0x10900aa

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutDownSw:Landroid/view/View;

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutdownResInited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 280
    :try_start_2
    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutDownSw:Landroid/view/View;

    .line 281
    const-string p0, "ENotePopWindowManagerService"

    const-string v2, "initShutdownPopWindow failed"

    invoke-static {p0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    const-string p0, "ENotePopWindowManagerService"

    const-string v0, "initShutdownPopWindow ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 283
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final initSleepPopWindow()V
    .locals 5

    .line 288
    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResInited:Z

    if-eqz v1, :cond_1

    .line 294
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    if-nez v1, :cond_2

    .line 297
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const v4, 0x10900ab

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->clChargingSw:Landroid/view/View;

    .line 303
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->loadSleepBitmap()V

    const/4 v1, 0x1

    .line 304
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResInited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 306
    :try_start_2
    iput-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->clChargingSw:Landroid/view/View;

    .line 308
    const-string p0, "ENotePopWindowManagerService"

    const-string v2, "initSleepWindow failed"

    invoke-static {p0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    const-string p0, "ENotePopWindowManagerService"

    const-string v0, "initSleepWindow ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final isChargingFull()Z
    .locals 1

    .line 877
    iget p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDebug()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFastCharging()Z
    .locals 3

    .line 868
    const-string p0, "/sys/devices/platform/charger/Pump_Express"

    invoke-static {p0}, Lcom/android/server/ENoteSettingService;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 869
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFastCharging flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pathValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ENotePopWindowManagerService"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isKeyguardOn()Z
    .locals 3

    .line 937
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result p0

    .line 938
    const-string v0, "ENotePopWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKeyguardOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPowered()Z
    .locals 0

    .line 874
    iget p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPlugType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSleepWallpaperShowed()Z
    .locals 0

    .line 932
    iget-boolean p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowed:Z

    return p0
.end method

.method public final synthetic lambda$updateBatteryState$0()V
    .locals 5

    .line 897
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "updateBatteryState"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 900
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/os/enote/ENoteSetting;->setBrightness(II)V

    .line 902
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->showSleepPopupWindow()V

    .line 903
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final loadFlWallpaper(Landroid/view/View;)V
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaperLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    .line 632
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/16 v2, 0x33

    .line 631
    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 634
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaperLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 637
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 638
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 640
    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 641
    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    iget-boolean p1, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isPowered()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mShowShutDownPopupWindow:Z

    if-nez p1, :cond_0

    .line 644
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x10900ad

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 645
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    .line 647
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10503b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 649
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, -0x1000000

    .line 650
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 651
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final loadSleepBitmap()V
    .locals 6

    .line 594
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/viwoods/wallpaper/sleep_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/viwoods/wallpaper/sleep_wallpaper.png"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const v5, 0x1080975

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPortSleepBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPortSleepBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPortSleepBmp:Landroid/graphics/Bitmap;

    .line 603
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPortSleepBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPortSleepBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 604
    :cond_4
    :goto_1
    const-string v0, "ENotePopWindowManagerService"

    const-string/jumbo v1, "loadSleepBitmap is invalid, reload system sleep wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPortSleepBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final onKeyguardShowing(Z)V
    .locals 4

    .line 913
    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mIsKeyguardShowing:Z

    if-eq p1, v0, :cond_2

    .line 914
    iput-boolean p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mIsKeyguardShowing:Z

    .line 915
    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    const-string v1, "ENotePopWindowManagerService"

    if-eqz v0, :cond_0

    .line 916
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onKeyguardShowing isKeyguardShowing="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " but ENotePopWindow is Showing return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 919
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKeyguardShowing = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p1, :cond_1

    .line 923
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/ENotePopWindowManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/ENotePopWindowManagerService$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 927
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    return-void
.end method

.method public final onSystemPropertiesChangedIfNeed()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSystemPropertiesChangedIfNeed fontWeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mLastFontWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastFontWeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENotePopWindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastFontWeight:I

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 193
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResInited:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResInited:Z

    .line 195
    iput v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastFontWeight:I

    return-void
.end method

.method public final removeAllMessage()V
    .locals 2

    .line 403
    const-string v0, "ENotePopWindowManagerService"

    const-string/jumbo v1, "removeAllMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public saveLowBatteryWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 693
    const-string p0, "/data/local/viwoods/wallpaper/power_off_low_battery.jpg"

    invoke-static {p0, p1}, Lcom/android/server/ENotePopWindowManagerService;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public saveShutdownWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 671
    const-string p0, "/data/local/viwoods/wallpaper/poweroff_wallpaper.jpg"

    invoke-static {p0, p1}, Lcom/android/server/ENotePopWindowManagerService;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public saveSleepWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ENotePopWindowManagerService;->saveSleepWallpaperWithTransparency(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public saveSleepWallpaperWithTransparency(Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveSleepWallpaperWithTransparency transparent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENotePopWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iput-boolean p2, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    .line 683
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sleep_wallpaper_transparent"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 684
    iget-object p2, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVContent:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 685
    iget-object p2, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVWhiteScreen:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 686
    iget-object p2, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaperLp:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->isTransparentWallpaper:Z

    if-eqz v0, :cond_2

    const/4 v2, -0x3

    :cond_2
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 687
    const-string p2, "/data/local/viwoods/wallpaper/sleep_wallpaper.png"

    invoke-static {p2, p1}, Lcom/android/server/ENotePopWindowManagerService;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->loadSleepBitmap()V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final show()V
    .locals 4

    .line 702
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 703
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "show failed as WindowManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    const-string v1, "ENotePopWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show start wallpaperShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    if-eqz v1, :cond_1

    .line 709
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    .line 711
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    .line 712
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaper:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->fLWallpaperLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    const-string v0, "com.vivoods.shutdown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_2

    .line 718
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 719
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 721
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_3

    const/16 v2, 0x11

    .line 722
    invoke-virtual {v0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 726
    :goto_1
    const-string v1, "ENotePopWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show wallpaper exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 729
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "show wallpaper ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 712
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final showEinkLayerPopWindow()V
    .locals 5

    .line 362
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    const-string v1, "ENotePopWindowManagerService"

    if-nez v0, :cond_0

    .line 363
    const-string/jumbo p0, "showEinkLayerPopWindow failed as WindowManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 368
    :try_start_0
    const-string v2, "#00FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 370
    const-string v3, "Parse color failed, use transparent"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v0

    .line 373
    :goto_0
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 375
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x7e8

    .line 376
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 377
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 378
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 379
    const-string v0, "EinkLayer"

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, -0x2

    .line 380
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x1

    .line 381
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 382
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x53

    .line 383
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x118

    .line 384
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 395
    :try_start_1
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add einkLayerPopWindow view exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_1
    const-string/jumbo p0, "showEinkLayerPopWindow ended"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final showPluggedInPopupWindow()V
    .locals 8

    .line 768
    iget-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 771
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "showPluggedInPopupWindow failed as WindowManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isPowered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastShowChargingBatteryLevel:I

    iget v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    if-ne v0, v1, :cond_2

    .line 776
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "showPluggedInPopupWindow ignored as the device in powering and the battery level is not changed."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewShowing:Z

    if-eqz v1, :cond_3

    .line 783
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 785
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInResInited:Z

    if-nez v1, :cond_4

    .line 786
    const-string v1, "ENotePopWindowManagerService"

    const-string/jumbo v2, "showPluggedInPopupWindow: the plugged wallpaper view is not inflated, try to do it again"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->initEnotePopWindowRes()V

    .line 788
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->initPluggedInPopupWindow()V

    .line 791
    :cond_4
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    if-nez v1, :cond_5

    .line 792
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v1, "showPluggedInPopupWindow: ignored as the plugged wallpaper view is null"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    monitor-exit v0

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 795
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewShowing:Z

    .line 797
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    const v2, 0x10203a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 798
    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    const v3, 0x10205cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 799
    iget-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    const v4, 0x10205c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040a5d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 801
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "% "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a60

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 802
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isPowered()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 803
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isChargingFull()Z

    move-result v6

    if-eqz v6, :cond_6

    const v4, 0x10805ba

    .line 804
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1040a5e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 806
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isFastCharging()Z

    move-result v6

    if-eqz v6, :cond_7

    const v6, 0x10805b9

    .line 807
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_7
    const v6, 0x10805b8

    .line 809
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 811
    :goto_0
    iget v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    iput v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastShowChargingBatteryLevel:I

    goto :goto_1

    .line 814
    :cond_8
    iget v6, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    sget v7, Lcom/android/server/BatteryService;->LOWER_BATTERY_LEVEL_SHOW_TIP:I

    if-gt v6, v7, :cond_9

    const v4, 0x10805bb

    .line 815
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 816
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1040a62

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 818
    iget v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    invoke-virtual {p0, v1}, Lcom/android/server/ENotePopWindowManagerService;->getBatteryWarning(I)Ljava/lang/String;

    move-result-object v5

    .line 821
    :cond_9
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mPluggedInViewLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 827
    const-string v0, "ENotePopWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add plug view exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :goto_2
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "showPluggedInPopupWindow ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 823
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public showRestoreToFactoryWhenShutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lcom/android/server/ENotePopWindowManagerService;->isFactoryMode:Z

    return-void
.end method

.method public showShutdownPopupWindow()V
    .locals 2

    .line 511
    const-string v0, "ENotePopWindowManagerService"

    const-string/jumbo v1, "showShutdownPopupWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 513
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mShowShutDownPopupWindow:Z

    .line 514
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->removeAllMessage()V

    .line 515
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "showShutdownPopupWindow ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 516
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final showShutdownPopupWindowLocked()V
    .locals 9

    .line 521
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0047

    .line 522
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 523
    const-string/jumbo v1, "persist.vivoods.bty_warning_level"

    .line 524
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ENotePopWindowManagerService;->getBatteryPercentage(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 527
    :goto_0
    const-string v1, "ENotePopWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showShutdownPopupWindow isLowBattery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFactoryMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/ENotePopWindowManagerService;->isFactoryMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutdownResLock:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutdownResInited:Z

    if-nez v3, :cond_1

    .line 531
    const-string v3, "ENotePopWindowManagerService"

    const-string/jumbo v4, "showShutdownPopupWindowLocked: the shutdown wallpaper view is not inflated, try to inflate it again"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->initEnotePopWindowRes()V

    .line 533
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->initShutdownPopWindow()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 535
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutDownSw:Landroid/view/View;

    if-nez v3, :cond_2

    .line 536
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "showShutdownPopupWindowLocked terminated as shutdown view is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    monitor-exit v1

    return-void

    :cond_2
    const v4, 0x1020526

    .line 539
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 540
    iget-object v4, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutDownSw:Landroid/view/View;

    const v5, 0x102052b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 541
    iget-object v5, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutDownSw:Landroid/view/View;

    const v6, 0x102052a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 542
    iget-boolean v6, p0, Lcom/android/server/ENotePopWindowManagerService;->isFactoryMode:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_3

    .line 543
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10808c0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 545
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_3
    const/4 v6, 0x0

    if-eqz v0, :cond_9

    .line 547
    new-instance v0, Ljava/io/File;

    const-string v8, "/data/local/viwoods/wallpaper/power_off_low_battery.jpg"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 550
    const-string v0, "/data/local/viwoods/wallpaper/power_off_low_battery.jpg"

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_4
    if-eqz v6, :cond_5

    .line 552
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_6

    .line 553
    :cond_5
    const-string v0, "ENotePopWindowManagerService"

    const-string/jumbo v6, "lowBatteryBmp is invalid, load the system low battery wallpaper"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x10808bf

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_6
    if-eqz v6, :cond_8

    .line 556
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_7

    goto :goto_2

    .line 560
    :cond_7
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x1040a63

    .line 561
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 562
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 557
    :cond_8
    :goto_2
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "lowBatteryBmp is invalid, do not show it"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-exit v1

    return-void

    .line 565
    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/local/viwoods/wallpaper/poweroff_wallpaper.jpg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 568
    const-string v0, "/data/local/viwoods/wallpaper/poweroff_wallpaper.jpg"

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_a
    if-eqz v6, :cond_b

    .line 570
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_c

    .line 571
    :cond_b
    const-string v0, "ENotePopWindowManagerService"

    const-string/jumbo v2, "loadShutdownBitmap is invalid, load the system power off wallpaper"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10808c1

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_c
    if-eqz v6, :cond_e

    .line 574
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_4

    .line 578
    :cond_d
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x1040482

    .line 579
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 581
    :goto_3
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mShutDownSw:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/server/ENotePopWindowManagerService;->loadFlWallpaper(Landroid/view/View;)V

    .line 582
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->show()V

    .line 584
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 585
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "showShutdownPopupWindowLocked ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 575
    :cond_e
    :goto_4
    :try_start_1
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "shutdownBmp is invalid, do not show it"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    monitor-exit v1

    return-void

    .line 582
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public showSleepPopupWindow()V
    .locals 2

    .line 409
    const-string v0, "ENotePopWindowManagerService"

    const-string/jumbo v1, "showSleepPopupWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->removeAllMessage()V

    .line 412
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final showSleepPopupWindowLocked()V
    .locals 8

    .line 417
    const-string v0, "com.vivoods.updateBatteryState"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 420
    iget v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 421
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/enote/ENoteSetting;->setEinkRefreshInterval(I)I

    .line 422
    const-string v1, "ENotePopWindowManagerService"

    const-string/jumbo v2, "showSleepPopupWindow LANDSCAPE setEinkRefreshInterval 1000"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mOrientationChangeShow:Z

    if-nez v1, :cond_1

    .line 426
    const-string v1, "ENotePopWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSleepPopupWindow abort for mSleepWallpaperShowing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isUpdateBatteryState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mOrientationChangeShow: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mOrientationChangeShow:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepResInited:Z

    if-nez v1, :cond_2

    .line 433
    const-string v1, "ENotePopWindowManagerService"

    const-string/jumbo v2, "showSleepPopupWindowLocked: the sleep wallpaper view is not inflated, try to inflate it again"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->initEnotePopWindowRes()V

    .line 435
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->initSleepPopWindow()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 437
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isPowered()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_6

    .line 444
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->clChargingSw:Landroid/view/View;

    if-nez v1, :cond_3

    .line 446
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v1, "showSleepPopupWindowLocked terminated as chargingSw is null"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    monitor-exit v0

    return-void

    :cond_3
    const v3, 0x10203a9

    .line 449
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x10205ca

    .line 450
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x10205cb

    .line 451
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x10205cc

    .line 452
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x1040a5d

    .line 453
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    const v7, 0x1040a5f

    .line 454
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 455
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isChargingFull()Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x10805f4

    .line 456
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x1040a5e

    .line 457
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 458
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isFastCharging()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x10805f3

    .line 459
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const v4, 0x10805f2

    .line 461
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    invoke-virtual {p0, v1}, Lcom/android/server/ENotePopWindowManagerService;->loadFlWallpaper(Landroid/view/View;)V

    goto :goto_2

    .line 473
    :cond_6
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPortSleepBmp:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepBmp:Landroid/graphics/Bitmap;

    .line 474
    iget-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVContent:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gtz v1, :cond_7

    goto :goto_3

    .line 478
    :cond_7
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVContent:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mIVContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/server/ENotePopWindowManagerService;->loadFlWallpaper(Landroid/view/View;)V

    .line 481
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->show()V

    .line 483
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 484
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v0, "showSleepPopupWindow ended"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 475
    :cond_8
    :goto_3
    :try_start_1
    const-string p0, "ENotePopWindowManagerService"

    const-string/jumbo v1, "showSleepPopupWindowLocked terminated as image view is null"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    monitor-exit v0

    return-void

    .line 481
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final start()V
    .locals 1

    .line 1013
    new-instance v0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;

    invoke-direct {v0, p0}, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;-><init>(Lcom/android/server/ENotePopWindowManagerService;)V

    const-class p0, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBatteryState(IIZ)V
    .locals 4

    .line 880
    const-string v0, "com.vivoods.powerGoToSleep"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    .line 881
    :cond_0
    const-string v0, "com.vivoods.updateENotePopWindowBattery.delay"

    const/16 v1, 0x96

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 882
    :goto_0
    iput p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPlugType:I

    .line 883
    iput p2, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    if-eqz p3, :cond_1

    .line 884
    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mIsFastCharging:Z

    if-nez v1, :cond_1

    .line 885
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService;->chargingInHander:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 886
    :cond_1
    iput-boolean p3, p0, Lcom/android/server/ENotePopWindowManagerService;->mIsFastCharging:Z

    .line 887
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBatteryState, mPlugType:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mPlugType:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBatteryLevel:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mBatteryLevel:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastBatteryLevel:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastBatteryLevel:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFastCharging:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mIsFastCharging:Z

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mSleepWallpaperShowing:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "ENotePopWindowManagerService"

    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object p3, p0, Lcom/android/server/ENotePopWindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-nez p3, :cond_2

    .line 892
    const-string/jumbo p0, "updateBatteryState failed as PowerManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 895
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isPowered()Z

    move-result p3

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastBatteryLevel:I

    if-eq p3, p2, :cond_3

    iget-boolean p3, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    if-eqz p3, :cond_3

    .line 896
    iget-object p3, p0, Lcom/android/server/ENotePopWindowManagerService;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/ENotePopWindowManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ENotePopWindowManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ENotePopWindowManagerService;)V

    int-to-long v2, v0

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 905
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->isPowered()Z

    move-result p3

    if-nez p3, :cond_4

    iget p3, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastPlugType:I

    if-eq p3, p1, :cond_4

    iget-boolean p3, p0, Lcom/android/server/ENotePopWindowManagerService;->mSleepWallpaperShowing:Z

    if-eqz p3, :cond_4

    .line 906
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService;->hideSleepPopupWindow()V

    .line 908
    :cond_4
    :goto_1
    iput p2, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastBatteryLevel:I

    .line 909
    iput p1, p0, Lcom/android/server/ENotePopWindowManagerService;->mLastPlugType:I

    return-void
.end method
