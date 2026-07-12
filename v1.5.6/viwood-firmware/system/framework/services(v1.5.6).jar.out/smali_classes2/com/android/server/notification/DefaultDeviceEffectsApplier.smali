.class public Lcom/android/server/notification/DefaultDeviceEffectsApplier;
.super Ljava/lang/Object;
.source "DefaultDeviceEffectsApplier.java"

# interfaces
.implements Landroid/service/notification/DeviceEffectsApplier;


# static fields
.field private static final SATURATION_LEVEL_FULL_COLOR:I = 0x64

.field private static final SATURATION_LEVEL_GRAYSCALE:I = 0x0

.field private static final SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final SUPPRESS_AMBIENT_DISPLAY_TOKEN:Ljava/lang/String; = "DefaultDeviceEffectsApplier:SuppressAmbientDisplay"

.field private static final TAG:Ljava/lang/String; = "DeviceEffectsApplier"

.field private static final WALLPAPER_DIM_AMOUNT_DIMMED:F = 0.6f

.field private static final WALLPAPER_DIM_AMOUNT_NORMAL:F


# instance fields
.field private final mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mContext:Landroid/content/Context;

.field private mIsScreenOffReceiverRegistered:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

.field private final mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

.field private mPendingNightMode:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mRegisterReceiverLock:Ljava/lang/Object;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$4LDHIsj0iI2D9FidhGDL9DsNFGA(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->lambda$apply$0(Landroid/service/notification/ZenDeviceEffects;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GU7KgDI7UqIvmoYhYm62_3u1GIw(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->lambda$updateNightModeImmediately$1(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNightMode(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPendingNightMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterScreenOffReceiver(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->unregisterScreenOffReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNightModeImmediately(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateNightModeImmediately(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 170
    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 74
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 75
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mUiModeManager:Landroid/app/UiModeManager;

    .line 77
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 79
    :goto_0
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method private synthetic lambda$apply$0(Landroid/service/notification/ZenDeviceEffects;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeSuppressAmbientDisplay(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeDisplayGrayscale(Z)V

    .line 88
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeDimWallpaper(Z)V

    .line 89
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeUseNightMode(ZI)V

    return-void
.end method

.method private synthetic lambda$updateNightModeImmediately$1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    :try_start_0
    const-string/jumbo v0, "nightMode"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 183
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    const/16 p1, 0x3e9

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setAttentionModeThemeOverlay(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 187
    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change wallpaper override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private registerScreenOffReceiver()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 197
    iput-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 199
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unregisterScreenOffReceiver()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 205
    iput-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    .line 206
    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 208
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateNightModeImmediately(Z)V
    .locals 1

    .line 180
    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private updateOrScheduleNightMode(ZI)V
    .locals 1

    .line 150
    iput-boolean p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPendingNightMode:Z

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    .line 156
    iget-object p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    .line 160
    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 161
    iget-object p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    const-string/jumbo p2, "nightMode"

    invoke-static {p2, p1}, Lcom/android/server/notification/ZenLog;->traceScheduleApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->registerScreenOffReceiver()V

    return-void

    .line 162
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->unregisterScreenOffReceiver()V

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateNightModeImmediately(Z)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/service/notification/ZenDeviceEffects;I)V
    .locals 1

    .line 84
    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 92
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    return-void
.end method

.method public maybeDimWallpaper(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_1

    .line 127
    :try_start_0
    const-string v0, "dimWallpaper"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 128
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz p1, :cond_0

    const p1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 133
    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change wallpaper override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public maybeDisplayGrayscale(Z)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    if-eqz v0, :cond_1

    .line 111
    :try_start_0
    const-string v0, "displayGrayscale"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 112
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 117
    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change grayscale override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public maybeSuppressAmbientDisplay(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 98
    :try_start_0
    const-string/jumbo v0, "suppressAmbientDisplay"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 99
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "DefaultDeviceEffectsApplier:SuppressAmbientDisplay"

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 102
    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change AOD override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public maybeUseNightMode(ZI)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 142
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateOrScheduleNightMode(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 144
    const-string p1, "DeviceEffectsApplier"

    const-string p2, "Could not change dark theme override"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
